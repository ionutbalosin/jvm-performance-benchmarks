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
package com.ionutbalosin.jvm.performance.benchmarks;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark is used as a baseline (i.e., a preliminary check) to assess the infrastructure overhead for the code to measure.
 * Since no magical infrastructures are incurring no overhead, it is essential to know what default overheads might occur in our setup.
 * It measures the calls performance of empty methods (w/ and w/o explicit inlining) but also the performance of
 * returning an object versus consuming it via black holes. All of these mechanisms are used by the benchmark suite.
 *
 * This is particularly useful in case of a comparison between different types of JVMs, and it should be run
 * before any other real benchmark to check the default costs.
 *
 * Note: A comparison between different JVMs might not be further relevant unless, at least, the baseline is the same.
 *
 * References:
 * - https://github.com/openjdk/jmh/blob/master/jmh-samples/src/main/java/org/openjdk/jmh/samples/JMHSample_01_HelloWorld.java
 * - https://github.com/openjdk/jmh/blob/master/jmh-samples/src/main/java/org/openjdk/jmh/samples/JMHSample_16_CompilerControl.java
 * - https://shipilev.net/jvm/anatomy-quarks/27-compiler-blackholes
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class InfrastructureBaselineBenchmark {

  // $ java -jar */*/benchmarks.jar ".*InfrastructureBaselineBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof {Linux: perfnorm, Mac OS X: dtraceasm, Windows: xperfasm}

  /*
   * The performance of below methods should be the same:
   * - method_baseline()
   * - method_blank()
   * - method_inline()
   *
   * The cost of method_dont_inline() is slightly higher.
   */

  public Object object;

  @Benchmark
  public void method_baseline() {
    // this method was intentionally left blank
  }

  @Benchmark
  public void method_blank() {
    target_blank();
  }

  @Benchmark
  public void method_inline() {
    target_inline();
  }

  @Benchmark
  public void method_dont_inline() {
    target_dont_inline();
  }

  /*
   * The performance of below methods should be the same:
   * - obj_return()
   * - obj_blackhole_consume()
   *
   * The cost of obj_sink() is slightly higher.
   */

  @Benchmark
  public Object obj_return() {
    return object;
  }

  @Benchmark
  public void obj_blackhole_consume(Blackhole bh) {
    bh.consume(object);
  }

  @Benchmark
  public void obj_sink() {
    sink(object);
  }

  private void target_blank() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void target_dont_inline() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.INLINE)
  private void target_inline() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(Object object) {
    // this method was intentionally left blank
  }
}
