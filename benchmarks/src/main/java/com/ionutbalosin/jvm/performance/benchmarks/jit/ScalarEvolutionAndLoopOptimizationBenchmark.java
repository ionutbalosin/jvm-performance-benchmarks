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
 * Check if the Compiler can recognize the existence of the induction variables and to replace it with simpler computations.
 * This optimization is a special case of strength reduction where all loop iterations are strengthened to a mathematical formula.
 *
 * Resources:
 * - see https://llvm.org/devmtg/2009-10/ScalarEvolutionAndLoopOptimization.pdf
 */
//  Pattern:
//
//    method() {
//        sum = 0;
//        for (i = 0; i < size; i++) {
//            sum += i;
//        }
//        return sum;
//    }
//
//    is equivalent to:
//
//    method() {
//        return [size * (size - 1)] / 2;
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Thread)
public class ScalarEvolutionAndLoopOptimizationBenchmark {

  @Param({"16384"})
  private int size;

  // java -jar benchmarks/target/benchmarks.jar ".*InductionVariableOptimizationBenchmark.*"

  @Benchmark
  public int sum_from_0_to_N() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      sum += i;
    }
    return sum;
  }

  // Scalar Evolution and loop optimization based on induction variable
  @Benchmark
  public int reduction_formula() {
    return ((size * (size + 1)) / 2);
  }
}
