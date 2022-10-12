package com.ionutbalosin.jvm.performance.benchmarks.jit;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Loop fusion merges adjacent loops into one loop to reduce the loop overhead and improve run-time performance.
 * Benefits of loop fusion:
 * - reduce loop overhead
 * - improve locality by combining loops that reference the same array
 * - reuse the operands in the registers while executing the statements of the second loop
 *
 * To eliminate the effect of vectorization, there is an explicit Read-after-write (RAW) case and a data dependency between loop statements.
 *
 * Resources:
 *  - see http://www.sridhargopinath.in/wp-content/uploads/2018/11/Loop-Fusion-in-LLVM-Compiler.pdf
 */

//  Pattern:
//
//    method() {
//        for (i = 0; i < size; i++)
//            A[i] = A[i - 1] + B[i];
//        for (i = 0; i < size; i++)
//            B[i] = B[i - 1] + A[i];
//    }
//
//    is equivalent to:
//
//    method() {
//        for (i = 0; i < size; i++) {
//            A[i] = A[i - 1] + B[i];
//            B[i] = B[i - 1] + A[i];
//        }
//    }
//
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Thread)
public class LoopFusionBenchmark {

  @Param({"262144"})
  private int size;

  private int[] A, B;

  // java -jar benchmarks/target/benchmarks.jar ".*LoopFusionBenchmark.*"

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   *
   * Read-after-write: the loop cannot be vectorized safely because same variable is written to in more than 1 iteration.
   */
  @Benchmark
  public void baseline() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i]; // Read-after-write (RAW)
      B[i] = B[i - 1] + A[i];
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void loop_fusion() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
    }

    for (int i = 1; i < size; i++) {
      B[i] = B[i - 1] + A[i];
    }
  }
}
