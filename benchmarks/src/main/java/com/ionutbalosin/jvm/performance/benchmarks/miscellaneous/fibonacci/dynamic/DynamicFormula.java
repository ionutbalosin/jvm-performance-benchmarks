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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.dynamic;

import static java.math.BigInteger.ZERO;

import java.math.BigInteger;

public class DynamicFormula {

  public static BigInteger fibonacci(int n, BigInteger a, BigInteger b) {
    if (n == 0) {
      return ZERO;
    }

    // store the previous results (i.e., partial solutions) in an array
    BigInteger f[] = new BigInteger[n + 1];
    f[0] = a;
    f[1] = b;

    for (int i = 2; i <= n; i++) {
      f[i] = f[i - 1].add(f[i - 2]);
    }

    return f[n];
  }
}
