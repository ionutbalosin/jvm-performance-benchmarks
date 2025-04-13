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
 * This pass transforms loops that contain branches on loop-invariant conditions to have multiple loops.
 * The transformation is called loop unswitching, because there is a different loop version for each value of the loop-invariant condition.
 * Note: the size of the code can grow exponentially with the number of unswitched variables, therefore compilers might tend to omit it.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopUnswitchBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopUnswitchBenchmark.*"

  @Param({"64"})
  private int magicNumber;

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
   *
   * Read-after-write: the loop cannot be vectorized safely because if the first two iterations are executed simultaneously (e.g., A[1]=A[0]+1; A[2]=A[1]+1)
   * by a SIMD instruction, the value of A[1] may be used by the second iteration before it has been calculated by the first iteration which could lead to incorrect results.
   */
  @Benchmark
  public void initial_loop() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + 1;
      // potential auto-vectorization obstacle
      if (licmPredicate()) {
        B[i] = B[i - 1] + 1;
      }
      C[i] = C[i - 1] + 1;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void manual_loop_unswitch() {
    if (licmPredicate()) {
      for (int i = 1; i < size; i++) {
        A[i] = A[i - 1] + 1;
        B[i] = B[i - 1] + 1;
        C[i] = C[i - 1] + 1;
      }
    } else {
      for (int i = 1; i < size; i++) {
        A[i] = A[i - 1] + 1;
        C[i] = C[i - 1] + 1;
      }
    }
  }

  // loop invariant code motion (licm) predicate that cannot be inlined
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private boolean licmPredicate() {
    int result = magicNumber & 0x2;
    return result == 0;
  }
}
