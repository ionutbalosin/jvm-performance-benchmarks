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
 *
 * References:
 * - originally provided by Nathan Tippy (@NathanTippy)
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class BranchlessBenchmark {

  @Param({"42"})
  public int param;

  @Param({"98"})
  public int A;

  @Param({"99"})
  public int B;

  @Benchmark
  public int x_equals_y_return_a_else_b() {
    return xEqualsYReturnAElseB(param, param, A, B);
  }

  @Benchmark
  public int x_equals_y_return_a_else_b_baseline() {
    return xEqualsYReturnAElseBBaseline(param, param, A, B);
  }

  @Benchmark
  public int a_less_than_zero_return_b_else_a() {
    return aLessThanZeroReturnBElseA(A, B);
  }

  @Benchmark
  public int a_less_than_zero_return_b_else_a_baseline() {
    return aLessThanZeroReturnBElseABaseline(A, B);
  }

  // return x == y ? a : b
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int xEqualsYReturnAElseB(int x, int y, int a, int b) {
    int tmp = ((x - y) - 1) >> 31;

    int mask = (((x - y) >> 31) ^ tmp) & tmp;

    return (a & mask) | (b & (~mask));
  }

  // return x == y ? a : b
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int xEqualsYReturnAElseBBaseline(int x, int y, int a, int b) {
    if (x == y) {
      return a;
    } else {
      return b;
    }
  }

  // return a < 0 ? b : a;
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int aLessThanZeroReturnBElseA(int a, int b) {
    int mask = a >> 31;

    return (b & mask) | ((~mask) & a);
  }

  // return a < 0 ? b : a;
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int aLessThanZeroReturnBElseABaseline(int a, int b) {
    if (a < 0) {
      return b;
    } else {
      return a;
    }
  }
}
