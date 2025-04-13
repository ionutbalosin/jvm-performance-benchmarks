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

import java.util.Arrays;
import java.util.Random;
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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Iterates through an array of objects (containing either null and not null values) and compute the
 * sum of all elements using different comparison/filtering strategies.
 * Since the array elements might be null, some tests explicitly check for null others just uses the objects as is
 * but guard the code by try {} catch blocks (letting NullPointerException be thrown and catch).
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NpeControlFlowBenchmark {

  // $ java -jar */*/benchmarks.jar ".*NpeControlFlowBenchmark.*"

  private final Random random = new Random(16384);
  private final int THRESHOLD = 32;

  private Wrapper[] array;

  @Param({"262144"})
  private int size;

  @Param({"0", "16"})
  private int nullThreshold;

  @Setup
  public void setup() {
    array = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      int value = random.nextInt(THRESHOLD) + 1;
      if (value < nullThreshold) {
        array[i] = null;
      } else {
        array[i] = new Wrapper(i);
      }
    }
  }

  @Benchmark
  public int try_npe_catch() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      try {
        sum += array[i].x;
      } catch (NullPointerException ignored) {
        sink(ignored);
      }
    }
    return sum;
  }

  @Benchmark
  public int if_not_npe_do_statement() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] != null) {
        sum += array[i].x;
      }
    }
    return sum;
  }

  @Benchmark
  public int if_npe_continue() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] == null) {
        continue;
      }
      sum += array[i].x;
    }
    return sum;
  }

  @Benchmark
  public long stream_filter_npe() {
    return Arrays.stream(array)
        .filter(wrapper -> wrapper != null)
        .map(Wrapper::getX)
        .reduce(0, Integer::sum);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(final NullPointerException exception) {
    // Intentionally empty method
  }

  private static class Wrapper {
    private int x;

    public Wrapper(int x) {
      this.x = x;
    }

    public int getX() {
      return x;
    }
  }
}
