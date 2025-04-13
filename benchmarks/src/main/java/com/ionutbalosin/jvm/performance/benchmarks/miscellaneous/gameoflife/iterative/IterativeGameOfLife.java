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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative;

public class IterativeGameOfLife {

  public static byte[][] evolve(byte[][] grid, int generations) {
    for (int gen = 0; gen < generations; gen++) {
      grid = evolveGeneration(grid);
    }
    return grid;
  }

  private static byte[][] evolveGeneration(byte[][] grid) {
    final int rows = grid.length;
    final int cols = grid[0].length;
    final byte[][] newGrid = new byte[rows][cols];

    for (int row = 0; row < rows; row++) {
      for (int col = 0; col < cols; col++) {
        newGrid[row][col] = evolveCell(grid, row, col);
      }
    }

    System.arraycopy(newGrid, 0, grid, 0, grid.length);
    return grid;
  }

  private static byte evolveCell(byte[][] grid, int row, int col) {
    final int rows = grid.length;
    final int cols = grid[0].length;
    byte neighbors = 0;

    for (int r = row - 1; r <= row + 1; r++) {
      for (int c = col - 1; c <= col + 1; c++) {
        if (r >= 0 && r < rows && c >= 0 && c < cols && !(r == row && c == col)) {
          if (grid[r][c] == 1) {
            neighbors++;
          }
        }
      }
    }

    if (grid[row][col] == 1) {
      return (byte) (neighbors == 2 || neighbors == 3 ? 1 : 0);
    } else {
      return (byte) (neighbors == 3 ? 1 : 0);
    }
  }
}
