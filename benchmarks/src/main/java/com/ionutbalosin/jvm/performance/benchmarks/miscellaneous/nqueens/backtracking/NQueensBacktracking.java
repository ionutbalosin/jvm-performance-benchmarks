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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.backtracking;

import java.util.Arrays;

public class NQueensBacktracking {

  public static final byte QUEEN = 1;
  public static final byte EMPTY = 0;

  public static byte[][] placeNQueens(int n, int row) {
    final byte[][] board = new byte[n][n];

    for (byte[] boardRow : board) {
      Arrays.fill(boardRow, EMPTY);
    }

    backtrack(board, n, row, 0);
    return board;
  }

  private static boolean backtrack(byte[][] board, int n, int row, int queensPlaced) {
    if (queensPlaced == n) {
      return true;
    }

    if (row == n) {
      row = 0; // Reset the row to the beginning if we reach the end
    }

    for (int col = 0; col < n; col++) {
      if (isValidPlacement(board, row, col, n)) {
        board[row][col] = QUEEN;
        if (backtrack(board, n, row + 1, queensPlaced + 1)) {
          return true;
        }
        board[row][col] = EMPTY;
      }
    }
    return false;
  }

  private static boolean isValidPlacement(byte[][] board, int row, int col, int n) {
    for (int i = 0; i < row; i++) {
      if (board[i][col] == QUEEN) {
        return false;
      }
      int leftDiagonal = col - (row - i);
      int rightDiagonal = col + (row - i);
      if (leftDiagonal >= 0 && board[i][leftDiagonal] == QUEEN) {
        return false;
      }
      if (rightDiagonal < n && board[i][rightDiagonal] == QUEEN) {
        return false;
      }
    }
    return true;
  }
}
