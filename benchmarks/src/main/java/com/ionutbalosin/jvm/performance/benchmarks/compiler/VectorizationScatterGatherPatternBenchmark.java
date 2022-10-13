package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * Gather-scatter is a type of memory addressing that often arises when addressing vectors in sparse linear algebra operations.
 * Vector processors (and some SIMD units in CPUs) have hardware support for gather-scatter operations, providing instructions
 * such as Load Vector Indexed for gather and Store Vector Indexed for scatter.
 */
//  Pattern:
//
//    int[] A, B, C, R;
//
//    // scatter_gather
//    R[i] = C[i] + A[B[i]];
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Thread)
public class VectorizationScatterGatherPatternBenchmark {

  @Param({"262144"})
  private int size;

  private int[] A, B, C, D;

  // java -jar benchmarks/target/benchmarks.jar ".*VectorizationScatterGatherPatternBenchmark.*"

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    C = new int[size];
    D = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
      C[i] = i;
      D[i] = i;
    }
  }

  @Benchmark
  public int[] scatter_gather() {
    for (int i = 0; i < size; i++) {
      D[i] =
          C[i] + A[B[i]]; // “Gatherers”: fetch data elements using vector-index memory addressing.
    }
    return D;
  }
}
