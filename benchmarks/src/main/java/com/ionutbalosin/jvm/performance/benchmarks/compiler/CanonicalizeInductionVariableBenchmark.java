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
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This transformation analyzes and transforms the induction variables (and computations derived from them) into
 * simpler forms suitable for subsequent analysis and transformation.
 * This optimization is a special case of strength reduction where all loop iterations are strengthened
 * to a mathematical formula.
 *
 * References:
 * - https://llvm.org/docs/Passes.html#indvars-canonicalize-induction-variables
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class CanonicalizeInductionVariableBenchmark {

  // $ java -jar */*/benchmarks.jar ".*CanonicalizeInductionVariableBenchmark.*"

  // Make sure the multiplication uses longs but not ints
  // Formula: reducedLength = sqrt(length) - start
  private final long length = 4202496L * 4202496L;
  private final long reducedLength = 4194304L;
  private final long start = 8192;

  @Benchmark
  public long canonicalize() {
    return auto_canonicalize(length);
  }

  @Benchmark
  public long baseline() {
    return baseline(reducedLength);
  }

  @Benchmark
  public long manual_canonicalize() {
    return (long) Math.sqrt(length) - start;
  }

  private long auto_canonicalize(final long iterations) {
    long result = 0;
    for (long l = start; l * l < iterations; ++l) {
      result++;
    }
    return result;
  }

  private long baseline(final long iterations) {
    long result;
    for (result = 0; result != iterations; ++result) {}
    return result;
  }
}
