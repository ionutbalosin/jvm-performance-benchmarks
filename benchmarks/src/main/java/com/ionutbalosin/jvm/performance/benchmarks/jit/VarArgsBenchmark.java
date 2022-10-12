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
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class VarArgsBenchmark {

  @Param({"3"})
  int param1;

  @Param({"5"})
  int param2;

  @Param({"7"})
  int param3;

  @Param({"9"})
  int param4;

  @Param({"11"})
  int param5;

  @Param({"13"})
  int param6;

  @Param({"15"})
  int param7;

  @Param({"17"})
  int param8;

  @Param({"19"})
  int param9;

  @Param({"21"})
  int param10;

  // java -jar benchmarks/target/benchmarks.jar ".*VarArgsBenchmark*"

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
