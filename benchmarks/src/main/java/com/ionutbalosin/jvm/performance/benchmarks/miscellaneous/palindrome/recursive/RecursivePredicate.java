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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive;

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
