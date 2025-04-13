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
 * Tests the conditional branch optimizations within a loop using:
 * - a predictable branch pattern
 * - an unpredictable branch pattern
 * - no branch at all
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class IfConditionalBranchBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IfConditionalBranchBenchmark.*"

  private final Random random = new Random(16384);
  private final int THRESHOLD = 4096;

  private int[] array;

  @Param({"16384"})
  private int size;

  @Setup
  public void setup() {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      // all values are within [0, threshold)
      array[i] = random.nextInt(THRESHOLD);
    }
  }

  @Benchmark
  public int no_if_branch() {
    int sum = 0;

    for (final int value : array) {
      sum += value;
    }

    return sum;
  }

  // all values are less than the THRESHOLD, therefore the condition is true and the branch is
  // always taken. This could be equivalent or very close to no_if_branch()
  @Benchmark
  public int predictable_if_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value < THRESHOLD) {
        sum += value;
      }
    }

    return sum;
  }

  // some values are bigger and some are smaller than THRESHOLD / 2, making this condition
  // unpredictable
  @Benchmark
  public int unpredictable_if_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value <= (THRESHOLD / 2)) {
        sum += value;
      }
    }

    return sum;
  }
}
