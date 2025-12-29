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

import java.util.concurrent.TimeUnit;
import java.util.stream.IntStream;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;

/*
 * Inclusive scan operation acceleration using Java VectorAPIs.
 *
 * References:
 *  - JEP 426: Vector API (Fourth Incubator): https://openjdk.org/jeps/426
 *  - https://en.wikipedia.org/wiki/Prefix_sum
 *  - https://www.intel.com/content/www/us/en/developer/articles/technical/optimize-scan-operations-explicit-vectorization.html
 *  - https://github.com/jatin-bhateja/external_staging/tree/main/VectorizedAlgos
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsPrepend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class VectorizedScanOperationBenchmark {

  @Param({"4096", "10000"})
  public static int size;

  public static double[] input;
  public static double[] result;

  @Setup
  public static void BMSetup() {
    input = IntStream.range(0, size).mapToDouble(i -> (double) i).toArray();
    result = new double[size];
  }

  @Benchmark
  public static void serial_scan() {
    double running_sum = 0.0;
    for (int i = 0; i < result.length; i++) {
      // Every iteration adds one element to memorized sum.
      running_sum += input[i];
      result[i] = running_sum;
    }
  }

  /* Algorithm Description (512-bit):-
     Input                     :  A      B     C   D      E    F     G    H
     Shuf1                     :  0      0     2   2      4    4     6    6
     Mask1                     :  0      1     0   1      0    1     0    1
     TMP1 = Shuf1(Input).Mask1 :  A    (A+B)   C  (C+D)   E  (F+E)   G   (G+H)

     Shuf2                     :  0      0     1          1      4    4      5          5
     Mask2                     :  0      0     1          1      0    0      1          1
     TMP2 = Shuf2(TMP1).Mask2  :  A    (A+B)  (A+B+C) (A+B+C+D)  E    (E+F) (E+F+G)  (E+F+G+H)

     Shuf3                     :  0      0     1          1         3           3            3                3
     Mask3                     :  0      0     0          0         1           1            1                1
     TMP3 = Shuf3(TMP2).Mask3  :  A    (A+B)  (A+B+C) (A+B+C+D)  (A+B+C+D+E)  (A+B+C+DE+F) (A+B+C+D+E+F+G)  (A+B+C+D+E+F+G+H)
  */

  public static final VectorSpecies<Double> DSPECIES = DoubleVector.SPECIES_PREFERRED;
  public static final VectorShuffle<Double> SHUF1;
  public static final VectorShuffle<Double> SHUF2;
  public static final VectorShuffle<Double> SHUF3;
  public static final VectorMask<Double> MASK1;
  public static final VectorMask<Double> MASK2;
  public static final VectorMask<Double> MASK3;

  static {
    int vectorLength = DSPECIES.length();

    if (vectorLength == 4) {
      // For 4-element vectors (E.g., 256-bit vectors; AVX/AVX2)
      SHUF1 = VectorShuffle.fromValues(DSPECIES, 0, 0, 2, 2);
      SHUF2 = VectorShuffle.fromValues(DSPECIES, 0, 0, 1, 1);
      SHUF3 = VectorShuffle.fromValues(DSPECIES, 0, 0, 0, 0);
      MASK1 = VectorMask.fromLong(DSPECIES, 0xA); // 1010 in binary
      MASK2 = VectorMask.fromLong(DSPECIES, 0xC); // 1100 in binary
      MASK3 = VectorMask.fromLong(DSPECIES, 0x8); // 1000 in binary
    } else if (vectorLength == 8) {
      // For 8-element vectors (E.g., 512-bit vectors; AVX-512)
      SHUF1 = VectorShuffle.fromValues(DSPECIES, 0, 0, 2, 2, 4, 4, 6, 6);
      SHUF2 = VectorShuffle.fromValues(DSPECIES, 0, 0, 1, 1, 4, 4, 5, 5);
      SHUF3 = VectorShuffle.fromValues(DSPECIES, 0, 0, 0, 0, 3, 3, 3, 3);
      MASK1 = VectorMask.fromLong(DSPECIES, 0xAA);
      MASK2 = VectorMask.fromLong(DSPECIES, 0xCC);
      MASK3 = VectorMask.fromLong(DSPECIES, 0xF0);
    } else {
      throw new UnsupportedOperationException(
          "Unsupported vector length: "
              + vectorLength
              + ". This benchmark supports only vector lengths of 4 or 8.");
    }
  }

  @Benchmark
  public static void vector_scan() {
    DoubleVector init = DoubleVector.broadcast(DSPECIES, 0.0);
    for (int i = 0; i < DSPECIES.loopBound(input.length); i += DSPECIES.length()) {
      DoubleVector vec0 = DoubleVector.fromArray(DSPECIES, input, i);
      var vec1 = vec0.rearrange(SHUF1, MASK1);
      var vec2 = vec1.lanewise(VectorOperators.ADD, vec0);
      var vec3 = vec2.rearrange(SHUF2, MASK2);
      vec2 = vec3.lanewise(VectorOperators.ADD, vec2);
      vec3 = vec2.rearrange(SHUF3, MASK3);
      vec2 = vec3.lanewise(VectorOperators.ADD, vec2);
      vec2 = vec2.lanewise(VectorOperators.ADD, init);
      init = DoubleVector.broadcast(DSPECIES, result[i + DSPECIES.length() - 1]);
      vec2.intoArray(result, i);
    }
  }
}
