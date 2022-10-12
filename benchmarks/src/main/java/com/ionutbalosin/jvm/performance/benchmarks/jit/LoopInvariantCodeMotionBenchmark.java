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
 * Test how Compiler deals with loop invariant code motion, in essence how it is able to move the invariant code before and after a loop.
 * Hoisting and sinking are terms that Compiler refers to moving operations outside loops:
 *      - hoisting a load means to move the load so that it occurs before the loop
 *      - sinking a store means to move a store to occur after a loop
 *
 * Resources:
 * - see https://courses.cs.washington.edu/courses/cse501/03wi/slides/slides.01-30.pdf
 * - see https://mathworld.wolfram.com/TrigonometricAdditionFormulas.html
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
@Fork(value = 3)
@State(Scope.Thread)
public class LoopInvariantCodeMotionBenchmark {

  @Param({"16384"})
  public int iterations;

  @Param({"42"})
  public double value;

  // java -jar benchmarks/target/benchmarks.jar ".*LoopInvariantCodeMotionBenchmark.*"

  @Benchmark
  public double loop_with_invariant_code() {
    double v1, v2, sum = 0, finalResult = 0;
    for (int i = 1; i < iterations; i++) {
      v1 = Math.tan((i - 1) * value) + Math.tan(value);
      v2 = 1 - Math.tan((i - 1) * value) * Math.tan(value);
      sum += v1 / v2;
      finalResult = Math.tan(Math.atan(sum));
    }
    return finalResult;
  }

  @Benchmark
  public double manual_hoisting_and_sinking() {
    double v1, v2, sum = 0, finalResult = 0;
    double tan = Math.tan(value); // manual hoisting
    for (int i = 1; i < iterations; i++) {
      double v =
          Math.tan((i - 1) * value); // manual common subexpression elimination (loop dependent)
      v1 = v + tan;
      v2 = 1 - v * tan;
      sum += v1 / v2;
    }
    finalResult = Math.tan(Math.atan(sum)); // manual sinking
    return finalResult;
  }
}
