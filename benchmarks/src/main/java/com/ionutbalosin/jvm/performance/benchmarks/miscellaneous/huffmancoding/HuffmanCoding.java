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

import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.PriorityQueue;

public class HuffmanCoding {

  /*
   * This method calculates the frequency of each character in the provided character array.
   * It returns a map where keys are characters and values are their corresponding frequencies.
   */
  public static Map<Character, Integer> charFrequency(char[] data) {
    final Map<Character, Integer> frequency = new HashMap<>();

    for (char ch : data) {
      frequency.put(ch, frequency.getOrDefault(ch, 0) + 1);
    }

    return frequency;
  }

  /*
   * This method constructs a Huffman tree based on the character frequencies provided in the form of a frequency map.
   * The Huffman tree is a binary tree where each leaf node represents a character and its associated frequency.
   * The tree is built using a priority queue (min-heap) to ensure that lower frequency characters are closer to the root.
   */
  public static HuffmanNode codingTree(Map<Character, Integer> frequency) {
    final PriorityQueue<HuffmanNode> minHeap =
        new PriorityQueue<>(Comparator.comparingInt(node -> node.freq));

    for (char ch : frequency.keySet()) {
      minHeap.offer(new HuffmanNode(ch, frequency.get(ch)));
    }

    while (minHeap.size() > 1) {
      final HuffmanNode left = minHeap.poll();
      final HuffmanNode right = minHeap.poll();
      final HuffmanNode combined = new HuffmanNode('\0', left.freq + right.freq);
      combined.left = left;
      combined.right = right;
      minHeap.offer(combined);
    }

    return minHeap.poll();
  }
}
