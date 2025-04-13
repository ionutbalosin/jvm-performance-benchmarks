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

import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Tests different vectorization patterns using an array of ints. All loops have stride 1 and the loop counter is of type int or long.
 *
 * References:
 * - https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst
 * - https://llvm.org/docs/Vectorizers.html#reductions
 * - https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst#reductions
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class VectorizationPatternsSingleIntArrayBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VectorizationPatternsSingleIntArrayBenchmark.*"

  private final Random random = new Random(16384);
  private final int CONST = 5;
  private final int SHIFT = 3;
  private final int MASK = 0x7f;

  private boolean[] P;
  private int[] A;

  @Param({"262144"})
  private int size;

  @Setup
  public void setup() {
    A = new int[size];
    P = new boolean[size];
    for (int i = 0; i < size; i++) {
      A[i] = 1 + random.nextInt(32);
      P[i] = (i % 2 == 0);
    }
  }

  @Benchmark
  public int sum_array_elements() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += A[i];
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_long_stride() {
    int sum = 0;
    for (long i = 0; i < size; i++) {
      sum += A[(int) i];
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_stride_x2() {
    int sum = 0;
    for (int i = 1; i < size; i *= 2) {
      sum += A[i];
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_stride_2() {
    int sum = 0;
    for (int i = 0; i < size; i += 2) {
      sum += A[i];
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_by_const() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += A[i] + CONST;
    }
    return sum;
  }

  @Benchmark
  public int sum_even_array_elements() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if ((A[i] & 0x1) == 0) {
        sum += A[i];
      }
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_matching_a_predicate() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (P[i]) {
        sum += A[i];
      }
    }
    return sum;
  }

  @Benchmark
  public int sum_array_elements_by_shifting_and_masking() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += (A[i] >> SHIFT) & MASK;
    }
    return sum;
  }

  @Benchmark
  public int[] add_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] + CONST;
    }
    return A;
  }

  @Benchmark
  public int[] sub_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] - CONST;
    }
    return A;
  }

  @Benchmark
  public int[] mul_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] * CONST;
    }
    return A;
  }

  @Benchmark
  public int[] mod_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] % CONST;
    }
    return A;
  }

  @Benchmark
  public int[] and_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] & CONST;
    }
    return A;
  }

  @Benchmark
  public int[] or_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] | CONST;
    }
    return A;
  }

  @Benchmark
  public int[] xor_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] ^ CONST;
    }
    return A;
  }

  @Benchmark
  public int[] ashl_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] << CONST;
    }
    return A;
  }

  @Benchmark
  public int[] lshr_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      A[i] = A[i] >>> CONST;
    }
    return A;
  }

  @Benchmark
  public int[] store_induction_variable_to_array_elements() {
    for (int i = 0; i < size; i++) {
      A[i] = i;
    }
    return A;
  }

  @Benchmark
  public int[] inc_array_elements_backward_iterator() {
    for (int i = size - 1; i >= 0; --i) {
      A[i] += 1;
    }
    return A;
  }

  @Benchmark
  public boolean all_true_array_elements() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= P[i];
    }
    return res;
  }

  @Benchmark
  public boolean any_true_array_element() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res |= P[i];
    }
    return res;
  }
}
