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

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;

/*
 * Some basic benchmarks using the new Vector API. It is an incubator module in JDK 17.
 *
 * References:
 *  - http://cr.openjdk.java.net/~psandoz/conferences/2022-JavaOne/Vector-API-LRN1427-J1-2022.pdf
 *  - https://github.com/richardstartin/vectorbenchmarks/tree/master/src/main/java/com/openkappa/panama/vectorbenchmarks
 *  - https://www.intel.com/content/dam/develop/public/us/en/documents/vector-api-writing-own-vector-final-9-27-17.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsAppend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class VectorApiBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VectorApiBenchmark.*"

  @Param({"262144", "1048576"})
  private int size;

  private int[] intArr;
  private int[] resultArr;

  private static final VectorSpecies<Integer> INT_VECTOR_SPECIES = IntVector.SPECIES_PREFERRED;

  @Setup
  public void setup() {
    intArr = new int[size];
    resultArr = new int[size];
    for (int i = 0; i < size; i++) {
      intArr[i] = i;
    }
  }

  @Benchmark
  public int baseline_sum() {
    int[] intArr = this.intArr;
    int sum = 0;
    for (int i = 0; i < intArr.length; i++) {
      sum += intArr[i];
    }
    return sum;
  }

  @Benchmark
  public int vectorized_sum() {
    int[] intArr = this.intArr;
    int sum = 0, i = 0;
    for (; i < INT_VECTOR_SPECIES.loopBound(intArr.length); i += INT_VECTOR_SPECIES.length()) {
      IntVector vector = IntVector.fromArray(INT_VECTOR_SPECIES, intArr, i);
      sum += vector.reduceLanes(VectorOperators.ADD);
    }
    for (; i < intArr.length; i++) {
      sum += intArr[i];
    }
    return sum;
  }

  @Benchmark
  public void baseline_filter(Blackhole blackhole) {
    int[] intArr = this.intArr;
    int[] filteredArr = this.resultArr;
    for (int i = 0; i < intArr.length; i++) {
      int value = intArr[i];
      if (test_value(value)) {
        filteredArr[i] = value;
      }
    }
    blackhole.consume(filteredArr);
  }

  @Benchmark
  public void vectorized_filter(Blackhole blackhole) {
    int[] intArr = this.intArr;
    int[] filteredArr = this.resultArr;
    int i = 0;
    for (; i < INT_VECTOR_SPECIES.loopBound(intArr.length); i += INT_VECTOR_SPECIES.length()) {
      IntVector vector = IntVector.fromArray(INT_VECTOR_SPECIES, intArr, i);
      VectorMask<Integer> mask = test_value_vector(vector);
      vector.intoArray(filteredArr, i, mask);
    }
    for (; i < intArr.length; i++) {
      int value = intArr[i];
      if (test_value(value)) {
        filteredArr[i] = value;
      }
    }
    blackhole.consume(filteredArr);
  }

  @Benchmark
  public void baseline_matrix_mul(Blackhole bh) {
    int n = (int) Math.sqrt(size);
    int[] intArr = this.intArr;
    int[] resultArr = this.resultArr;
    int[] bBuffer = new int[n];
    int[] cBuffer = new int[n];
    int in = 0;
    for (int i = 0; i < n; ++i) {
      int kn = 0;
      for (int k = 0; k < n; ++k) {
        int aik = intArr[in + k];
        System.arraycopy(intArr, kn, bBuffer, 0, n);
        saxpy(n, aik, bBuffer, cBuffer);
        kn += n;
      }
      System.arraycopy(cBuffer, 0, resultArr, in, n);
      Arrays.fill(cBuffer, 0);
      in += n;
    }
    bh.consume(resultArr);
  }

  @Benchmark
  public void vectorized_matrix_mul(Blackhole bh) {
    int blockWidth = 512;
    int blockHeight = 8;
    int[] result = this.resultArr;
    int[] intArr = this.intArr;
    int n = (int) Math.sqrt(size);
    for (int columnOffset = 0; columnOffset < n; columnOffset += blockWidth) {
      for (int rowOffset = 0; rowOffset < n; rowOffset += blockHeight) {
        for (int i = 0; i < n; ++i) {
          for (int j = columnOffset; j < columnOffset + blockWidth && j < n; j += 64) {
            var sum1 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j);
            var sum2 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 8);
            var sum3 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 16);
            var sum4 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 24);
            var sum5 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 32);
            var sum6 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 40);
            var sum7 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 48);
            var sum8 = IntVector.fromArray(IntVector.SPECIES_256, result, i * n + j + 56);
            for (int k = rowOffset; k < rowOffset + blockHeight && k < n; ++k) {
              var multiplier = IntVector.broadcast(IntVector.SPECIES_256, intArr[i * n + k]);
              sum1 =
                  sum1.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j)));
              sum2 =
                  sum2.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 8)));
              sum3 =
                  sum3.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 16)));
              sum4 =
                  sum4.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 24)));
              sum5 =
                  sum5.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 32)));
              sum6 =
                  sum6.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 40)));
              sum7 =
                  sum7.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 48)));
              sum8 =
                  sum8.add(
                      multiplier.mul(
                          IntVector.fromArray(IntVector.SPECIES_256, intArr, k * n + j + 56)));
            }
            sum1.intoArray(result, i * n + j);
            sum2.intoArray(result, i * n + j + 8);
            sum3.intoArray(result, i * n + j + 16);
            sum4.intoArray(result, i * n + j + 24);
            sum5.intoArray(result, i * n + j + 32);
            sum6.intoArray(result, i * n + j + 40);
            sum7.intoArray(result, i * n + j + 48);
            sum8.intoArray(result, i * n + j + 56);
          }
        }
      }
    }
    bh.consume(resultArr);
  }

  private void saxpy(int n, int aik, int[] b, int[] c) {
    for (int i = 0; i < n; ++i) {
      c[i] += aik * b[i];
    }
  }

  public boolean test_value(int value) {
    return value % 2 == 0;
  }

  public VectorMask<Integer> test_value_vector(IntVector values) {
    return values.and(0b1).compare(VectorOperators.EQ, 0b0);
  }
}
