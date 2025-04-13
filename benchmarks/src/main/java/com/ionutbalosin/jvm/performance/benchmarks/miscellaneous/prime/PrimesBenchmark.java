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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.eratostene.EratosthenesSieve;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin.MillerRabin;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.trialdivision.StreamBasedTrialDivision;
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
 * Calculates the count of prime numbers up to a specified threshold (e.g., N).
 * The benchmark employs several alternative methods:
 * - Sieve of Eratosthenes
 * - Trial division (i.e., checking if a number is prime by dividing it by all possible divisors up to the square root of the number.)
 * - Miller-Rabin primality test
 *
 * The resulting count of prime numbers is compared against the Prime Number Theorem to ensure the accuracy of the computation.
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
    sanityCheck(
        StreamBasedTrialDivision.primes(n), EratosthenesSieve.primes(n), MillerRabin.primes(n));
  }

  @Benchmark
  public long trial_division() {
    return StreamBasedTrialDivision.primes(n);
  }

  @Benchmark
  public long eratosthenes_sieve() {
    return EratosthenesSieve.primes(n);
  }

  @Benchmark
  public long miller_rabin() {
    return MillerRabin.primes(n);
  }

  private void sanityCheck(long val1, long val2, long val3) {
    if (val1 != val2 || val2 != val3) {
      throw new AssertionError("The counts of prime numbers are different.");
    }

    final double minPrimes = getMinPrimes(n);
    if (val1 < minPrimes || val2 < minPrimes || val3 < minPrimes) {
      throw new AssertionError("Less than the minimum expected prime numbers.");
    }
  }

  /**
   * Calculate the minimum number of prime numbers expected based on the Prime Number Theorem (PNT).
   *
   * @param n - the upper limit
   */
  private double getMinPrimes(int n) {
    return n / Math.log(n);
  }
}
