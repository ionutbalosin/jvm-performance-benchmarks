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
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how the compiler can effectively coarsen/merge several adjacent synchronized blocks into one synchronized block,
 * thus reducing the locking overhead. This optimization can be applied if the same lock object is used by all methods.
 * Compilers can help to coarsen/merge the locks, but that is not guaranteed.
 *
 * OpenJDK HotSpot VM specifics:
 * - prior JDK 15: with biased locking enabled, compare-and-swap atomic operation are basically no-ops when acquiring a monitor, in case of uncontended locking.
 * It assumes that a monitor remains owned by a given thread until a different thread tries to acquire it
 * - starting JDK 15: without biased locking (or some improved version of non-biased locking), in case of uncontended locking,
 * certain synchronized scenarios might become slightly slower (i.e., since synchronized calls come now with atomic compare-and-swap on lock)
 *
 * ZGC and Shenandoah GC have biased locking disabled to prevent safepoint operations (e.g., biased locking revocation), avoiding stop-the-world pauses.
 *
 * References:
 * - https://openjdk.org/jeps/374
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LockCoarseningBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LockCoarseningBenchmark.*"
  // Recommended command line options only for JDK 17:
  // - JVM options: {-XX:-UseBiasedLocking, -XX:+UseBiasedLocking}

  private final Random random = new Random(16384);
  private final int DEPTH = 8;

  private int defaultValue;
  private int incrementValue;

  @Setup
  public void setup() {
    defaultValue = 32 + random.nextInt(64);
    incrementValue = random.nextInt(32);
  }

  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    synchronized (this) {
      result += incrementValue;
      synchronized (this) {
        result += incrementValue;
        synchronized (this) {
          result += incrementValue;
          synchronized (this) {
            result += incrementValue;
            synchronized (this) {
              result += incrementValue;
              synchronized (this) {
                result += incrementValue;
                synchronized (this) {
                  result += incrementValue;
                  synchronized (this) {
                    result += incrementValue;
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }

  @Benchmark
  public int recursive_method_calls() {
    int result = defaultValue << 1;
    result = recursiveSum(result, DEPTH);
    return result;
  }

  @Benchmark
  public int chain_method_calls() {
    int result = defaultValue << 1;

    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);

    return result;
  }

  @Benchmark
  public int conditional_chain_method_calls() {
    int result = defaultValue << 1;

    // all conditionals are evaluated to "true"
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }

    return result;
  }

  @Benchmark
  public int conditional_nested_method_calls() {
    int result = defaultValue << 1;

    // all conditionals are evaluated to "true"
    if (result > 1 << 5) {
      result = sum(result);
      if (result > 1 << 5) {
        result = sum(result);
        if (result > 1 << 5) {
          result = sum(result);
          if (result > 1 << 5) {
            result = sum(result);
            if (result > 1 << 5) {
              result = sum(result);
              if (result > 1 << 5) {
                result = sum(result);
                if (result > 1 << 5) {
                  result = sum(result);
                  if (result > 1 << 5) {
                    result = sum(result);
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }

  @Benchmark
  public int baseline() {
    int result = defaultValue << 1;

    synchronized (this) {
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
    }

    return result;
  }

  public synchronized int sum(int aValue) {
    return aValue + incrementValue;
  }

  public synchronized int recursiveSum(int aValue, int depth) {
    if (depth == 0) {
      return aValue;
    }
    return incrementValue + recursiveSum(aValue, depth - 1);
  }
}
