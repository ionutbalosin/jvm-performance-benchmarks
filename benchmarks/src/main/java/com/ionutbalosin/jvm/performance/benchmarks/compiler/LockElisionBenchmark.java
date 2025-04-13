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
 * Test how the compiler can elide/remove several adjacent locking blocks on non-shared objects, thus reducing the locking overhead.
 * Synchronization on non-shared objects is pointless, and runtime does not have to do anything there.
 *
 * Escape analysis is used to determine if references to an object are limited to a local scope only and none of those references
 * "escape" to a broader scope. If escape analysis figures out the objects are non-escaping, the compiler is free to eliminate the synchronizations.
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LockElisionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LockElisionBenchmark.*"

  private final Random random = new Random(16384);
  private final int DEPTH = 8;

  private int defaultValue;
  private int incrementValue;

  @Setup
  public void setup() {
    defaultValue = 32 + random.nextInt(32);
    incrementValue = random.nextInt(32);
  }

  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    Object lock = new Object();

    synchronized (lock) {
      result += incrementValue;
      synchronized (lock) {
        result += incrementValue;
        synchronized (lock) {
          result += incrementValue;
          synchronized (lock) {
            result += incrementValue;
            synchronized (lock) {
              result += incrementValue;
              synchronized (lock) {
                result += incrementValue;
                synchronized (lock) {
                  result += incrementValue;
                  synchronized (lock) {
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

    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;

    return result;
  }

  public int sum(int aValue) {
    Object lock = new Object();
    synchronized (lock) {
      return aValue + incrementValue;
    }
  }

  public int recursiveSum(int aValue, int depth) {
    Object lock = new Object();
    synchronized (lock) {
      if (depth == 0) {
        return aValue;
      }
      return incrementValue + recursiveSum(aValue, depth - 1);
    }
  }
}
