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
 * A tail-recursive function is a function where the last operation before the function returns is an invocation to the function itself.
 * Tail-recursive optimization avoids allocating a new stack frame by re-writing the method into a completely iterative fashion.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(
    value = 5,
    jvmArgsAppend = {"-Xss64M"})
@State(Scope.Benchmark)
public class TailRecursionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*TailRecursionBenchmark.*"

  @Param({"262144"})
  int n;

  private final int size = 1024;

  private int[] A;

  @Setup
  public void setup() {
    A = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
    }
  }

  @Benchmark
  public long tail_recursive() {
    return recursive(n, 0);
  }

  @Benchmark
  public long iterative() {
    return iterative(n, 0);
  }

  private long recursive(int n, long sum) {
    if (n == 0) {
      return sum;
    } else {
      return recursive(n - 1, sum + A[n % size]);
    }
  }

  private long iterative(int n, long sum) {
    while (true) {
      if (n == 0) {
        return sum;
      } else {
        sum += A[n % size];
        n--;
      }
    }
  }
}
