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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * References:
 * - code examples by Nathan Tippy (Twitter: @NathanTippy)
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class BranchlessBitwiseBenchmark {

  // $ java -jar */*/benchmarks.jar ".*BranchlessBitwiseBenchmark.*"

  private final Random random = new Random(16384);

  private int param, a, b;

  @Setup
  public void setup() {
    param = random.nextInt(32);
    a = param - 1;
    b = param + 1;
  }

  @Benchmark
  public int x_equals_y_return_a_else_b() {
    int x = param, y = param;
    return xEqualsYReturnAElseB(x, y, a, b);
  }

  @Benchmark
  public int x_equals_y_return_a_else_b_baseline() {
    int x = param, y = param;
    return xEqualsYReturnAElseBBaseline(x, y, a, b);
  }

  @Benchmark
  public int a_less_than_zero_return_b_else_a() {
    return aLessThanZeroReturnBElseA(a, b);
  }

  @Benchmark
  public int a_less_than_zero_return_b_else_a_baseline() {
    return aLessThanZeroReturnBElseABaseline(a, b);
  }

  // return x == y ? a : b
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int xEqualsYReturnAElseB(int x, int y, int a, int b) {
    int tmp = ((x - y) - 1) >> 31;

    int mask = (((x - y) >> 31) ^ tmp) & tmp;

    return (a & mask) | (b & (~mask));
  }

  // return x == y ? a : b
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int xEqualsYReturnAElseBBaseline(int x, int y, int a, int b) {
    if (x == y) {
      return a;
    } else {
      return b;
    }
  }

  // return a < 0 ? b : a;
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int aLessThanZeroReturnBElseA(int a, int b) {
    int mask = a >> 31;

    return (b & mask) | ((~mask) & a);
  }

  // return a < 0 ? b : a;
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int aLessThanZeroReturnBElseABaseline(int a, int b) {
    if (a < 0) {
      return b;
    } else {
      return a;
    }
  }
}
