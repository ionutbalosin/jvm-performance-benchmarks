/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
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
  private int param;

  @Param({"98"})
  private int A;

  @Param({"99"})
  private int B;

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
