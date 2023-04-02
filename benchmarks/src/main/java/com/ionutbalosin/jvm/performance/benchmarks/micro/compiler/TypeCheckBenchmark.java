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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark checks the performance of instanceof type check using multiple secondary super types (i.e., interfaces).
 *
 * The C2 compiler will always take the slow path and search through the secondary supers (i.e., an array of objects) for a type match.
 * The Graal compiler will invert the loop condition and take the fast path. It will then only check for a type check
 * with ManySecondarySuperTypes.
 *
 * References:
 * - code examples by Francesco Nigro (Twitter: @forked_franz)
 * - https://gist.github.com/franz1981/e46823dbaeb576c1a3344683b2319db8
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class TypeCheckBenchmark {

  // $ java -jar */*/benchmarks.jar ".*TypeCheckSlowPathBenchmark.*"

  private Object obj;

  @Setup
  public void setup() {
    obj = ManySecondarySuperTypes.Instance;
  }

  @Benchmark
  public boolean instanceof_type_check() {
    return closeNotAutoCloseable(obj);
  }

  public static boolean closeNotAutoCloseable(Object o) {
    // it searches through the secondary supers (i.e., an array of objects) for a type match
    // but does not find one since "o" is not an "AutoCloseable" type
    if (o instanceof AutoCloseable) {
      try {
        ((AutoCloseable) o).close();
        return true;
      } catch (Exception ignore) {
        return false;
      }
    } else {
      // it always takes this slow path
      return false;
    }
  }

  public interface A {}

  public interface B {}

  public interface C {}

  public interface D {}

  public interface E {}

  public interface F {}

  public interface G {}

  public interface H {}

  private enum ManySecondarySuperTypes implements A, B, C, D, E, F, G, H {
    Instance
  }
}
