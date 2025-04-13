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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark checks the performance of instanceof type check using multiple secondary super types (i.e., interfaces), none being an AutoCloseable type.
 *
 * The C2 compiler will always take the slow path and search through the secondary supers (i.e., an array of objects) for a type match.
 * The Graal compiler will invert the loop condition and take the fast path. It will then only check for a type check
 * with ManySecondarySuperTypes.
 *
 * References:
 * - code examples by Francesco Nigro (Twitter: @forked_franz)
 * - https://github.com/franz1981/java-puzzles/commit/e083daa22878511c475135b5863b861471e617a6
 * - https://github.com/openjdk/jdk/pull/14375
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class TypeCheckBenchmark {

  // $ java -jar */*/benchmarks.jar ".*TypeCheckBenchmark.*"

  private Object[] instances;

  @Param({"1", "2", "3", "4"})
  private int types;

  private int index;

  @Setup
  public void setup() {
    instances = new Object[types];
    switch (types) {
      case 1:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        break;
      case 2:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        instances[1] = ManySecondarySuperTypes_2.Instance;
        break;
      case 3:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        instances[1] = ManySecondarySuperTypes_2.Instance;
        instances[2] = ManySecondarySuperTypes_3.Instance;
        break;
      case 4:
        instances[0] = ManySecondarySuperTypes_1.Instance;
        instances[1] = ManySecondarySuperTypes_2.Instance;
        instances[2] = ManySecondarySuperTypes_3.Instance;
        instances[3] = ManySecondarySuperTypes_4.Instance;
        break;
      default:
        throw new IllegalStateException("Unexpected value: " + types);
    }
  }

  @Benchmark
  public boolean instanceof_type_check() {
    return closeNotAutoCloseable(instances[nextPosition()]);
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
      // it always takes this path
      return false;
    }
  }

  private int nextPosition() {
    int nextIdx = index;
    if (++index >= types) {
      index = 0;
    }
    return nextIdx;
  }

  public interface I1 {}

  public interface I2 {}

  public interface I3 {}

  public interface I4 {}

  public interface I5 {}

  public interface I6 {}

  public interface I7 {}

  public interface I8 {}

  private enum ManySecondarySuperTypes_1 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }

  private enum ManySecondarySuperTypes_2 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }

  private enum ManySecondarySuperTypes_3 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }

  private enum ManySecondarySuperTypes_4 implements I1, I2, I3, I4, I5, I6, I7, I8 {
    Instance
  }
}
