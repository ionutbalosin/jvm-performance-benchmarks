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

import static com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.RInterface.itf_static;

import java.util.concurrent.TimeUnit;
import java.util.function.Function;
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
 * Recursive method calls benchmark where inlining heuristics play a fundamental role.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RecursiveMethodCallBenchmark {

  // $ java -jar */*/benchmarks.jar ".*RecursiveMethodCallBenchmark.*"

  private static final Object OBJECT = new Object();

  private RInterface itf;
  private Wrapper wrapper;

  @Param({"256"})
  int depth;

  @Setup
  public void setup() {
    wrapper = new Wrapper(depth);
    itf = new RInterface() {};
  }

  @Benchmark
  public Object interface_non_static_method() {
    return itf.itf_non_static(depth);
  }

  @Benchmark
  public Object interface_static_method() {
    return itf_static(depth);
  }

  @Benchmark
  public Object class_non_static_method() {
    return cls_non_static(depth);
  }

  @Benchmark
  public Object class_static_method() {
    return cls_static(depth);
  }

  @Benchmark
  public Object lambda_non_static() {
    return LAMBDA_NON_STATIC.apply(wrapper);
  }

  @Benchmark
  public Object lambda_static() {
    return LAMBDA_STATIC.apply(wrapper);
  }

  private Object cls_non_static(int depth) {
    if (depth == 0) {
      return OBJECT;
    }
    return cls_non_static(depth - 1);
  }

  private static Object cls_static(int depth) {
    if (depth == 0) {
      return OBJECT;
    }
    return cls_static(depth - 1);
  }

  interface RInterface {

    default Object itf_non_static(int depth) {
      if (depth == 0) {
        return OBJECT;
      }
      return itf_non_static(depth - 1);
    }

    static Object itf_static(int depth) {
      if (depth == 0) {
        return OBJECT;
      }
      return itf_static(depth - 1);
    }
  }

  private final Function<Wrapper, Object> LAMBDA_NON_STATIC =
      (wrapper) -> {
        if (wrapper.depth == 0) {
          return OBJECT;
        }
        return this.LAMBDA_NON_STATIC.apply(wrapper.decrementAndGet());
      };

  private static final Function<Wrapper, Object> LAMBDA_STATIC =
      (wrapper) -> {
        if (wrapper.depth == 0) {
          return OBJECT;
        }
        return RecursiveMethodCallBenchmark.LAMBDA_STATIC.apply(wrapper.decrementAndGet());
      };

  private static class Wrapper {
    private int depth;

    public Wrapper(int depth) {
      this.depth = depth;
    }

    public Wrapper decrementAndGet() {
      this.depth = this.depth - 1;
      return this;
    }
  }
}
