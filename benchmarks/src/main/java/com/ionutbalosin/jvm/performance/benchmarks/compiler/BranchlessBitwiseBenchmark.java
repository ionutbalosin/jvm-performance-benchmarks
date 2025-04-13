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
