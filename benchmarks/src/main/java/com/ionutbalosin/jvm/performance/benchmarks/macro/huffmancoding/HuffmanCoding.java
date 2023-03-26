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
package com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.CODING_TYPE.ENCODE_DECODE;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.CODING_TYPE.ENCODE_ONLY;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanDecoder.getDecoded;
import static java.nio.charset.StandardCharsets.UTF_8;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.util.BitSet;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;

public class HuffmanCoding {

  private static final int BUFFER_SIZE = 1024;

  public enum CODING_TYPE {
    ENCODE_ONLY,
    ENCODE_DECODE
  }

  /**
   * Read from a given input file, and use the provided encoding map to encode/decode each character
   * to binary, then write the character's encoded/decoded to the given output stream
   */
  public static void encodeDecode(
      String fileName,
      TreeNode root,
      Map<Character, String> huffmanCodes,
      OutputStream fileOutputStream,
      CODING_TYPE type)
      throws IOException {
    final char[] buffer = new char[BUFFER_SIZE];
    int readChars;

    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(new FileInputStream(fileName), UTF_8))) {

      while (-1 != (readChars = bufferedReader.read(buffer))) {
        for (int i = 0; i < readChars; i++) {
          final String encoded = huffmanCodes.get(buffer[i]);
          writeToStream(encoded, root, fileOutputStream, type);
        }
      }
    }
  }

  /**
   * Read input from a given file name on disk and return a mapping for each character to the number
   * of times that character appears in the file
   */
  public static Map<Character, Integer> charFrequency(String fileName) throws IOException {
    final Map<Character, Integer> frequency = new HashMap<>();
    final char[] buffer = new char[BUFFER_SIZE];
    int readChars;

    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(new FileInputStream(fileName), UTF_8))) {

      while (-1 != (readChars = bufferedReader.read(buffer))) {
        for (int i = 0; i < readChars; i++) {
          frequency.put(buffer[i], frequency.getOrDefault(buffer[i], 0) + 1);
        }
      }
    }

    return frequency;
  }

  /**
   * Read the frequency character table and create a Huffman encoding tree based on these
   * frequencies. Return the root tree reference
   */
  public static TreeNode encodingTree(Map<Character, Integer> frequency) {
    final PriorityQueue<TreeNode> queue =
        new PriorityQueue<>(Comparator.comparingInt(node -> node.freq));

    for (var entry : frequency.entrySet()) {
      queue.add(new TreeNode(entry.getKey(), entry.getValue()));
    }

    while (queue.size() != 1) {
      final TreeNode left = queue.poll();
      final TreeNode right = queue.poll();
      final int sum = left.freq + right.freq;
      queue.add(new TreeNode(null, sum, left, right));
    }

    return queue.peek();
  }

  private static void writeToStream(
      String encoded, TreeNode root, OutputStream fileOutputStream, CODING_TYPE type)
      throws IOException {

    if (type == ENCODE_ONLY) {
      final BitSet encodedBitSet = encodedBitSet(encoded);
      fileOutputStream.write(encodedBitSet.toByteArray());
    }

    if (type == ENCODE_DECODE) {
      final StringBuilder decoded = getDecoded(root, encoded);
      fileOutputStream.write(decoded.toString().getBytes(UTF_8));
    }
  }

  private static BitSet encodedBitSet(String encoded) {
    final BitSet bitSet = new BitSet(encoded.length());
    for (int i = 0; i < encoded.length(); i++) {
      if (encoded.charAt(i) == '1') bitSet.set(i);
    }
    return bitSet;
  }
}
