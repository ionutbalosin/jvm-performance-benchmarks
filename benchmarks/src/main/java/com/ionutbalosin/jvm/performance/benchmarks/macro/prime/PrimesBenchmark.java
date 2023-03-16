/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
 *
 * Author: Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
 *
 * Co-author: Florin Blanaru
 * Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
 *
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.prime;

import com.ionutbalosin.jvm.performance.benchmarks.macro.prime.eratostene.EratosthenesSieve;
import com.ionutbalosin.jvm.performance.benchmarks.macro.prime.stream.SqrtStreamFilter;
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
 * Computes the number of prime numbers until a threshold (e.g., N) number.
 * The benchmark uses a few alternative approaches:
 * - sieve of Eratosthenes
 * - a stream of prime numbers
 *
 * The result (i.e., number of prime numbers) is compared against the Prime number theorem
 * to be sure the computation is not wrong.
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class PrimesBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PrimesBenchmark.*"

  @Param({"8388608"})
  private int n;

  @Setup()
  public void setup() {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(SqrtStreamFilter.primes(n), EratosthenesSieve.primes(n));
  }

  @Benchmark
  public long sqrt_stream() {
    return SqrtStreamFilter.primes(n);
  }

  @Benchmark
  public long eratosthenes_sieve() {
    return EratosthenesSieve.primes(n);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first number of prime numbers
   * @param val2 - second number of prime numbers
   */
  private void sanityCheck(long val1, long val2) {
    if (val1 != val2) {
      throw new AssertionError("Numbers are different.");
    }

    // Prime number theorem: number of primes less than N or equal to N is at least N/ln(N)
    final double minPrimes = n / Math.log(n);
    if (val1 < minPrimes || val2 < minPrimes) {
      throw new AssertionError("Less than minimum expected prime numbers.");
    }
  }
}
