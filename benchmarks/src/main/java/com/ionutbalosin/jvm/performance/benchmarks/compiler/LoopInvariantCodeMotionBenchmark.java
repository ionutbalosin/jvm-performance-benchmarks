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

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how the compiler handles loop invariant code motion, examining its ability to move method
 * calls that are loop-invariant both before and after the loop, as well as to perform common
 * subexpression elimination within the loop.
 *
 * Hoisting and sinking are terms that Compiler refers to moving operations outside loops:
 * - hoisting a load means to move the load so that it occurs before the loop
 * - sinking a store means to move a store to occur after a loop
 *
 * References:
 * - https://courses.cs.washington.edu/courses/cse501/03wi/slides/slides.01-30.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Thread)
public class LoopInvariantCodeMotionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoopInvariantCodeMotionBenchmark.*"

  @Param({"32768"})
  private int iterations;

  private volatile long value = System.nanoTime();

  @Benchmark
  public double initial_loop() {
    double sum = 0, result = 0;
    long value = this.value;
    int iterations = this.iterations;

    for (int i = 1; i < iterations; i++) {
      double aux1 = foo((i - 1) * value) + foo(value);
      double aux2 = 1 - foo((i - 1) * value) * foo(value);

      sum += aux1 / aux2;
      result = foo(sum);
    }

    return result;
  }

  @Benchmark
  public double manual_cse() {
    double sum = 0, result = 0;
    long value = this.value;
    int iterations = this.iterations;

    for (int i = 1; i < iterations; i++) {
      // common subexpressions elimination
      double constFoo = foo(value);
      double varFoo = foo((i - 1) * value);

      double aux1 = varFoo + constFoo;
      double aux2 = 1 - varFoo * constFoo;

      sum += aux1 / aux2;
      result = foo(sum);
    }

    return result;
  }

  @Benchmark
  public double manual_hoist_and_sink() {
    double sum = 0, result;
    long value = this.value;
    int iterations = this.iterations;

    // manual hoisting (i.e., loop independent)
    double constFoo = foo(value);

    for (int i = 1; i < iterations; i++) {
      double aux1 = foo((i - 1) * value) + constFoo;
      double aux2 = 1 - foo((i - 1) * value) * constFoo;

      sum += aux1 / aux2;
    }

    // manual sinking (i.e., loop independent)
    result = foo(sum);

    return result;
  }

  @Benchmark
  public double manual_hoist_and_sink_cse() {
    double sum = 0, result;
    long value = this.value;
    int iterations = this.iterations;

    // manual hoisting (i.e., loop independent)
    double constFoo = foo(value);

    for (int i = 1; i < iterations; i++) {
      // common subexpression elimination
      double varFoo = foo((i - 1) * value);

      double aux1 = varFoo + constFoo;
      double aux2 = 1 - varFoo * constFoo;

      sum += aux1 / aux2;
    }

    // manual sinking (i.e., loop independent)
    result = foo(sum);

    return result;
  }

  /*
   * Taylor series expansion for e^(-x^2)
   * Formula used: 1 - x^2/2! + x^4/4! - * x^6/6! + ... + x^2048/2048!
   */
  public static double foo(double value) {
    double result = 1.0;
    double term = 1.0;

    for (int n = 1; n < 2048; n++) {
      term *= -value * value / n;
      result += term;
    }

    return result;
  }
}
