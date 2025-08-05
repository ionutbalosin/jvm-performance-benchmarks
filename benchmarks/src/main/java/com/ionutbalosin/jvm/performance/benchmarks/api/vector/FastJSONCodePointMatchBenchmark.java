/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.ionutbalosin.jvm.performance.benchmarks.api.vector;

import java.util.Random;
import java.util.Arrays;
import jdk.incubator.vector.*;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * Fast lookup table to match following JSON structural code points to accelerate JSON parsing
 *  , -> 0x2c
 *  : -> 0x3a
 *  [ -> 0x5b
 *  ] -> 0x5d
 *  { -> 0x7b
 *  } -> 0x7d
 *  tab, line feed, carriage return -> 0x9, 0xa, 0xd
 *  space -> 0x20
 *
 * References:
 *  - JEP 489: Vector API (Ninth Incubator): https://openjdk.org/jeps/489
 *  - Parsing Gigabytes of JSON per Second : https://arxiv.org/abs/1902.08318
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsPrepend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class FastJSONCodePointMatchBenchmark {
    @Param({"1024","2048"})
    int size;

    // 16 byte lookup tables for different JSON structural code points.
    public static byte [][] generate_old_lookup_tables() {
        // 0x09
        // 0x0a  ->   8
        // 0x0d
        byte [] lut1 = new byte[32];
        lut1[0x9] = 8;
        lut1[0xa] = 8;
        lut1[0xd] = 8;
        lut1[0x10] = 8;
        // 0x20  ->   16
        byte [] lut2 = new byte[32];
        lut2[0] = 16;
        lut2[0x12] = 16;
        // 0x5b
        // 0x5d  ->   4
        // 0x7b
        // 0x7d
        byte [] lut3 = new byte[32];
        lut3[0xb] = 4;
        lut3[0xd] = 4;
        lut3[0x15] = 4;
        lut3[0x17] = 4;
        // 0x3a  ->   2
        byte [] lut4 = new byte[32];
        lut4[0x13] = 2;
        lut4[0xa] = 2;
        // 0x2c  ->   1
        byte [] lut5 = new byte[32];
        lut5[0x12] = 1;
        lut5[0xc] = 1;
        byte [][] lut = new byte[5][];
        lut[0] = lut1;
        lut[1] = lut2;
        lut[2] = lut3;
        lut[3] = lut4;
        lut[4] = lut5;
        return lut;
    }

    // With new Vector.selectFrom API we can declare 128 byte
    // lookup tables.
    public static byte [] generate_new_lookup_table() {
        byte [] lut = new byte[128];
        // 0x2c  ->   1
        lut[0x2c]  = 1;
        // 0x3a  ->   2
        lut[0x3a]  = 2;
        // 0x5b
        // 0x5d  ->   4
        // 0x7b
        // 0x7d
        lut[0x5b]  = 4;
        lut[0x5d]  = 4;
        lut[0x7b]  = 4;
        lut[0x7d]  = 4;
        // 0x09
        // 0x0a  ->   8
        // 0x0d
        lut[0x09]  = 8;
        lut[0x0a]  = 8;
        lut[0x0d]  = 8;
        // 0x20  ->   16
        lut[0x20]  = 16;
        return lut;
    }

    public byte [] str;
    public byte [] lut_avx512;
    public byte [][] lut_avx2;

    public static final VectorSpecies<Byte> B128 = ByteVector.SPECIES_128;
    public static final VectorSpecies<Byte> B512 = ByteVector.SPECIES_512;

    @Setup(Level.Trial)
    public void BmSetup() {
        Random r = new Random(1024);
        byte [] codepoints = {
            (byte)0x9, (byte)0xa, (byte)0xd, (byte)0x20,
            (byte)0x5b, (byte)0x5d, (byte)0x7b, (byte)0x7d,
            (byte)0x3a, (byte)0x2c
        };
        str = new byte[size];
        for (int i = 0; i < 256; i++) {
            int sidx  = r.nextInt(str.length);
            int cidx  = r.nextInt(codepoints.length);
            str[sidx] = codepoints[cidx];
        }
        lut_avx512 = generate_new_lookup_table();
        lut_avx2   = generate_old_lookup_tables();
    }

    @Benchmark
    public long match_avx512() {
        long matches = 0;
        ByteVector vlut1 = ByteVector.fromArray(B512, lut_avx512, 0);
        ByteVector vlut2 = ByteVector.fromArray(B512, lut_avx512, 64);
        for (int i = 0; i < B512.loopBound(str.length); i += B512.length()) {
            ByteVector index = ByteVector.fromArray(B512, str, i);
            ByteVector res = index.selectFrom(vlut1, vlut2);
            VectorMask<Byte> valid_index = index.compare(VectorOperators.LE, (byte)0x7d);
            VectorMask<Byte> res_mask = res.compare(VectorOperators.GT, 0);
            matches += res_mask.and(valid_index).trueCount();
        }
        return matches;
    }


    @Benchmark
    public long match_avx2() {
        long matches = 0;
        ByteVector lut1_lo = ByteVector.fromArray(B128, lut_avx2[0], 0);
        ByteVector lut1_hi = ByteVector.fromArray(B128, lut_avx2[0], 16);
        ByteVector lut2_lo = ByteVector.fromArray(B128, lut_avx2[1], 0);
        ByteVector lut2_hi = ByteVector.fromArray(B128, lut_avx2[1], 16);
        ByteVector lut3_lo = ByteVector.fromArray(B128, lut_avx2[2], 0);
        ByteVector lut3_hi = ByteVector.fromArray(B128, lut_avx2[2], 16);
        ByteVector lut4_lo = ByteVector.fromArray(B128, lut_avx2[3], 0);
        ByteVector lut4_hi = ByteVector.fromArray(B128, lut_avx2[3], 16);
        ByteVector lut5_lo = ByteVector.fromArray(B128, lut_avx2[4], 0);
        ByteVector lut5_hi = ByteVector.fromArray(B128, lut_avx2[4], 16);
        for (int i = 0; i < B128.loopBound(str.length); i += B128.length()) {
            ByteVector vsrc = ByteVector.fromArray(B128, str, i);
            VectorMask<Byte> index_mask = vsrc.compare(VectorOperators.LE, 0x7d);
            VectorShuffle<Byte> index_lo = vsrc.lanewise(VectorOperators.AND, 0xF)
                                               .toShuffle();
            VectorShuffle<Byte> index_hi = vsrc.lanewise(VectorOperators.LSHR, 4)
                                               .toShuffle();
            ByteVector lookup_lut1 = lut1_lo.rearrange(index_lo).lanewise(VectorOperators.AND, lut1_hi.rearrange(index_hi));
            matches += lookup_lut1.compare(VectorOperators.GT, 0).and(index_mask).trueCount();

            ByteVector lookup_lut2 = lut2_lo.rearrange(index_lo).lanewise(VectorOperators.AND, lut2_hi.rearrange(index_hi));
            matches += lookup_lut2.compare(VectorOperators.GT, 0).and(index_mask).trueCount();

            ByteVector lookup_lut3 = lut3_lo.rearrange(index_lo).lanewise(VectorOperators.AND, lut3_hi.rearrange(index_hi));
            matches += lookup_lut3.compare(VectorOperators.GT, 0).and(index_mask).trueCount();

            ByteVector lookup_lut4 = lut4_lo.rearrange(index_lo).lanewise(VectorOperators.AND, lut4_hi.rearrange(index_hi));
            matches += lookup_lut4.compare(VectorOperators.GT, 0).and(index_mask).trueCount();

            ByteVector lookup_lut5 = lut5_lo.rearrange(index_lo).lanewise(VectorOperators.AND, lut5_hi.rearrange(index_hi));
            matches += lookup_lut5.compare(VectorOperators.GT, 0).and(index_mask).trueCount();
        }
        return matches;
    }

    @Benchmark
    public long match_scalar() {
        long matches = 0;
        for (int i = 0; i < str.length; i++) {
            switch(str[i]) {
                case 0x2c:
                    matches += 1;
                    break;
                case 0x3a:
                    matches += 1;
                    break;
                case 0x5b:
                case 0x5d:
                case 0x7b:
                case 0x7d:
                    matches += 1;
                    break;
                case 0x9:
                case 0xa:
                case 0xd:
                    matches += 1;
                    break;
                case 0x20:
                    matches += 1;
                    break;
                default:
                    break;
            }
        }
        return matches;
    }
}
