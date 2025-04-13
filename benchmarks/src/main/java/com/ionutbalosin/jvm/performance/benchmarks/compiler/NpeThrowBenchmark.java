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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how the Compiler deals with implicit versus explicit null pointer exception while accessing the elements of an array list.
 * The values inside the array are generated, as follows:
 * - all are different from null, hence none throws NPE
 * - all of them are null, hence all throw NPE
 * - only a part of them are null, hence only a part of them throw NPE
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NpeThrowBenchmark {

  // $ java -jar */*/benchmarks.jar ".*NpeThrowBenchmark.*"

  @Param({"1024"})
  private int size;

  @Param({"0.0", "0.5", "1.0"})
  private double threshold;

  private Wrapper[] A;

  @Setup
  public void setup() {
    A = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      if (Math.random() < threshold) {
        A[i] = null;
      } else {
        A[i] = new Wrapper();
      }
    }
  }

  @Benchmark
  public void implicit_throw_npe() {
    for (Wrapper object : A) {
      try {
        implicitThrowNpe(object);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @Benchmark
  public void explicit_throw_npe() {
    for (Wrapper o : A) {
      try {
        explicitThrowNpe(o);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int explicitThrowNpe(Wrapper o) {
    if (o == null) {
      throw new NullPointerException("Oops!");
    }
    return o.x;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int implicitThrowNpe(Wrapper o) {
    return o.x;
  }

  private static class Wrapper {
    public int x;
  }
}
