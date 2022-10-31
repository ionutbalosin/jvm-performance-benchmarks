/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.binet;

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
  // Note: 300 digits should be enough to compute the 1000th Fibonacci number
  private static final String SQRT5_300_DIGITS =
      "2.236067977499789696409173668731276235440618359611525724270897245410520925637804899414414408378782274"
          + "969508176150773783504253267724447073863586360121533452708866778173191879165811276645322639856580535"
          + "76135041753378500342339241406444208643253909725259262722887629951740244068161177590890949849237139072";

  private static final BigDecimal SQRT5 = new BigDecimal(SQRT5_300_DIGITS);
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
