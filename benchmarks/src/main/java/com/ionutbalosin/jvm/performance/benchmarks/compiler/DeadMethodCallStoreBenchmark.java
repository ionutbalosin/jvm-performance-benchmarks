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
 * Dead Store Elimination (DSE) intends to remove all the assignments of a variable that are not read by any subsequent instructions.
 */
/*
 * References:
 * - https://en.wikipedia.org/wiki/Leibniz_formula_for_%CF%80
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DeadMethodCallStoreBenchmark {

  @Param({"42"})
  private double circleRadius;

  // java -jar benchmarks/target/benchmarks.jar ".*DeadMethodCallStoreBenchmark.*"

  @Benchmark
  public double method_call_dse() {
    double pi;
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    pi = computePi();
    return circleRadius * circleRadius * pi;
  }

  @Benchmark
  public double method_call_baseline() {
    double pi = computePi();
    return circleRadius * circleRadius * pi;
  }

  // Leibniz formula for π
  // Pi / 4 = 1 - (1/3) + (1/5) - (1/7) + (1/9) - (1/11) + ...
  // Math.Pi = 3.14159265358979323846
  private static double computePi() {
    double pi = 4;
    boolean sign = false;

    for (int i = 3; i < 1_000; i += 2) {
      if (sign) {
        pi += 4.0 / i;
      } else {
        pi -= 4.0 / i;
      }
      sign = !sign;
    }

    return pi;
  }
}
