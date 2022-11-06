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
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;

public class HuffmanCoding {

  private static final int BUFFER_SIZE = 1024;

  enum CODING_TYPE {
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
      fileOutputStream.write(encoded.getBytes(UTF_8));
    }

    if (type == ENCODE_DECODE) {
      final StringBuilder decoded = getDecoded(root, encoded);
      fileOutputStream.write(decoded.toString().getBytes(UTF_8));
    }
  }
}
