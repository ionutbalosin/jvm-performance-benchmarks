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
 * Test how Compiler deals with loop invariant code motion, in essence how it is able to move the invariant code before and after a loop.
 * Hoisting and sinking are terms that Compiler refers to moving operations outside loops:
 *      - hoisting a load means to move the load so that it occurs before the loop
 *      - sinking a store means to move a store to occur after a loop
 *
 * References:
 * - https://courses.cs.washington.edu/courses/cse501/03wi/slides/slides.01-30.pdf
 * - https://mathworld.wolfram.com/TrigonometricAdditionFormulas.html
 */

//    Sum of recurrent tan(nx) ;
//        tan(ix) = [Math.tan((i - 1) * x) + Math.tan(x)] / [1 - Math.tan((i - 1) * x) *
// Math.tan(x)]
//    where:
//         i = 1 ... n
//         x = represents the angle and is constant
//
//    method() {
//        for (int i = 1; i < iterations; i++) {
//            v1 = Math.tan((i - 1) * x) + Math.tan(x);
//            v2 = 1 - Math.tan((i - 1) * x) * Math.tan(x);
//            sum += v1 / v2;
//            result = Math.tan(Math.atan(sum));
//        }
//        return result;
//    }
//
// Current benchmark also exploits common subexpression elimination since Math.tan((i - 1) * x) is
// computed twice per loop cycle.
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopInvariantCodeMotionBenchmark {

  @Param({"16384"})
  private int iterations;

  @Param({"42"})
  private double value;

  @Benchmark
  public double loop_with_invariant_code() {
    double value1, value2, sum = 0, finalResult = 0;
    for (int i = 1; i < iterations; i++) {
      value1 = Math.tan((i - 1) * value) + Math.tan(value);
      value2 = 1 - Math.tan((i - 1) * value) * Math.tan(value);
      sum += value1 / value2;
      finalResult = Math.tan(Math.atan(sum));
    }
    return finalResult;
  }

  @Benchmark
  public double manual_hoisting_and_sinking() {
    double value1, value2, sum = 0, finalResult;
    // manual hoisting
    double tan = Math.tan(value);
    for (int i = 1; i < iterations; i++) {
      // manual common subexpression elimination (loop dependent)
      double v = Math.tan((i - 1) * value);
      value1 = v + tan;
      value2 = 1 - v * tan;
      sum += value1 / value2;
    }
    // manual sinking
    finalResult = Math.tan(Math.atan(sum));
    return finalResult;
  }
}
