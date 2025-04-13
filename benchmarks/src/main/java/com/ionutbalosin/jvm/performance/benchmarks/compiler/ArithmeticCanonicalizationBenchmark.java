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
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark checks whether the compiler performs arithmetic canonicalization, a process that
 * involves transforming arithmetic expressions into a canonical form. This transformation includes
 * restructuring expressions to a common, simplified form. Canonical forms are easier to analyze and
 * optimize, potentially leading to better code generation and improved performance.
 *
 * Note: While replacing multiple operations with one, the canonicalized expression might even be
 * more expensive than one of the original operations.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ArithmeticCanonicalizationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ArithmeticCanonicalizationBenchmark.*"

  @Param({"true"})
  private boolean isHeavy;

  // a big prime number
  @Param({"179426549"})
  private long value;

  @Benchmark
  public long shift() {
    return doShift();
  }

  @Benchmark
  public long add() {
    return doAdd();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doAdd() {
    long val = this.value;
    return isHeavy
        ? val + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val
        // i.e., 64 additions
        : val;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doShift() {
    long val = this.value;
    return isHeavy ? val << 6 : val;
  }
}
