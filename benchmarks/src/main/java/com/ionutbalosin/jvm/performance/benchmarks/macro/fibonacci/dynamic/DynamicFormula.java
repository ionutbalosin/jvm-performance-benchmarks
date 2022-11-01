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
package com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.dynamic;

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
