/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * This benchmark tests the performance of calling Java methods with up to 10 parameters. It also checks the
 * performance of using varargs.
 *
 * When using explicit arguments, usually the callee is inlined and therefore add operations will take most of the benchmark.
 * If the callee is not inlined, then the first 5 arguments are passed through registers and the remaining will use the stack.
 * A static call is emitted to the accumulator method.
 *
 * Using varargs in Java will cause the caller to wrap the arguments in an array and pass the array to the callee.
 * If the callee is inlined, then the array allocation is removed.
 *
 * For some reason when using varargs and after a couple of warmup iterations, the JVM will trigger a recompilation
 * of the JMH stub and inline the @Benchmark method in it. Even though during warmup the callee in the benchmark
 * (the var_args method) was inlined and the array allocation removed, after recompilation this is no longer the case.
 * In order to circumvent this, I annotate the varargs @Benchmarks with @CompilerControl.Mode.DONT_INLINE.
 * This causes the JMH stub to emit an extra call to the actual @Benchmark method.
 * In order to have a fair comparison with the other scenarios, I annotate all the methods in this class
 * with @CompilerControl.Mode.DONT_INLINE.
 *
 * A simple check to see if the array allocation when using varargs is removed is to run the benchmark with -prof gc.
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VarArgsBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VarArgsBenchmark.*"

  private final Random random = new Random(16384);

  private int param1, param2, param3, param4, param5, param6, param7, param8, param9, param10;

  @Setup
  public void setup() {
    param1 = random.nextInt();
    param2 = random.nextInt();
    param3 = random.nextInt();
    param4 = random.nextInt();
    param5 = random.nextInt();
    param6 = random.nextInt();
    param7 = random.nextInt();
    param8 = random.nextInt();
    param9 = random.nextInt();
    param10 = random.nextInt();
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int explicit_2_params() {
    return explicit_2_params_accumulator(param1, param2);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int explicit_6_params() {
    return explicit_6_params_accumulator(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int explicit_10_params() {
    return explicit_10_params_accumulator(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_explicit_2_params() {
    return no_inline_explicit_2_params_accumulator(param1, param2);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_explicit_6_params() {
    return no_inline_explicit_6_params_accumulator(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_explicit_10_params() {
    return no_inline_explicit_10_params_accumulator(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int var_args_2_params() {
    return var_args(param1, param2);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int var_args_6_params() {
    return var_args(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int var_args_10_params() {
    return var_args(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_var_args_2_params() {
    return no_inline_var_args(param1, param2);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_var_args_6_params() {
    return no_inline_var_args(param1, param2, param3, param4, param5, param6);
  }

  @Benchmark
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int no_inline_var_args_10_params() {
    return no_inline_var_args(
        param1, param2, param3, param4, param5, param6, param7, param8, param9, param10);
  }

  private int explicit_2_params_accumulator(int p1, int p2) {
    return p1 + p2;
  }

  private int explicit_6_params_accumulator(int p1, int p2, int p3, int p4, int p5, int p6) {
    return p1 + p2 + p3 + p4 + p5 + p6;
  }

  private int explicit_10_params_accumulator(
      int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9, int p10) {
    return p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 + p10;
  }

  private int var_args(int... args) {
    int sum = 0;
    for (int i = 0; i < args.length; i++) sum += args[i];
    return sum;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int no_inline_explicit_2_params_accumulator(int p1, int p2) {
    return p1 + p2;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int no_inline_explicit_6_params_accumulator(
      int p1, int p2, int p3, int p4, int p5, int p6) {
    return p1 + p2 + p3 + p4 + p5 + p6;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int no_inline_explicit_10_params_accumulator(
      int p1, int p2, int p3, int p4, int p5, int p6, int p7, int p8, int p9, int p10) {
    return p1 + p2 + p3 + p4 + p5 + p6 + p7 + p8 + p9 + p10;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int no_inline_var_args(int... args) {
    int sum = 0;
    for (int i = 0; i < args.length; i++) sum += args[i];
    return sum;
  }
}
