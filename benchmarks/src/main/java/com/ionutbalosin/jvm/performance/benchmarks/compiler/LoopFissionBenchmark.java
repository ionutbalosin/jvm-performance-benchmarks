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
 * Loop fission breaks a larger loop body into smaller loops.
 * Benefits of loop fission:
 * - enable vectorization: if one loop is not vectorizable, splitting the loop into two loops, one of which is vectorizable and the other which is not can help the performance
 * - avoid register spilling: in case of large loops with many variables, loop distribution can be used to avoid register spilling
 * - better utilization of data locality (if by splitting one of the loops becomes also interchangeable)
 * This optimization is most efficient in multicore processors that can split a task into multiple tasks for each processor.
 *
 * Note: loop fission is the opposite of loop fusion. Although loop fusion is useful to reduce memory loads,
 * it can be counter-productive to have unrelated operations jammed together into a single loop nest.
 *
 * References:
 * - https://www.cs.cornell.edu/courses/cs6120/2019fa/blog/loops/
 * - https://events.prace-ri.eu/event/223/contributions/80/attachments/199/355/24-Leutgeb-Introduction_to_Vectorization.pdf
 * - https://johnysswlab.com/loop-optimizations-how-does-the-compiler-do-it
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopFissionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopFissionBenchmark.*"

  @Param({"262144"})
  private int size;

  private int[] A, B, C;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    C = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
      C[i] = i;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void initial_loop() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + C[i];
      B[i] = A[i] + C[i];
    }
  }

  /*
   * First loop: explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   * Second loop: enable vectorization since it does not have loop carried dependencies
   */
  @Benchmark
  public void manual_loop_fission() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + C[i];
    }

    for (int i = 1; i < size; i++) {
      B[i] = A[i] + C[i];
    }
  }
}
