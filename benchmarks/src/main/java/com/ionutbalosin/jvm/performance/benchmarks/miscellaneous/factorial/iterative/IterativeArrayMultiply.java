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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.factorial.iterative;

/*
 * References:
 * - https://www.geeksforgeeks.org/count-digits-factorial-set-1
 * - https://www.geeksforgeeks.org/factorial-large-number
 */
public class IterativeArrayMultiply {

  private final int n;
  private final int digits;

  public IterativeArrayMultiply(int n) {
    this.n = n;
    // get the exact number of factorial digits to avoid unnecessary allocations
    this.digits = digits(n);
  }

  public byte[] factorial() {
    byte[] fact = new byte[digits];
    fact[0] = 1;
    int pos = 1;

    for (int x = 2; x <= n; x++) {
      pos = multiply(x, fact, pos);
    }

    return fact;
  }

  private int multiply(int x, byte[] fact, int pos) {
    int carry = 0;

    for (int i = 0; i < pos; i++) {
      int prod = fact[i] * x + carry;
      fact[i] = (byte) (prod % 10);
      carry = prod / 10;
    }

    while (carry != 0) {
      fact[pos] = (byte) (carry % 10);
      carry = carry / 10;
      pos++;
    }

    return pos;
  }

  private int digits(int n) {
    if (n < 0) {
      return 0;
    }

    if (n <= 1) {
      return 1;
    }

    double digits = 0;
    for (int i = 2; i <= n; i++) {
      digits += Math.log10(i);
    }

    return (int) (Math.floor(digits)) + 1;
  }
}
