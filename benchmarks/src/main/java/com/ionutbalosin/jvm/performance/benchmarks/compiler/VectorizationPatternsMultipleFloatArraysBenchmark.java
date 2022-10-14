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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * References:
 * - https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst
 */

/*
 * Tests different vectorization patterns using multiple arrays of floats. All loops have stride 1 (or 2) and the loop counter is of type int or long.
 */

//  Pattern:
//
//    float[] A, B, R;
//    short[] S;
//
//    // sum_all_product_pairs_of_2_arrays_elements
//    sum += A[i] * B[i];
//
//    // add_2_arrays_elements
//    R[i] = A[i] + B[i];
//
//    // extract_2_arrays_elements
//    R[i] = A[i] - B[i];
//
//    // mod_2_arrays_elements
//    R[i] = A[i] % B[i];
//
//    // multiply_2_arrays_elements
//    R[i] = A[i] * B[i];
//
//    // multiply_2_arrays_elements_of_mixed_types
//    R[i] = A[i] * S[i];  (A - float[] and S - short[])
//
//    // multiply_2_arrays_elements_backward_iterator
//    C[i] = A[i] * B[i]; // i = n-1 ... 0
//
//    // multiply_2_arrays_elements_unknown_trip_count
//    R[i] = A[i] * S[i]; // but the trip is not known
//
//    // divide_2_arrays_elements
//    R[i] = A[i] / B[i];
//
//    // if_with_masking_conditional_flow
//    if (A[i] >= 0.f)
//        R[i] = CONST * A[i];
//    else
//        R[i] = A[i];
//
//    // multiply_2_arrays_elements_long_stride
//    R[(int) l] = A[(int) l] * B[(int) l]
//
//    // multiply_2_arrays_elements_stride_x2
//    R[2 * i] = A[2 * i] * B[2 * i];
//
//    // multiply_2_arrays_elements_stride_2
//    R[i + 2] = A[i + 2] * B[i + 2];
//
//    // add_2_arrays_elements_inc_index_access
//    A[i] = A[i + 1] + B[i];
//
//    // add_2_arrays_elements_modulo_index_access
//    R[i] = A[i % 2] + B[i];
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class VectorizationPatternsMultipleFloatArraysBenchmark {

  private final int CONST = 5;

  @Param({"262144"})
  private int size;

  private float[] A, B, C;
  private short[] S;

  @Setup
  public void setup() {
    final Random random = new Random(16384);
    A = new float[size];
    B = new float[size];
    C = new float[size];
    S = new short[size];
    for (int i = 0; i < size; i++) {
      A[i] = i + random.nextFloat();
      B[i] = i + random.nextFloat();
      C[i] = i + random.nextFloat();
      S[i] = (short) (i % Short.MAX_VALUE);
    }
  }

  @Benchmark
  public int sum_all_product_pairs_of_2_arrays_elements() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += A[i] * B[i];
    }
    return sum;
  }

  @Benchmark
  public float[] add_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] + B[i];
    }
    return C;
  }

  @Benchmark
  public float[] extract_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] - B[i];
    }
    return C;
  }

  @Benchmark
  public float[] mod_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] % B[i];
    }
    return C;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_backward_iterator() {
    for (int i = size - 1; i >= 0; --i) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_unknown_trip_count() {
    return multiply2ArraysWithUnknownTripCount(A, B, C, 0, size);
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_of_mixed_types() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] * S[i];
    }
    return B;
  }

  @Benchmark
  public float[] divide_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] / B[i];
    }
    return C;
  }

  @Benchmark
  public float[] if_with_masking_conditional_flow() {
    for (int i = 0; i < size; i++) {
      if (A[i] >= 0.f) // Conditional control flow in loop; straight-line code (no switch, if with
        // masking)
        B[i] = CONST * A[i];
      else B[i] = A[i];
    }
    return B;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_long_stride() {
    for (long l = 0; l < size; l++) {
      C[(int) l] = A[(int) l] * B[(int) l];
    }
    return C;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_stride_x2() {
    for (int i = 1; i < size; i *= 2) {
      C[i] = A[i] * B[i]; // Strided Access: vectorizable
    }
    return C;
  }

  @Benchmark
  public float[] multiply_2_arrays_elements_stride_2() {
    for (int i = 0; i < size; i += 2) {
      C[i] = A[i] * B[i]; // Strided Access: vectorizable
    }
    return C;
  }

  @Benchmark
  public float[] add_2_arrays_elements_inc_index_access() {
    for (int i = 0; i < size - 1; i++) {
      A[i] = A[i + 1] + B[i]; // Write after read (WAR): vectorizable
    }
    return A;
  }

  @Benchmark
  public float[] add_2_arrays_elements_modulo_index_access() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i % 2] + B[i]; // Read after read (RAR): vectorizable
    }
    return C;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public float[] multiply2ArraysWithUnknownTripCount(
      float[] a, float[] b, float[] c, int start, int end) {
    for (int i = start; i < end; i++) {
      c[i] = a[i] * b[i];
    }
    return c;
  }
}
