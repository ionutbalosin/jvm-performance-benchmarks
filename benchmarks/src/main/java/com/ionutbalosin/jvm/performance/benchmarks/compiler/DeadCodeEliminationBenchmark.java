package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OperationsPerInvocation;
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
 * Test how well the Compiler could remove code which does not affect the program results within a loop.
 *
 * Resources:
 * - see https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80
 */

//  Pattern:
//
//    method() {
//        for (int i = 0; i < iterations; i++) {
//            // useless calls
//            value1 = call_to_method(param)   // 1st
//            value2 = call_to_method(value1); // 2nd
//            value3 = call_to_method(value2); // 3rd
//            // value1, value2 and value3 vanish here,
//            // they not used anymore within loop cycle
//            // ... do some real operations ...
//        }
//        // return result
//    }
//
//    where call_to_method() is:
//    - either a call to a native method (e.g. Math.tan, Math.atan)
//    - or a user-defined iterative function (e.g. Leibniz formula for PI computation using an
// infinite series).
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class DeadCodeEliminationBenchmark {

  @Param({"32768"})
  public int iterations;

  @Param({"42"})
  public double circleRadius;

  // java -jar benchmarks/target/benchmarks.jar ".*DeadCodeEliminationBenchmark.*"

  // Benchmark method containing multiple dead methods calls per iteration
  @Benchmark
  @OperationsPerInvocation(32768)
  public double dead_native_method_calls() {
    double sum = 0;
    for (int i = 0; i < iterations; i++) {
      // completely useless calls
      double d1 = Math.tan(Math.atan(circleRadius)); // 1st
      double d2 = Math.tan(Math.atan(d1)); // 2nd
      double d3 = Math.tan(Math.atan(d2)); // 3rd
      // real method call <- d3 vanishes here
      sum += 2 * circleRadius * Math.PI;
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public double dead_user_defined_method_calls() {
    double sum = 0;
    for (int i = 0; i < iterations; i++) {
      // completely useless calls
      double d1 = computePi(); // 1st
      double d2 = d1 + computePi(); // 2nd
      double d3 = d2 + computePi(); // 3rd
      // real method call <- d3 vanishes here
      sum += 2 * circleRadius * Math.PI;
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public double baseline() {
    double sum = 0;
    for (int i = 0; i < iterations; i++) {
      sum += 2 * circleRadius * Math.PI;
    }
    return sum;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private double computePi() {
    double Pi = 4;
    boolean sign = false;

    // Leibniz formula for π
    // Pi / 4 = 1 - (1/3) + (1/5) - (1/7) + (1/9) - (1/11) + ...
    // Math.Pi = 3.14159265358979323846

    for (int i = 3; i < 1000; i += 2) {
      if (sign) {
        Pi += 4.0 / i;
      } else {
        Pi -= 4.0 / i;
      }
      sign = !sign;
    }

    return Pi;
  }
}
