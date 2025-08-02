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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmarks memory access combining optimizations in the JIT compiler.
 * Tests how the compiler combines adjacent scalar memory operations into wider accesses.
 *
 * This benchmark focuses specifically on load/store combining at the instruction level,
 * distinct from higher-level vectorization pattern optimizations.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ScalarMemoryPackingBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ScalarMemoryPackingBenchmark.*"

  @Param({"262144"})
  private int size;

  private byte[] byteArray;
  private short[] shortArray;
  private int[] intArray;

  @Setup
  public void setup() {
    // Arrays sized to test combining patterns while avoiding cache effects
    // Different sizes ensure we test various data type alignments
    byteArray = new byte[size];
    shortArray = new short[size / 2];
    intArray = new int[size / 4];

    // Initialize with test data
    for (int i = 0; i < size; i++) {
      byteArray[i] = (byte) (i & 0xFF);
    }
    for (int i = 0; i < shortArray.length; i++) {
      shortArray[i] = (short) (i & 0xFFFF);
    }
    for (int i = 0; i < intArray.length; i++) {
      intArray[i] = i;
    }
  }

  @Benchmark
  public int sequential_byte_loads() {
    int result = 0;
    for (int i = 0; i < byteArray.length - 7; i += 8) {
      // Sequential byte loads - JIT might combine these into wider int/long loads
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 1];
      byte b2 = byteArray[i + 2];
      byte b3 = byteArray[i + 3];
      byte b4 = byteArray[i + 4];
      byte b5 = byteArray[i + 5];
      byte b6 = byteArray[i + 6];
      byte b7 = byteArray[i + 7];

      result |= b0 | b1 | b2 | b3 | b4 | b5 | b6 | b7;
    }
    return result;
  }

  @Benchmark
  public int non_sequential_byte_loads() {
    int result = 0;
    for (int i = 0; i < byteArray.length - 16; i += 16) {
      // Non-sequential byte loads with 2-byte gaps - prevents load combining
      // JIT cannot merge these due to memory layout constraints
      // Expected: Higher latency due to multiple separate memory accesses
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 2]; // Gap
      byte b2 = byteArray[i + 4]; // Gap
      byte b3 = byteArray[i + 6]; // Gap
      byte b4 = byteArray[i + 8]; // Gap
      byte b5 = byteArray[i + 10]; // Gap
      byte b6 = byteArray[i + 12]; // Gap
      byte b7 = byteArray[i + 14]; // Gap

      result |= b0 | b1 | b2 | b3 | b4 | b5 | b6 | b7;
    }
    return result;
  }

  @Benchmark
  public int sequential_short_loads() {
    int result = 0;
    for (int i = 0; i < shortArray.length - 3; i += 4) {
      // Sequential short loads - JIT might combine these into wider int/long loads
      short s0 = shortArray[i];
      short s1 = shortArray[i + 1];
      short s2 = shortArray[i + 2];
      short s3 = shortArray[i + 3];

      result |= s0 | s1 | s2 | s3;
    }
    return result;
  }

  @Benchmark
  public int sequential_int_loads() {
    int result = 0;
    for (int i = 0; i < intArray.length - 1; i += 2) {
      // Sequential int loads - JIT might combine these into wider long loads
      int i0 = intArray[i];
      int i1 = intArray[i + 1];

      result |= i0 | i1;
    }
    return result;
  }

  @Benchmark
  public byte[] sequential_byte_stores() {
    for (int i = 0; i < byteArray.length - 7; i += 8) {
      // Sequential byte stores - might be potentially combined into wider stores
      byteArray[i] = (byte) 0x01;
      byteArray[i + 1] = (byte) 0x02;
      byteArray[i + 2] = (byte) 0x03;
      byteArray[i + 3] = (byte) 0x04;
      byteArray[i + 4] = (byte) 0x05;
      byteArray[i + 5] = (byte) 0x06;
      byteArray[i + 6] = (byte) 0x07;
      byteArray[i + 7] = (byte) 0x08;
    }
    return byteArray;
  }

  @Benchmark
  public byte[] non_sequential_byte_stores() {
    for (int i = 0; i < byteArray.length - 16; i += 16) {
      // Non-sequential stores - no combining possible
      byteArray[i] = (byte) 0x01;
      byteArray[i + 2] = (byte) 0x02; // Gap
      byteArray[i + 4] = (byte) 0x03; // Gap
      byteArray[i + 6] = (byte) 0x04; // Gap
      byteArray[i + 8] = (byte) 0x05; // Gap
      byteArray[i + 10] = (byte) 0x06; // Gap
      byteArray[i + 12] = (byte) 0x07; // Gap
      byteArray[i + 14] = (byte) 0x08; // Gap
    }
    return byteArray;
  }

  @Benchmark
  public short[] sequential_short_stores() {
    for (int i = 0; i < shortArray.length - 3; i += 4) {
      // Sequential short stores - might be potentially combined
      shortArray[i] = (short) 0x1234;
      shortArray[i + 1] = (short) 0x5678;
      shortArray[i + 2] = (short) 0x9ABC;
      shortArray[i + 3] = (short) 0xDEF0;
    }
    return shortArray;
  }

  @Benchmark
  public int[] sequential_int_stores() {
    for (int i = 0; i < intArray.length - 1; i += 2) {
      // Sequential int stores - might be potentially combined
      intArray[i] = 0x12345678;
      intArray[i + 1] = 0x9ABCDEF0;
    }
    return intArray;
  }

  @Benchmark
  public byte[] interleaved_load_store() {
    // Interleaved load-store pattern tests dependency handling
    // Tests whether JIT can optimize mixed load/store sequences
    // Pattern: load→load→store→store may allow some optimization
    int result = 0;
    for (int i = 0; i < byteArray.length - 15; i += 16) {
      // Interleaved loads and stores (i.e., load-store-load-store pattern)
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 1];
      byteArray[i + 8] = b0;
      byteArray[i + 9] = b1;

      byte b2 = byteArray[i + 2];
      byte b3 = byteArray[i + 3];
      byteArray[i + 10] = b2;
      byteArray[i + 11] = b3;
    }
    return byteArray;
  }

  @Benchmark
  public byte[] copy_first_into_second_half_array() {
    // Memory copy pattern - should demonstrate both load and store combining
    int halfSize = byteArray.length / 2;
    for (int i = 0; i < halfSize - 7; i += 8) {
      byteArray[halfSize + i] = byteArray[i];
      byteArray[halfSize + i + 1] = byteArray[i + 1];
      byteArray[halfSize + i + 2] = byteArray[i + 2];
      byteArray[halfSize + i + 3] = byteArray[i + 3];
      byteArray[halfSize + i + 4] = byteArray[i + 4];
      byteArray[halfSize + i + 5] = byteArray[i + 5];
      byteArray[halfSize + i + 6] = byteArray[i + 6];
      byteArray[halfSize + i + 7] = byteArray[i + 7];
    }
    return byteArray;
  }
}