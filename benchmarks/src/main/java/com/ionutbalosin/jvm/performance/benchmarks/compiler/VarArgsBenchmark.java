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
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VarArgsBenchmark {

  @Param({"3"})
  private int param1;

  @Param({"5"})
  private int param2;

  @Param({"7"})
  private int param3;

  @Param({"9"})
  private int param4;

  @Param({"11"})
  private int param5;

  @Param({"13"})
  private int param6;

  @Param({"15"})
  private int param7;

  @Param({"17"})
  private int param8;

  @Param({"19"})
  private int param9;

  @Param({"21"})
  private int param10;

  @Benchmark
  public int explicit_1_param() {
    return explicit_1_param(param1);
  }

  @Benchmark
  public int explicit_2_params() {
    return explicit_2_params(param1, param2);
  }

  @Benchmark
  public int explicit_4_params() {
    return explicit_4_params(param1, param2, param3, param4);
  }

  @Benchmark
  public int explicit_6_params() {
    return explicit_6_params(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  public int explicit_8_params() {
    return explicit_8_params(param1, param2, param3, param4, param5, param6, param7, param8);
  }

  @Benchmark
  public int explicit_10_params() {
    return explicit_10_params(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  @Benchmark
  public int var_args_1_param() {
    return var_args(param1);
  }

  @Benchmark
  public int var_args_2_params() {
    return var_args(param1, param2);
  }

  @Benchmark
  public int var_args_4_params() {
    return var_args(param1, param2, param3, param4);
  }

  @Benchmark
  public int var_args_6_params() {
    return var_args(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  public int var_args_8_params() {
    return var_args(param1, param2, param3, param4, param5, param6, param7, param8);
  }

  @Benchmark
  public int var_args_10_params() {
    return var_args(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  private int explicit_1_param(int p1) {
    return p1;
  }

  private int explicit_2_params(int p1, int p2) {
    return p1 + p2;
  }

  private int explicit_4_params(int p1, int p2, int p3, int p4) {
    return p1 + p2 + p3 + p4;
  }

  private int explicit_6_params(int p1, int p2, int p3, int p4, int p5, int p6) {
    return p1 + p2 + p3 + p4 + p5 + p6;
  }

  private int explicit_8_params(int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8) {
    return p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8;
  }

  private int explicit_10_params(
      int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9, int p10) {
    return p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 + p10;
  }

  private int var_args(int... args) {
    int sum = 0;
    for (int i = 0; i < args.length; i++) sum += args[i];
    return sum;
  }
}
