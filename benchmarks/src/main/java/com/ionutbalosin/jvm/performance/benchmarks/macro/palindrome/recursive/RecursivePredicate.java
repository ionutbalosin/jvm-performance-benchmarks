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
package com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome.recursive;

import static java.lang.Character.isLetterOrDigit;
import static java.lang.Character.toLowerCase;

import java.util.function.Predicate;

public class RecursivePredicate implements Predicate<String> {

  @Override
  public boolean test(String str) {
    return isPalindrome(str, 0, str.length() - 1);
  }

  private boolean isPalindrome(String str, int start, int end) {
    while (start < end && !isLetterOrDigit(str.charAt(start))) {
      start++;
    }
    while (end > start && !isLetterOrDigit(str.charAt(end))) {
      end--;
    }
    if (start >= end) {
      return true;
    }
    if (toLowerCase(str.charAt(start)) != toLowerCase(str.charAt(end))) {
      return false;
    }
    int newStart = start + 1;
    int newEnd = end - 1;
    // tail recursive call
    return isPalindrome(str, newStart, newEnd);
  }
}
