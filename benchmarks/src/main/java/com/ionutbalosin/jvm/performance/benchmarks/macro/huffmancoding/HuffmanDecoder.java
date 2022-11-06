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
