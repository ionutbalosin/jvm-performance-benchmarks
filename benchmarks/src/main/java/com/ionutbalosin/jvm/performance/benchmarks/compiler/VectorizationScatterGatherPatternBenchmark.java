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
 * Gather-scatter is a type of memory addressing that often arises when addressing vectors in sparse linear algebra operations.
 * Vector processors (and some SIMD units in CPUs) have hardware support for gather-scatter operations, providing instructions
 * such as Load Vector Indexed for gather and Store Vector Indexed for scatter.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class VectorizationScatterGatherPatternBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VectorizationScatterGatherPatternBenchmark.*"

  @Param({"262144"})
  private int size;

  private int[] A, B, C, D;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    C = new int[size];
    D = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
      C[i] = i;
      D[i] = i;
    }
  }

  @Benchmark
  public int[] scatter_gather() {
    for (int i = 0; i < size; i++) {
      // gatherers fetch data elements using vector-index memory addressing
      D[i] = C[i] + A[B[i]];
    }
    return D;
  }
}
