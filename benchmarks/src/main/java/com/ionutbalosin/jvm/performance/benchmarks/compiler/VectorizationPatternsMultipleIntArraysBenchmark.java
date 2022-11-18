/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
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
 * Tests different vectorization patterns using multiple arrays of ints. All loops have stride 1 (or 2) and the loop counter is of type int or long.
 * Benchmark use cases are similar to the ones from VectorizationPatternsMultipleFloatArraysBenchmark, hence no need to duplicate them anymore.
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
public class VectorizationPatternsMultipleIntArraysBenchmark {

  private final Random random = new Random(16384);
  private final int CONST = 5;

  private int[] A, B, C, D;
  private short[] S;

  @Param({"262144"})
  private int size;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    C = new int[size];
    S = new short[size];
    for (int i = 0; i < size; i++) {
      A[i] = random.nextInt(32);
      B[i] = random.nextInt(32);
      C[i] = random.nextInt(32);
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
  public int[] add_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] + B[i];
    }
    return C;
  }

  @Benchmark
  public int[] add_2_arrays_inc_index_access() {
    for (int i = 0; i < size - 1; i++) {
      // Write after read (WAR): vectorizable
      A[i] = A[i + 1] + B[i];
    }
    return A;
  }

  @Benchmark
  public int[] add_2_arrays_modulo_index_access() {
    for (int i = 0; i < size; i++) {
      // Read after read (RAR): vectorizable
      C[i] = A[i % 2] + B[i];
    }
    return C;
  }

  @Benchmark
  public int[] sub_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] - B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mul_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mul_2_arrays_backward_iterator() {
    for (int i = size - 1; i >= 0; --i) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mul_2_arrays_unknown_trip_count() {
    return multiply2ArraysWithUnknownTripCount(A, B, C, 0, size);
  }

  @Benchmark
  public int[] mul_2_arrays_of_mixed_types() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] * S[i];
    }
    return B;
  }

  @Benchmark
  public int[] mul_2_arrays_long_stride() {
    for (long l = 0; l < size; l++) {
      C[(int) l] = A[(int) l] * B[(int) l];
    }
    return C;
  }

  @Benchmark
  public int[] mul_2_arrays_stride_x2() {
    for (int i = 1; i < size; i *= 2) {
      // Strided Access: vectorizable
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mul_2_arrays_stride_2() {
    for (int i = 0; i < size; i += 2) {
      // Strided Access: vectorizable
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mod_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] % B[i];
    }
    return C;
  }

  @Benchmark
  public int[] and_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] & B[i];
    }
    return C;
  }

  @Benchmark
  public int[] or_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] | B[i];
    }
    return C;
  }

  @Benchmark
  public int[] xor_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] ^ B[i];
    }
    return C;
  }

  @Benchmark
  public int[] ashl_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] << CONST;
    }
    return B;
  }

  @Benchmark
  public int[] ashr_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] >> CONST;
    }
    return B;
  }

  @Benchmark
  public int[] lshr_array_elements_by_const() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] >>> CONST;
    }
    return B;
  }

  @Benchmark
  public int[] non_zero_array_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] != 0 ? A[i] : B[i];
    }

    return C;
  }

  @Benchmark
  public int[] min_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.min(A[i], B[i]);
    }

    return C;
  }

  @Benchmark
  public int[] max_2_arrays() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.max(A[i], B[i]);
    }

    return C;
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
  public int[] if_with_masking_conditional_flow() {
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
  private int[] multiply2ArraysWithUnknownTripCount(int[] a, int[] b, int[] c, int start, int end) {
    for (int i = start; i < end; i++) {
      c[i] = a[i] * b[i];
    }
    return c;
  }
}
