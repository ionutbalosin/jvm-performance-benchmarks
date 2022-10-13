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
 * Resources:
 * - see https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst
 * - see https://github.com/Microsoft/DirectXShaderCompiler/blob/master/docs/Vectorizers.rst
 */

/*
 * Tests different vectorization patterns using multiple arrays of ints. All loops have stride 1 (or 2) and the loop counter is of type int or long.
 * Benchmark use cases are similar to the ones from VectorizationPatternsMultipleFloatArraysBenchmark, hence no need to duplicate them anymore.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Thread)
public class VectorizationPatternsMultipleIntArraysBenchmark {

  private final int CONST = 5;

  @Param({"262144"})
  private int size;

  private int[] A, B, C, D;
  private short[] S;

  // java -jar benchmarks/target/benchmarks.jar
  // ".*VectorizationPatternsMultipleIntArraysBenchmark.*"

  @Setup
  public void setup() {
    final Random random = new Random(16384);
    A = new int[size];
    B = new int[size];
    C = new int[size];
    D = new int[size];
    S = new short[size];
    for (int i = 0; i < size; i++) {
      A[i] = i + random.nextInt(32);
      B[i] = i + random.nextInt(32);
      C[i] = i + random.nextInt(32);
      D[i] = i + random.nextInt(32);
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
  public int[] add_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] + B[i];
    }
    return C;
  }

  @Benchmark
  public int[] extract_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] - B[i];
    }
    return C;
  }

  @Benchmark
  public int[] mod_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] % B[i];
    }
    return C;
  }

  @Benchmark
  public int[] xor_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] ^ B[i];
    }
    return C;
  }

  @Benchmark
  public int[] shl_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] << CONST;
    }
    return B;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_backward_iterator() {
    for (int i = size - 1; i >= 0; --i) {
      C[i] = A[i] * B[i];
    }
    return C;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_unknown_trip_count() {
    return multiply2ArraysWithUnknownTripCount(A, B, C, 0, size);
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_of_mixed_types() {
    for (int i = 0; i < size; i++) {
      B[i] = A[i] * S[i];
    }
    return B;
  }

  @Benchmark
  public int[] if_with_masking_conditional_flow() {
    for (int i = 0; i < size; i++) {
      if (A[i]
          >= 0) // Conditional control flow in loop; straight-line code (no switch, if with masking)
      B[i] = CONST * A[i];
      else B[i] = A[i];
    }
    return B;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_long_stride() {
    for (long l = 0; l < size; l++) {
      C[(int) l] = A[(int) l] * B[(int) l];
    }
    return C;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_stride_x2() {
    for (int i = 1; i < size; i *= 2) {
      C[i] = A[i] * B[i]; // Strided Access: vectorizable
    }
    return C;
  }

  @Benchmark
  public int[] multiply_2_arrays_elements_stride_2() {
    for (int i = 0; i < size; i += 2) {
      C[i] = A[i] * B[i]; // Strided Access: vectorizable
    }
    return C;
  }

  @Benchmark
  public int[] add_2_arrays_elements_inc_index_access() {
    for (int i = 0; i < size - 1; i++) {
      A[i] = A[i + 1] + B[i]; // Write after read (WAR): vectorizable
    }
    return A;
  }

  @Benchmark
  public int[] add_2_arrays_elements_modulo_index_access() {
    for (int i = 0; i < size; i++) {
      C[i] = A[i % 2] + B[i]; // Read after read (RAR): vectorizable
    }
    return C;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int[] multiply2ArraysWithUnknownTripCount(int[] a, int[] b, int[] c, int start, int end) {
    for (int i = start; i < end; i++) {
      c[i] = a[i] * b[i];
    }
    return c;
  }
}
