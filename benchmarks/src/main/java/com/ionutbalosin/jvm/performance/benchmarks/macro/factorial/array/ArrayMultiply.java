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
package com.ionutbalosin.jvm.performance.benchmarks.macro.factorial.array;

/*
 * References:
 * - https://www.geeksforgeeks.org/count-digits-factorial-set-1
 * - https://www.geeksforgeeks.org/factorial-large-number
 */
public class ArrayMultiply {

  private final int n;
  private final int digits;

  public ArrayMultiply(int n) {
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
