/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
package com.ionutbalosin.jvm.performance.benchmarks.api.string.utils;

import static java.lang.Character.isValidCodePoint;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;

public class StringUtils {

  private static final Random random = new Random(16384);

  // Common English character set contains:
  // - alphabetic
  // - whitespaces
  // - punctuation
  // - digits
  // - brackets and parentheses
  // - a few other special characters (e.g., @, #, $, %, &, *)
  private static final char[] COMMON_ENGLISH_CHARS = {
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
    'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
    'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', '\n', '\t', '.', ',',
    '?', '!', ':', ';', '"', '-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '@', '#', '$',
    '%', '&', '*', '(', ')', '{', '}', '[', ']', '<', '>'
  };

  public enum Coder {
    ISO_8859_1(0xFF), // i.e., ISO-LATIN-1
    UTF_16(0xFFFF);

    private int value;

    Coder(int value) {
      this.value = value;
    }

    public int getValue() {
      return value;
    }
  }

  /*
   * Generates a character array of a specified length using code units from a specific type.
   * The generated char array is guaranteed to match the specified character encoding.
   */
  public static char[] charArray(int length, Coder coder) {
    return charArray(length, coder, 0);
  }

  /*
   * Generates a character array of a specified length using code units from a specific type.
   * The generated char array is guaranteed to match the specified character encoding.
   * In addition, it fills a portion up to a threshold with common English characters, and
   * the remaining characters up to the specified length are coder-specific (LATIN_1 or UTF_16).
   */
  public static char[] charArray(int length, Coder coder, float englishCharsThreshold) {
    final int commonCharsLength = (int) (length * englishCharsThreshold);
    final char[] charArray = new char[length];
    int charIdx = 0;

    // Fill the array with common english characters up to a threshold
    for (; charIdx < commonCharsLength; charIdx++) {
      charArray[charIdx] = COMMON_ENGLISH_CHARS[random.nextInt(COMMON_ENGLISH_CHARS.length)];
    }

    // Fill the remaining part with specific coder characters (e.g., LATIN_1 or UTF_16)
    for (int codeUnit = coder.getValue(); charIdx < length; charIdx++) {
      if (codeUnit < 0) {
        codeUnit = coder.getValue();
      }
      if (isValidCodePoint(codeUnit)) {
        charArray[charIdx] = (char) codeUnit;
      } else {
        charIdx--;
      }
      codeUnit--;
    }

    // Shuffle the array to randomly distribute the characters
    shuffleCharArray(charArray);

    return charArray;
  }

  private static void shuffleCharArray(char[] charArray) {
    if (charArray.length <= 2) {
      // array is too small to shuffle it
      return;
    }

    final List<Character> charList = new ArrayList<>();
    for (char ch : charArray) {
      charList.add(ch);
    }

    Collections.shuffle(charList, random);

    for (int i = 0; i < charArray.length; i++) {
      charArray[i] = charList.get(i);
    }
  }
}
