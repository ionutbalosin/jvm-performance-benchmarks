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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.binet;

import static java.math.BigDecimal.valueOf;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;

/*
 * Using Binet's formula, the nth Fibonacci number can be directly calculated:
 * Fibonacci(n) = [Phi^n – Pih^n] / Sqrt[5]
 * where:
 * - Phi = (1 + Sqrt[5]) / 2, also called golden mean
 * - Pih = (1 – Sqrt[5]) / 2, an associated golden number, also equal to (-1 / Phi)
 *
 * References:
 * - https://math.hmc.edu/funfacts/fibonacci-number-formula
 * - https://apod.nasa.gov/htmltest/gifcity/sqrt5.1mil
 */
public class BinetFormula {

  // The number of Sqrt[5] digits is essential for calculating higher (precise) Fibonacci numbers.
  // Note: 700 digits should be enough to compute up to the 3000th Fibonacci number.
  private static final String SQRT5_700_DIGITS =
      "2.2360679774997896964091736687312762354406183596115257242708972454105209256378048994144144083787822749"
          + "6950817615077378350425326772444707386358636012153345270886677817319187916581127664532263985658053576"
          + "1350417533785003423392414064442086432539097252592627228876299517402440681611775908909498492371390729"
          + "7288984820886415426898940991316935770197486788844250897541329561831769214999774248015304341150359576"
          + "6833251249881517813940800056242085524354223555610630634282023409333198293395974635227120134174961420"
          + "2635904737885504389687061135660045757139956595566956917564578221952500060539231234005009286764875529"
          + "7220567662536660744858535052623306784946334222423176372770266324076801044433158257335058930981362263";

  private static final BigDecimal SQRT5 = new BigDecimal(SQRT5_700_DIGITS);
  private static final BigDecimal PHI = SQRT5.add(valueOf(1)).divide(valueOf(2));
  private static final BigDecimal PIH = SQRT5.subtract(valueOf(1)).divide(valueOf(2));

  // nth Fibonacci number using Binet's formula
  public static BigInteger fibonacci(int n) {
    final BigDecimal PHIn = PHI.pow(n);
    final BigDecimal PIHn = PIH.pow(n);
    final BigDecimal diff = PHIn.subtract(PIHn);
    final BigDecimal result = diff.divide(SQRT5, 0, RoundingMode.UP);

    return result.toBigInteger();
  }
}
