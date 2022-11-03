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
package com.ionutbalosin.jvm.performance.benchmarks.macro.prime.eratostene;

import static java.lang.Math.sqrt;

import java.util.Arrays;

public class EratosthenesSieve {

  public static int primes(final int number) {
    int numberOfPrimes = 0;
    boolean[] primes = new boolean[number];

    Arrays.fill(primes, true);

    for (int i = 2; i < sqrt(number); i++) {
      if (primes[i] == true) {
        for (int j = (i * i); j < number; j = j + i) {
          primes[j] = false;
        }
      }
    }

    for (int i = 2; i < primes.length; i++) {
      if (primes[i] == true) {
        numberOfPrimes++;
      }
    }

    return numberOfPrimes;
  }
}
