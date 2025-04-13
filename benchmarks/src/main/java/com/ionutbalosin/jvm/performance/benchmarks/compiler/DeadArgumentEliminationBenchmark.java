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

import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark assesses the removal of arguments that are directly dead, as well as arguments
 * that are passed into function calls as dead arguments of other functions.
 *
 * The inliner plays a fundamental role as it aids in the identification of whether the arguments
 * passed to the inlined function are utilized within the function's body or not.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class DeadArgumentEliminationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DeadArgumentEliminationBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof gc

  private final Random random = new Random(16384);
  private final int DEPTH = 8;

  private int defaultValue;

  @Setup
  public void setup() {
    defaultValue = random.nextInt(64);
  }

  @Benchmark
  public int recursive_method_calls() {
    // Allocate 'dead argument' objects
    final Object obj1 = new Object();
    final Object obj2 = new Object();
    final Object obj3 = new Object();
    final Object obj4 = new Object();
    final Object obj5 = new Object();
    final Object obj6 = new Object();
    final Object obj7 = new Object();
    final Object obj8 = new Object();

    // Only the defaultValue will 'survive'
    return recursiveMethod(DEPTH, defaultValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }

  @Benchmark
  public int chain_method_calls() {
    final Object obj1 = new Object();
    final Object obj2 = new Object();
    final Object obj3 = new Object();
    final Object obj4 = new Object();
    final Object obj5 = new Object();
    final Object obj6 = new Object();
    final Object obj7 = new Object();
    final Object obj8 = new Object();

    return chainMethod8(defaultValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }

  @Benchmark
  public int chain_method_calls_after_sink() {
    final Object obj1 = new Object();
    final Object obj2 = new Object();
    final Object obj3 = new Object();
    final Object obj4 = new Object();
    final Object obj5 = new Object();
    final Object obj6 = new Object();
    final Object obj7 = new Object();
    final Object obj8 = new Object();

    sink();

    return chainMethod8(defaultValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }

  private int recursiveMethod(
      int depth,
      int aValue,
      Object obj1,
      Object obj2,
      Object obj3,
      Object obj4,
      Object obj5,
      Object obj6,
      Object obj7,
      Object obj8) {
    if (depth == 0) {
      return aValue;
    }
    return recursiveMethod(depth - 1, aValue, obj1, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }

  private int chainMethod8(
      int aValue,
      Object obj1,
      Object obj2,
      Object obj3,
      Object obj4,
      Object obj5,
      Object obj6,
      Object obj7,
      Object obj8) {
    return chainMethod7(aValue, obj2, obj3, obj4, obj5, obj6, obj7, obj8);
  }

  private int chainMethod7(
      int aValue,
      Object obj1,
      Object obj2,
      Object obj3,
      Object obj4,
      Object obj5,
      Object obj6,
      Object obj7) {
    return chainMethod6(aValue, obj2, obj3, obj4, obj5, obj6, obj7);
  }

  private int chainMethod6(
      int aValue, Object obj1, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
    return chainMethod5(aValue, obj2, obj3, obj4, obj5, obj6);
  }

  private int chainMethod5(
      int aValue, Object obj1, Object obj2, Object obj3, Object obj4, Object obj5) {
    return chainMethod4(aValue, obj2, obj3, obj4, obj5);
  }

  private int chainMethod4(int aValue, Object obj1, Object obj2, Object obj3, Object obj4) {
    return chainMethod3(aValue, obj2, obj3, obj4);
  }

  private int chainMethod3(int aValue, Object obj1, Object obj2, Object obj3) {
    return chainMethod2(aValue, obj2, obj3);
  }

  private int chainMethod2(int aValue, Object obj1, Object obj2) {
    return chainMethod1(aValue, obj2);
  }

  private int chainMethod1(int aValue, Object obj1) {
    return aValue;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink() {
    // Intentionally empty method
  }
}
