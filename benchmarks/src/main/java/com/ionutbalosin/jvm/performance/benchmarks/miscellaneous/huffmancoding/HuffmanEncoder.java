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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.huffmancoding;

import java.util.HashMap;
import java.util.Map;

public class HuffmanEncoder {

  /*
   * This method is responsible for creating and returning an encoding map that associates characters with their Huffman encodings.
   * The encoding map is a java.util.Map where keys are characters and values are the
   * corresponding Huffman encodings represented as strings of '0's and '1's.
   */
  public static Map<Character, String> encodingMap(HuffmanNode root) {
    final Map<Character, String> huffmanCodes = new HashMap<>();
    encodingMap(root, "", huffmanCodes);
    return huffmanCodes;
  }

  private static void encodingMap(
      HuffmanNode node, String code, Map<Character, String> encodingMap) {
    if (node == null) {
      return;
    }

    if (node.ch != '\0') {
      encodingMap.put(node.ch, code);
    }

    encodingMap(node.left, code + "0", encodingMap);
    encodingMap(node.right, code + "1", encodingMap);
  }

  public static char[] encodeData(char[] data, Map<Character, String> encodingMap) {
    int totalEncodedLength = 0;
    for (char ch : data) {
      totalEncodedLength += encodingMap.get(ch).length();
    }

    char[] encoded = new char[totalEncodedLength];
    int encodedIndex = 0;

    for (char ch : data) {
      final String encodedChar = encodingMap.get(ch);
      for (char encodedBit : encodedChar.toCharArray()) {
        encoded[encodedIndex++] = encodedBit;
      }
    }

    return encoded;
  }
}
