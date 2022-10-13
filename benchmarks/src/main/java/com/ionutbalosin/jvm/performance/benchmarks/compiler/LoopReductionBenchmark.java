package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * Loop reduction (or loop reduce) benchmark tests if a loop could be reduced by the number of additions within that loop.
 * This optimization is based on the induction variable to strength the additions.
 *
 * Resources:
 * - see https://www.javatpoint.com/loop-optimization
 */

//  Pattern:
//
//    method(accumulator) {
//        for (int i = 0; i < iterations; ++i) {
//            accumulator++;
//        }
//        return accumulator;
//    }
//
//    is equivalent to:
//
//    method(iterations, accumulator) {
//        return accumulator + iterations;
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class LoopReductionBenchmark {

  @Param({"1048576"})
  private int iterations;

  @Param({"128"})
  private int offset;

  // java -jar benchmarks/target/benchmarks.jar ".*LoopReductionBenchmark.*"

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int doAuto(final int iterations, int accumulator) {
    for (int i = 0; i < iterations; ++i) {
      accumulator++;
    }
    return accumulator;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int baseline(final int iterations, int accumulator) {
    if (iterations > 0) {
      return accumulator + iterations;
    } else {
      return accumulator;
    }
  }

  @Benchmark
  public void loop_reduction() {
    doAuto(iterations, offset);
  }

  @Benchmark
  public void baseline() {
    baseline(iterations, offset);
  }
}
