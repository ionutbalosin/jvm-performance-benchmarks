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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.prime.millerrabin;

import java.util.Random;

public class MillerRabin {

  // Number of iterations the test does to determine whether a given number is likely prime or not.
  // Note: Number of iterations is a trade-off between computational efficiency and accuracy:
  // - a larger number reduces the chances of false positives,
  // - but it also increases the time it takes to perform the test.
  private static final int ITERATIONS = 5;
  private static final Random random = new Random(16384);

  public static long primes(final int n) {
    long numberOfPrimes = 0;
    for (int num = 2; num <= n; num++) {
      if (isPrime(num, ITERATIONS)) {
        numberOfPrimes++;
      }
    }
    return numberOfPrimes;
  }

  private static boolean isPrime(long n, int k) {
    if (n <= 1 || n == 4) {
      return false;
    }
    if (n <= 3) {
      return true;
    }

    long d = n - 1;
    while (d % 2 == 0) {
      d /= 2;
    }

    for (int i = 0; i < k; i++) {
      final long a = 2 + random.nextInt((int) (n - 4));
      long x = power(a, d, n);

      if (x == 1 || x == n - 1) {
        continue;
      }

      boolean found = false;
      while (d != n - 1) {
        x = (x * x) % n;
        d *= 2;

        if (x == 1) {
          return false;
        }
        if (x == n - 1) {
          found = true;
          break;
        }
      }

      if (!found) {
        return false;
      }
    }

    return true;
  }

  // Returns (x^y) % p
  private static long power(long x, long y, long p) {
    long result = 1;
    x = x % p;

    while (y > 0) {
      if (y % 2 == 1) {
        result = (result * x) % p;
      }
      y = y >> 1; // y = y / 2
      x = (x * x) % p;
    }

    return result;
  }
}
