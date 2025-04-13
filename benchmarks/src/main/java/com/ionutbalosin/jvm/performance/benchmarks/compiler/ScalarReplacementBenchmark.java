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
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Compiler analyses the scope of a new object and decides whether it might be allocated or not on the heap.
 * The method is called Escape Analysis (EA), which identifies if the newly created object is escaping or not into the heap.
 *
 * To not be confused, EA is not an optimization but rather an analysis phase for the optimizer.
 *
 * There are few escape states:
 * - `NoEscape` - The object does not escape the method or thread, and it is not passed to a call.
 * - `ArgEscape` - The object does not escape the method or thread, but it is passed as an argument to a call or referenced by an argument,
 * and it does not escape during the call.
 * - `GlobalEscape` - The object can escape the method or the thread, which means that such an object is visible outside the method or thread.
 *
 * For NoEscape objects, the Compiler can remap accesses to the object fields to accesses to synthetic local operands:
 * which leads to so-called Scalar Replacement optimization.
 *
 * References: - https://shipilev.net/jvm/anatomy-quarks/18-scalar-replacement/
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ScalarReplacementBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ScalarReplacementBenchmark.*"

  @Param({"3"})
  private int value;

  @Param({"128"})
  private int size;

  @Param(value = {"false"})
  private boolean objectEscapes;

  private final HeavyWrapper CACHED_WRAPPER = new HeavyWrapper(value, size);

  @Benchmark
  public int no_escape() {
    LightWrapper w = new LightWrapper(value);
    return w.f1 + w.f2;
  }

  // @Benchmark
  public int no_escape_baseline() {
    return value + (value << 1);
  }

  @Benchmark
  public int no_escape_array_obj() {
    HeavyWrapper w = new HeavyWrapper(value, size);
    return w.f1 + w.f2 + w.z.length;
  }

  // @Benchmark
  public int no_escape_array_obj_baseline() {
    return value + (value << 1) + size;
  }

  @Benchmark
  public HeavyWrapper branch_escape_obj() {
    HeavyWrapper wrapper = new HeavyWrapper(value, size);
    HeavyWrapper result;

    // wrapper is NoEscape, because "objectEscapes" is always false, hence branch is never executed
    if (objectEscapes) {
      result = wrapper;
    } else {
      result = CACHED_WRAPPER;
    }

    return result;
  }

  @Benchmark
  public boolean arg_escape_obj() {
    HeavyWrapper wrapper1 = new HeavyWrapper(value, size);
    HeavyWrapper wrapper2 = new HeavyWrapper(value, size);
    boolean match = false;

    // wrapper1 is NoEscape
    // wrapper2 is:
    //  - NoEscape if inlining of equals() succeeds
    //  - ArgEscape if inlining fails or disabled
    if (wrapper1.equals(wrapper2)) match = true;

    return match;
  }

  private static class HeavyWrapper {
    public int f1;
    public int f2;
    public byte[] z;

    public HeavyWrapper(int value, int size) {
      f1 = value;
      f2 = value << 1;
      z = new byte[size];
    }

    @Override
    public boolean equals(Object o) {
      HeavyWrapper that = (HeavyWrapper) o;
      return (f1 == that.f1) && (f2 == that.f2);
    }
  }

  private static class LightWrapper {
    public int f1;
    public int f2;

    public LightWrapper(int value) {
      f1 = value;
      f2 = value << 1;
    }
  }
}
