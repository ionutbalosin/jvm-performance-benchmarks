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
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how the Compiler could potentially optimize a method that takes a huge number of arguments (64 double arguments).
 * Usually, the register allocation (i.e., the array of register mask bits) should be large enough to cover all the machine registers and
 * all parameters that need to be passed on the stack all parameters that need to be passed on the stack (stack registers) up to some "interesting" limit.
 * Methods that need more parameters will not be compiled. For example, on Intel, the limit is around 90+ parameters.
 *
 * References:
 * - https://bugs.java.com/bugdatabase/view_bug.do?bug_id=5090493
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MethodArgsBusterBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MethodArgsBusterBenchmark.*"

  @Benchmark
  public long method_args_buster() {
    // returns 204
    return tooManyArgsMethod(
        0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6, 1.7,
        1.8, 1.9, 2.0, 2.1, 2.2, 2.3, 2.4, 2.5, 2.6, 2.7, 2.8, 2.9, 3.0, 3.1, 3.2, 3.3, 3.4, 3.5,
        3.6, 3.7, 3.8, 3.9, 4.0, 4.1, 4.2, 4.3, 4.4, 4.5, 4.6, 4.7, 4.8, 4.9, 5.0, 5.1, 5.2, 5.3,
        5.4, 5.5, 5.6, 5.7, 5.8, 5.9, 6.0, 6.1, 6.2, 6.3);
  }

  private long tooManyArgsMethod(
      double d00,
      double d01,
      double d02,
      double d03,
      double d04,
      double d05,
      double d06,
      double d07,
      double d08,
      double d09,
      double d10,
      double d11,
      double d12,
      double d13,
      double d14,
      double d15,
      double d16,
      double d17,
      double d18,
      double d19,
      double d20,
      double d21,
      double d22,
      double d23,
      double d24,
      double d25,
      double d26,
      double d27,
      double d28,
      double d29,
      double d30,
      double d31,
      double d32,
      double d33,
      double d34,
      double d35,
      double d36,
      double d37,
      double d38,
      double d39,
      double d40,
      double d41,
      double d42,
      double d43,
      double d44,
      double d45,
      double d46,
      double d47,
      double d48,
      double d49,
      double d50,
      double d51,
      double d52,
      double d53,
      double d54,
      double d55,
      double d56,
      double d57,
      double d58,
      double d59,
      double d60,
      double d61,
      double d62,
      double d63) {

    return Math.round(d00)
        + Math.round(d01)
        + Math.round(d02)
        + Math.round(d03)
        + Math.round(d04)
        + Math.round(d05)
        + Math.round(d06)
        + Math.round(d07)
        + Math.round(d08)
        + Math.round(d09)
        + Math.round(d10)
        + Math.round(d11)
        + Math.round(d12)
        + Math.round(d13)
        + Math.round(d14)
        + Math.round(d15)
        + Math.round(d16)
        + Math.round(d17)
        + Math.round(d18)
        + Math.round(d19)
        + Math.round(d20)
        + Math.round(d21)
        + Math.round(d22)
        + Math.round(d23)
        + Math.round(d24)
        + Math.round(d25)
        + Math.round(d26)
        + Math.round(d27)
        + Math.round(d28)
        + Math.round(d29)
        + Math.round(d30)
        + Math.round(d31)
        + Math.round(d32)
        + Math.round(d33)
        + Math.round(d34)
        + Math.round(d35)
        + Math.round(d36)
        + Math.round(d37)
        + Math.round(d38)
        + Math.round(d39)
        + Math.round(d40)
        + Math.round(d41)
        + Math.round(d42)
        + Math.round(d43)
        + Math.round(d44)
        + Math.round(d45)
        + Math.round(d46)
        + Math.round(d47)
        + Math.round(d48)
        + Math.round(d49)
        + Math.round(d50)
        + Math.round(d51)
        + Math.round(d52)
        + Math.round(d53)
        + Math.round(d54)
        + Math.round(d55)
        + Math.round(d56)
        + Math.round(d57)
        + Math.round(d58)
        + Math.round(d59)
        + Math.round(d60)
        + Math.round(d61)
        + Math.round(d62)
        + Math.round(d63);
  }
}
