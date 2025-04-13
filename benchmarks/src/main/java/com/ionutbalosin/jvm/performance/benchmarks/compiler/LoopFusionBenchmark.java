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
 * The benchmark assesses if the compiler triggers loop fusion, an optimization aimed to merge the adjacent loops into one loop to reduce the loop overhead and improve run-time performance.
 * Benefits of loop fusion:
 * - reduce loop overhead
 * - improve locality by combining loops that reference the same array
 * - reuse the operands in the registers while executing the statements of the second loop
 *
 * To eliminate the effect of vectorization, there is an explicit Read-after-write (RAW) case and a data dependency between loop statements.
 *
 * References:
 *  - http://www.sridhargopinath.in/wp-content/uploads/2018/11/Loop-Fusion-in-LLVM-Compiler.pdf
 *  - http://sridhargopinath.in/files/loop-fusion.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopFusionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopFusionBenchmark.*"

  @Param({"262144"})
  private int size;

  private int[] A, B;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void initial_loops() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
    }

    for (int i = 1; i < size; i++) {
      B[i] = B[i - 1] + A[i];
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   * RAW: the loop cannot be vectorized safely because same variable is written to in more than 1 iteration.
   */
  @Benchmark
  public void manual_loops_fusion() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
      B[i] = B[i - 1] + A[i];
    }
  }
}
