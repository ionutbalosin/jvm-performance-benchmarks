/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
 * A strength reduction is a compiler optimization where expensive operations are replaced with equivalent but less expensive operations.
 * This benchmark tests how well the Compiler strengthens some arithmetic operations, as for example multiple additions, a multiplication in comparison to a bitwise shift operation.
 *
 * References:
 * - https://en.wikipedia.org/wiki/Strength_reduction
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StrengthReductionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StrengthReductionBenchmark.*"

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

  @Benchmark
  public long multiply() {
    return doMultiply();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doMultiply() {
    long val = this.value;
    return isHeavy ? val * 64 : val;
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
