/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
 *
 * Author: Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
 *
 * Co-author: Florin Blanaru
 * Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
 *
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

import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.TreeNode.isLeaf;

import java.util.HashMap;
import java.util.Map;

public class HuffmanEncoder {

  /**
   * Read the root node of a Huffman tree and use it to create a Huffman encoding map based on the
   * tree's structure
   */
  public static Map<Character, String> encodingMap(TreeNode root) {
    final Map<Character, String> huffmanCodes = new HashMap<>();
    encodingMap(root, "", huffmanCodes);
    return huffmanCodes;
  }

  private static void encodingMap(TreeNode root, String str, Map<Character, String> huffmanCode) {
    if (root == null) {
      return;
    }

    if (isLeaf(root)) {
      huffmanCode.put(root.ch, str.length() > 0 ? str : "1");
    }

    encodingMap(root.left, str + '0', huffmanCode);
    encodingMap(root.right, str + '1', huffmanCode);
  }
}
