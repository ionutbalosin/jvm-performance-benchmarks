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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec.LzwCodec.ISO_8859_1;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec.LzwCodec.resizeArray;

import java.util.HashMap;
import java.util.Map;

public class LzwCompress {

  /**
   * Compresses the input character array using the LZW compression algorithm.
   *
   * @param input The input character array to be compressed.
   * @return A compressed character array using LZW algorithm.
   */
  public static char[] compressData(char[] input) {
    // Create a dictionary to store codes and their corresponding strings
    final Map<String, Integer> dictionary = new HashMap<>();
    int nextCode = 0;

    // Initialize dictionary with individual characters
    for (char ch = 0; ch <= ISO_8859_1; ch++) {
      dictionary.put(String.valueOf(ch), nextCode++);
    }

    // Initialize variables for current sequence and compressed data
    char[] current = new char[0];
    final char[] compressed = new char[input.length];
    int compressedIndex = 0;

    // Iterate through input characters to perform compression
    for (char ch : input) {
      // Concatenate current sequence with the current character
      char[] currentPlusCh = new char[current.length + 1];
      System.arraycopy(current, 0, currentPlusCh, 0, current.length);
      currentPlusCh[current.length] = ch;

      // Convert the concatenated sequence to a string
      String currentPlusChString = new String(currentPlusCh);

      // Check if the current sequence is in the dictionary
      if (dictionary.containsKey(currentPlusChString)) {
        // Update the current sequence with the concatenated sequence
        current = currentPlusCh;
      } else {
        // Append the code for the current sequence to the compressed data
        compressedIndex =
            addCodeToCompressed(compressed, compressedIndex, dictionary.get(new String(current)));

        // Add the new sequence to the dictionary and update current sequence
        dictionary.put(currentPlusChString, nextCode++);
        current = new char[] {ch};
      }
    }
    // Append the code for the final current sequence to the compressed data
    compressedIndex =
        addCodeToCompressed(compressed, compressedIndex, dictionary.get(new String(current)));

    return resizeArray(compressed, compressedIndex);
  }

  /**
   * Adds a code to the compressed data array and handles resizing if necessary.
   *
   * @param compressed The compressed data array.
   * @param index The current index in the compressed data array.
   * @param code The code to be added to the compressed data.
   * @return The updated index in the compressed data array.
   */
  private static int addCodeToCompressed(char[] compressed, int index, Integer code) {
    // Check if the current index is at the end of the array
    if (index == compressed.length) {
      compressed = resizeArray(compressed, index * 2);
    }
    compressed[index++] = (char) code.intValue();

    return index;
  }
}
