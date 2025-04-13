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
 * Loop interchange is the process of exchanging the order of two iteration variables used by a nested loop.
 * The variable used in the inner loop switches to the outer loop, and vice versa. It is often done to ensure
 * that the elements of a multi-dimensional array are accessed in the order in which they are present in memory,
 * improving locality of reference.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopInterchangeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopInterchangeBenchmark.*"

  // a larger size, e.g., 2048 bytes, in comparison to the cache line size, e.g., 64 bytes
  @Param({"2048"})
  private int size;

  private int[][] A;

  @Setup
  public void setup() {
    A = new int[size][size];
  }

  @Benchmark
  public int[][] initial_loop() {
    int[][] lA = A;
    int length = size;
    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length; j++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }

  @Benchmark
  public int[][] manual_loop_interchange() {
    int[][] lA = A;
    int length = size;
    for (int j = 0; j < length; j++) {
      for (int i = 0; i < length; i++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }
}
