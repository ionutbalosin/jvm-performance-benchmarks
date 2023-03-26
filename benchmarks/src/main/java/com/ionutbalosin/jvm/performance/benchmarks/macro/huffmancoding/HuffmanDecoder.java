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

import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.TreeNode.isLeaf;

public class HuffmanDecoder {

  public static StringBuilder getDecoded(TreeNode root, String encoded) {
    final StringBuilder decoded = new StringBuilder();

    // Special case, only one character (e.g., a, aa, aaa, etc.)
    if (isLeaf(root)) {
      while (root.freq-- > 0) {
        decoded.append(root.ch);
      }
      return decoded;
    }

    int index = -1;
    while (index < encoded.length() - 1) {
      index = decode(root, index, encoded, decoded);
    }

    return decoded;
  }

  private static int decode(TreeNode root, int index, String encoded, StringBuilder decoded) {
    if (root == null) {
      return index;
    }

    if (isLeaf(root)) {
      decoded.append(root.ch);
      return index;
    }

    index++;
    root = (encoded.charAt(index) == '0') ? root.left : root.right;
    index = decode(root, index, encoded, decoded);

    return index;
  }
}
