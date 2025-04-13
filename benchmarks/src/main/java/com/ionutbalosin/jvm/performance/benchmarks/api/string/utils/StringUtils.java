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
package com.ionutbalosin.jvm.performance.benchmarks.api.string.utils;

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder.LATIN1;
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder.UTF16;
import static java.lang.Character.isValidCodePoint;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Random;
import java.util.Set;

public class StringUtils {

  /*
   * ISO-8859-1 and Latin-1 are used interchangeably
   */
  public enum Coder {
    LATIN1(StandardCharsets.ISO_8859_1, 0xFF),
    UTF16(StandardCharsets.UTF_16, 0xFFFF);

    private final Charset charset;
    private final int maxCharValue;

    Coder(Charset charset, int maxCharValue) {
      this.charset = charset;
      this.maxCharValue = maxCharValue;
    }

    public Charset getCharset() {
      return charset;
    }

    public int getMaxCharValue() {
      return maxCharValue;
    }
  }

  /*
   * - Latin-1 to UTF-16: Inflating from Latin-1 to UTF-16 leads to increased space allocation,
   * while keeping semantic equivalence (i.e., the same content) between strings.
   *
   * - UTF-16 to Latin-1: Narrowing from UTF-16 to Latin-1 might lead to character loss,
   * potentially making the results less applicable for testing (in certain scenarios).
   */
  public enum ComparisonType {
    LATIN1_TO_LATIN1(LATIN1, LATIN1),
    LATIN1_TO_UTF16(LATIN1, UTF16),
    UTF16_TO_UTF16(UTF16, UTF16),
    UTF16_TO_LATIN1(UTF16, UTF16);
    private final Coder sourceCoder, targetCoder;

    ComparisonType(Coder sourceCoder, Coder targetCoder) {
      this.sourceCoder = sourceCoder;
      this.targetCoder = targetCoder;
    }

    public Coder getSourceCoder() {
      return sourceCoder;
    }

    public Coder getTargetCoder() {
      return targetCoder;
    }
  }

  // Consider 75% of the characters in a text being English common ones
  private static final float COMMON_ENGLISH_CHARS_TARGET = 0.75f;

  /*
   * The common English character set in a text typically includes:
   * - Alphabetic characters (uppercase and lowercase)
   * - Whitespaces (space, newline, tab)
   * - Punctuation marks (period, comma, question mark, exclamation mark, colon, semicolon, quotation marks, hyphen)
   * - Digits (0-9)
   * - Brackets and parentheses
   * - Some other special characters (@, #, $, %, &, *)
   */
  private static final char[] COMMON_ENGLISH_CHARS = {
    'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S',
    'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
    'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', ' ', '\n', '\t', '.', ',',
    '?', '!', ':', ';', '"', '-', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '@', '#', '$',
    '%', '&', '*', '(', ')', '{', '}', '[', ']', '<', '>'
  };

  /*
   * Whitespace character set includes standard ASCII whitespace characters:
   * - space (' '), tab ('\t'), newline ('\n'), carriage return ('\r'), form feed ('\f'),
   * as well as additional Unicode whitespace characters:
   * - vertical tab ('\u000B'), and information separator characters.
   */
  private static final char[] WHITESPACES = {
    ' ', '\t', '\n', '\r', '\u000B', '\f', '\u001C', '\u001D', '\u001E', '\u001F'
  };

  /*
   * Character set to be excluded due to potential issues when comparing uppercase to lowercase formats
   * References:
   * - https://bugs.openjdk.org/browse/JDK-8186073
   */
  private static final Set<Character> CASE_SENSITIVE_CHARS = Set.of('ß');

  private static final Random random = new Random(16384);

  /*
   * Generates a character array of specified length filled with randomly selected whitespace characters.
   */
  public static char[] generateWhiteSpaceCharArray(int length) {
    final char[] charArray = new char[length];
    int charIdx = 0;

    // Fill the array with whitespace characters
    for (; charIdx < length; charIdx++) {
      charArray[charIdx] = WHITESPACES[random.nextInt(WHITESPACES.length)];
    }

    // Shuffle the array to randomly distribute the characters
    shuffleCharArray(charArray);

    return charArray;
  }

  /*
   * Generates a character array of a specified length using code units from a specific coder. The
   * array is filled randomly with common English characters up to a certain threshold.
   * The generated char array is guaranteed to match the specified character encoding.
   */
  public static char[] generateCommonEnglishCharArray(int length, Coder coder) {
    return generateCharArray(length, coder, COMMON_ENGLISH_CHARS_TARGET);
  }

  /*
   * Generates a character array of a specified length using code units from a specific coder.
   * The generated char array is guaranteed to match the specified character encoding.
   */
  public static char[] generateCharArray(int length, Coder coder) {
    return generateCharArray(length, coder, 0);
  }

  /*
   * Generates a character array of a specified length using code units from a specific coder.
   * The generated char array is guaranteed to match the specified character encoding.
   * In addition, it fills a portion up to a threshold with common English characters, and
   * the remaining characters up to the specified length are coder-specific (Latin-1 or UTF-16).
   */
  public static char[] generateCharArray(int length, Coder coder, float englishCharsThreshold) {
    final int commonCharsLength = (int) (length * englishCharsThreshold);
    final char[] charArray = new char[length];
    int charIdx = 0;

    // Fill the array with common english characters up to a threshold
    for (; charIdx < commonCharsLength; charIdx++) {
      charArray[charIdx] = COMMON_ENGLISH_CHARS[random.nextInt(COMMON_ENGLISH_CHARS.length)];
    }

    // Fill the remaining part with specific coder characters (e.g., Latin-1 or UTF-16)
    for (int codeUnit = coder.getMaxCharValue(); charIdx < length; charIdx++) {
      if (codeUnit < 0) {
        codeUnit = coder.getMaxCharValue();
      }
      final char ch = (char) codeUnit;
      // Exclude non valid or problematic characters
      if (isValidCodePoint(codeUnit) && !CASE_SENSITIVE_CHARS.contains(ch)) {
        charArray[charIdx] = ch;
      } else {
        charIdx--;
      }
      codeUnit--;
    }

    // Shuffle the array to randomly distribute the characters
    shuffleCharArray(charArray);

    return charArray;
  }

  /*
   * Converts an array of characters to a byte array using a specified character encoding.
   *
   * Note: When converting from a broader range of characters (e.g., UTF-16) to a narrower
   * character set (e.g., Latin-1), character loss may occur. It's the responsibility of
   * the caller to ensure the appropriate character set is used when invoking this method.
   *
   * In summary: while converting from UTF-16 to Latin-1 may cause issues due to characters loss,
   * narrowing from Latin-1 to UTF-16 results in a larger space allocation without character loss.
   */
  public static byte[] encodeCharArray(char[] chars, Coder coder) {
    final CharBuffer charBuffer = CharBuffer.wrap(chars);
    final ByteBuffer byteBuffer = coder.getCharset().encode(charBuffer);

    final int length = byteBuffer.limit();
    final byte[] byteArray = new byte[length];
    byteBuffer.get(byteArray, 0, length);
    byteBuffer.clear().put(new byte[length]);

    return byteArray;
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
