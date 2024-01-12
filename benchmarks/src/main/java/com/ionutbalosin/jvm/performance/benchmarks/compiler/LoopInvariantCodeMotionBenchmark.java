/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2024 Ionut Balosin
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

import java.util.concurrent.ThreadLocalRandom;
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
 * Test how the compiler deals with loop invariant code motion, in essence how it is able to move the invariant code before and after a loop.
 * Hoisting and sinking are terms that Compiler refers to moving operations outside loops:
 * - hoisting a load means to move the load so that it occurs before the loop
 * - sinking a store means to move a store to occur after a loop
 *
 * References:
 * - https://courses.cs.washington.edu/courses/cse501/03wi/slides/slides.01-30.pdf
 * - https://mathworld.wolfram.com/TrigonometricAdditionFormulas.html
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopInvariantCodeMotionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopInvariantCodeMotionBenchmark.*"

  @Param({"16384"})
  private int iterations;

  private double value;

  @Setup
  public void setup() {
    value = ThreadLocalRandom.current().nextDouble(32);
  }

  @Benchmark
  public double initial_loop() {
    double aux1, aux2, sum = 0, result = 0;
    double value = this.value;
    int iterations = this.iterations;

    for (int i = 1; i < iterations; i++) {
      aux1 = Math.tan((i - 1) * value) + Math.tan(value);
      aux2 = 1 - Math.tan((i - 1) * value) * Math.tan(value);
      sum += aux1 / aux2;
      result = Math.tan(Math.atan(sum));
    }

    return result;
  }

  @Benchmark
  public double manual_loop_hoisting_and_sinking() {
    double aux1, aux2, sum = 0, result;
    double value = this.value;
    int iterations = this.iterations;

    // manual hoisting
    double tan = Math.tan(value);
    for (int i = 1; i < iterations; i++) {
      // manual common subexpression elimination (loop dependent)
      double v = Math.tan((i - 1) * value);
      aux1 = v + tan;
      aux2 = 1 - v * tan;
      sum += aux1 / aux2;
    }

    // manual sinking
    result = Math.tan(Math.atan(sum));

    return result;
  }
}
