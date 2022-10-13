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
 * Loop interchange is the process of exchanging the order of two iteration variables used by a nested loop.
 * The variable used in the inner loop switches to the outer loop, and vice versa. It is often done to ensure
 * that the elements of a multi-dimensional array are accessed in the order in which they are present in memory,
 * improving locality of reference.
 */

//  Pattern:
//
//    method() {
//      for i from 0 to N-1
//          for j from 0 to N-1
//              a[i,j] = i * j
//      }
//
//    is equivalent to:
//
//    method() {
//      for j from 0 to N-1
//          for i from 0 to N-1
//              a[i,j] = i * j
//      }
//    }
//
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopInterchangeBenchmark {

  @Param({"512"})
  private int
      size; // (size is very large, e.g. 2048 bytes, in comparison to the cache line size, e.g. 64
  // bytes)

  private int[][] A;

  // java -jar benchmarks/target/benchmarks.jar ".*LoopInterchangeBenchmark.*"
  // java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -jar
  // benchmarks/target/benchmarks.jar ".*LoopInterchangeBenchmark.*"

  @Setup
  public void setup() {
    A = new int[size][size];
  }

  @Benchmark
  public int[][] loop() {
    int[][] lA = A;
    int length = size;
    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length; j++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }

  @Benchmark
  public int[][] manual_interchange() {
    int[][] lA = A;
    int length = size;
    for (int j = 0; j < length; j++) {
      for (int i = 0; i < length; i++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }
}
