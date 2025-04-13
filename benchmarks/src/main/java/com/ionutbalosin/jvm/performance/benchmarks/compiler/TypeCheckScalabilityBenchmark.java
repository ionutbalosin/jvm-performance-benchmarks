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

import java.util.Objects;
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
import org.openjdk.jmh.annotations.Threads;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark addresses the scalability issue happening while performing type checks (instanceof, checkcast, and similar) against interfaces (so-called secondary super types).
 * This scalability issue is triggered by massive concurrent updates to Klass::_secondary_super_cache from multiple threads, which in turn causes false sharing with its surrounding fields; e.g., Klass::_secondary_supers
 *
 * This JDK 17 snippet shows both fields and what they are used for:
 *   class Klass : public Metadata {
 *     // ...
 *     // Cache of last observed secondary supertype
 *     Klass* _secondary_super_cache;
 *     // Array of all secondary supertypes
 *     Array<Klass*>* _secondary_supers;
 *     // ...
 *   }
 *
 * References:
 * - code examples by Francesco Nigro (Twitter: @forked_franz)
 * - https://github.com/franz1981/java-puzzles/blob/main/src/main/java/red/hat/puzzles/polymorphism/RequireNonNullCheckcastScalability.java
 * - https://redhatperf.github.io/post/type-check-scalability-issue
 * - https://github.com/RedHatPerf/type-pollution-agent
 * - https://bugs.openjdk.org/browse/JDK-8180450
 * - https://github.com/openjdk/jdk/blob/master/src/hotspot/share/oops/klass.hpp#L138
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class TypeCheckScalabilityBenchmark {

  // $ java -jar */*/benchmarks.jar ".*TypeCheckScalabilityBenchmark.*"

  private Context msg;

  @Param({"false", "true"})
  public boolean typePollution;

  @Setup
  public void setup(Blackhole blackhole) {
    if (typePollution) {
      msg = new NonDuplicatedContext();
      for (int i = 0; i < 11_000; i++) {
        blackhole.consume(isDuplicated(msg));
      }
      // deopt on warmup
    }
    msg = new DuplicatedContext();
  }

  @Benchmark
  @Threads(1)
  public boolean is_duplicated_1() {
    return isDuplicated(msg);
  }

  @Benchmark
  @Threads(2)
  public boolean is_duplicated_2() {
    return isDuplicated(msg);
  }

  @Benchmark
  @Threads(3)
  public boolean is_duplicated_3() {
    return isDuplicated(msg);
  }

  @Benchmark
  @Threads(4)
  public boolean is_duplicated_4() {
    return isDuplicated(msg);
  }

  // How to fix it? Replace it with:
  // return Objects.requireNonNull((InternalContext) message).isDuplicated();
  private static boolean isDuplicated(Context message) {
    Context actual = Objects.requireNonNull(message);
    return ((InternalContext) actual).isDuplicated();
  }

  public interface Context {
    // some public API
  }

  public interface InternalContext extends Context {
    // internal framework API
    boolean isDuplicated();
  }

  public static class DuplicatedContext implements InternalContext {
    @Override
    public boolean isDuplicated() {
      return true;
    }
  }

  public static class NonDuplicatedContext implements InternalContext {
    @Override
    public boolean isDuplicated() {
      return false;
    }
  }
}
