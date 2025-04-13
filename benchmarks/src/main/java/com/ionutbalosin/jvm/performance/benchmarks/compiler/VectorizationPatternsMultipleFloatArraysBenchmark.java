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
import org.openjdk.jmh.annotations.CompilerControl;
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
 * Tests different vectorization patterns using multiple arrays of floats. All loops have stride 1 (or 2) and the loop counter is of type int or long.
 *
 * References:
 * - https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class VectorizationPatternsMultipleFloatArraysBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VectorizationPatternsMultipleFloatArraysBenchmark.*"

  private final Random random = new Random(16384);
  private final int CONST = 5;

  private float[] A, B, C, D;
  private short[] S;

  @Param({"262144"})
  private int size;

  @Setup
  public void setup() {
    A = new float[size];
    B = new float[size];
    C = new float[size];
    D = new float[size];
    S = new short[size];
    for (int i = 0; i < size; i++) {
      A[i] = 1 + random.nextFloat();
      B[i] = 1 + random.nextFloat();
      C[i] = 1 + random.nextFloat();
      D[i] = 1 + random.nextFloat();
      S[i] = (short) (i % Short.MAX_VALUE);
    }
  }

  @Benchmark
  public int sum_2_arrays_mul_pairs() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += A[i] * B[i];
    }
    return sum;
  }

  @Benchmark
  public float[] add_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] + B[i];
    }
    return C;
  }

  @Benchmark
  public float[] add_2_arrays_inc_index_access() {
    for (int i = 0; i < size - 1; i++) {
      // Write after read (WAR): vectorizable
      A[i] = A[i + 1] + B[i];
    }
    return A;
  }

  @Benchmark
  public float[] add_2_arrays_modulo_index_access() {
    for (int i = 0; i < size; i++) {
      // Read after read (RAR): vectorizable
      C[i] = A[i % 2] + B[i];
    }
    return C;
  }

  @Benchmark
  public float[] sub_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] - B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mul_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mul_2_arrays_backward_iterator() {
    for (int i = size - 1; i >= 0; --i) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mul_2_arrays_unknown_trip_count() {
    return multiply2ArraysWithUnknownTripCount(A, B, C, 0, size);
  }

  @Benchmark
  public float[] mul_2_arrays_of_mixed_types() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] * S[i];
    }
    return B;
  }

  @Benchmark
  public float[] mul_2_arrays_long_stride() {
    for (long l = 0; l < size; l++) {
      C[(int) l] = A[(int) l] * B[(int) l];
    }
    return C;
  }

  @Benchmark
  public float[] mul_2_arrays_stride_x2() {
    for (int i = 1; i < size; i *= 2) {
      // Strided Access: vectorizable
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mul_2_arrays_stride_2() {
    for (int i = 0; i < size; i += 2) {
      // Strided Access: vectorizable
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] div_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] / B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mod_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] % B[i];
    }
    return C;
  }

  @Benchmark
  public float[] non_zero_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] != 0 ? A[i] : B[i];
    }
    return C;
  }

  @Benchmark
  public float[] min_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.min(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  public float[] hypot_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.hypot(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  public float[] pow_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.pow(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  public float[] atan2_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.atan2(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  public float[] max_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.max(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  public float[] fma_arrays() {
    for (int i = 0; i < size; i++) {
      D[i] = Math.fma(A[i], B[i], C[i]);
    }
    return D;
  }

  @Benchmark
  public float[] sqrt_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.sqrt(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] abs_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.abs(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] exp_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.exp(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] log1p_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.log1p(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] log_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.log(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] log10_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.log10(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] expm1_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.expm1(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] sin_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.sin(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] asin_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.asin(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] sinh_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.sinh(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] cos_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.cos(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] acos_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.acos(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] cosh_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.cosh(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] tan_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.tan(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] atan_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.atan(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] tanh_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.tanh(A[i]);
    }
    return C;
  }

  @Benchmark
  public float[] cbrt_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = (float) Math.cbrt(A[i]);
    }
    return C;
  }

  @Benchmark
  public boolean is_finite_array_elements() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= Float.isFinite(A[i]);
    }
    return res;
  }

  @Benchmark
  public boolean is_infinite_array_elements() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= Float.isInfinite(A[i]);
    }
    return res;
  }

  @Benchmark
  public boolean is_nan_array_elements() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= Float.isNaN(A[i]);
    }
    return res;
  }

  @Benchmark
  public boolean lt_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] < B[i];
    }
    return res;
  }

  @Benchmark
  public boolean gt_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] > B[i];
    }
    return res;
  }

  @Benchmark
  public boolean le_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] <= B[i];
    }
    return res;
  }

  @Benchmark
  public boolean ge_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] >= B[i];
    }
    return res;
  }

  @Benchmark
  public boolean ne_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] != B[i];
    }
    return res;
  }

  @Benchmark
  public boolean eq_2_arrays() {
    boolean res = true;
    for (int i = 0; i < size; i++) {
      res &= A[i] == B[i];
    }
    return res;
  }

  @Benchmark
  public float[] if_with_masking_conditional_flow() {
    for (int i = 0; i < size; i++) {
      // Conditional control flow in loop; straight-line code (no switch, if with masking)
      if (A[i] >= 0) {
        B[i] = CONST * A[i];
      } else {
        B[i] = A[i];
      }
    }
    return B;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private float[] multiply2ArraysWithUnknownTripCount(
      float[] a, float[] b, float[] c, int start, int end) {
    for (int i = start; i < end; i++) {
      c[i] = a[i] * b[i];
    }
    return c;
  }
}
