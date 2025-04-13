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
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark assesses the removal of dead loops, which refers to loops with non-infinite
 * computable trip counts that have no side effects or volatile instructions, and do not (directly)
 * contribute to the computation of the function’s return value.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class DeadLoopEliminationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DeadLoopEliminationBenchmark.*"

  private final Random random = new Random(16384);
  private final int DEAD_LOOP_LIMIT = 20_000;

  private int defaultValue;

  @Param(value = {"false"})
  private boolean useLoopResult;

  @Setup
  public void setup() {
    defaultValue = random.nextInt(64);
  }

  @Benchmark
  public int baseline() {
    return defaultValue << 1;
  }

  @Benchmark
  public int dead_loop() {
    int result = defaultValue << 1;

    int i = 0, dummy = 0;
    for (; i < DEAD_LOOP_LIMIT; i++) {
      dummy = Math.max(dummy + i, i);
    }

    return result;
  }

  @Benchmark
  public int conditional_dead_loop() {
    int result = defaultValue << 1;

    int i = 0, dummy = 0;
    for (; i < DEAD_LOOP_LIMIT; i++) {
      dummy = Math.max(dummy + i, i);
    }

    // because "useLoopResult" is always false, this branch is never taken
    if (useLoopResult) {
      result += dummy;
    }

    return result;
  }
}
