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

public class HuffmanDecoder {

  public static char[] decodeData(char[] encoded, HuffmanNode root) {
    char[] decoded = new char[encoded.length];
    int decodedIndex = 0;
    HuffmanNode current = root;

    for (char ch : encoded) {
      if (ch == '0' && current != null) {
        current = current.left;
      } else if (ch == '1' && current != null) {
        current = current.right;
      }

      if (current != null && current.ch != '\0') {
        decoded[decodedIndex++] = current.ch;
        current = root;
      }
    }

    final char[] trimmedDecoded = new char[decodedIndex];
    System.arraycopy(decoded, 0, trimmedDecoded, 0, decodedIndex);
    return trimmedDecoded;
  }
}
