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
