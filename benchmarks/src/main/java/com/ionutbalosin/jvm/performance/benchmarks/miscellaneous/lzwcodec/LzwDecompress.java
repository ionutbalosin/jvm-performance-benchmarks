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

public class LzwDecompress {

  /**
   * Decompresses the given compressed data array using the LZW algorithm.
   *
   * @param compressed The compressed data array to be decompressed.
   * @return The decompressed data array.
   */
  public static char[] decompressData(char[] compressed) {
    // Initialize the dictionary for decompression
    final Map<Integer, String> dictionary = new HashMap<>();
    int nextCode = 0;

    // Populate the dictionary with single-character entries
    for (char ch = 0; ch <= ISO_8859_1; ch++) {
      dictionary.put(nextCode++, String.valueOf(ch));
    }

    // Initialize the array to hold the decompressed data
    char[] decompressed = new char[compressed.length * 2];
    int decompressedIndex = 0;

    // Initialize the previous code and append its corresponding character to the decompressed array
    int prevCode = compressed[0];
    decompressed[decompressedIndex++] = dictionary.get(prevCode).charAt(0);

    // Iterate through the compressed data array to perform decompression
    for (int i = 1; i < compressed.length; i++) {
      final int code = compressed[i];
      final String entry;

      // Check if the dictionary contains the current code
      if (dictionary.containsKey(code)) {
        entry = dictionary.get(code);
      } else {
        // Create a new entry using the previous code and its first character
        entry = dictionary.get(prevCode) + dictionary.get(prevCode).charAt(0);
      }

      // Append each character of the entry to the decompressed array
      for (char ch : entry.toCharArray()) {
        // Check if the decompressed array is full, and resize it if necessary
        if (decompressedIndex == decompressed.length) {
          decompressed = resizeArray(decompressed, decompressedIndex * 2);
        }
        // Add the character to the decompressed array and update the index
        decompressed[decompressedIndex++] = ch;
      }

      // Add a new entry to the dictionary by concatenating the previous entry and the first
      // character of the current entry
      dictionary.put(nextCode++, dictionary.get(prevCode) + entry.charAt(0));
      prevCode = code; // Update the previous code for the next iteration
    }

    // Resize the decompressed array to the correct size and return it
    return resizeArray(decompressed, decompressedIndex);
  }
}
