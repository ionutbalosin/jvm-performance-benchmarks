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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional;

import java.util.stream.IntStream;

public class FunctionalGameOfLife {

  public static byte[][] evolve(byte[][] grid, int generations) {
    return IntStream.range(0, generations)
        .mapToObj(gen -> evolveGeneration(grid))
        .reduce((prevGrid, currentGrid) -> currentGrid)
        .orElse(grid);
  }

  private static byte[][] evolveGeneration(byte[][] grid) {
    final int rows = grid.length;
    final int cols = grid[0].length;
    final byte[][] newGrid = new byte[rows][cols];

    IntStream.range(0, rows)
        .parallel()
        .forEach(
            row ->
                IntStream.range(0, cols)
                    .forEach(col -> newGrid[row][col] = evolveCell(grid, row, col)));

    System.arraycopy(newGrid, 0, grid, 0, rows);
    return grid;
  }

  private static byte evolveCell(byte[][] grid, int row, int col) {
    final int rows = grid.length;
    final int cols = grid[0].length;

    byte neighbors =
        (byte)
            IntStream.rangeClosed(row - 1, row + 1)
                .flatMap(
                    r ->
                        IntStream.rangeClosed(col - 1, col + 1)
                            .filter(c -> r >= 0 && r < rows && c >= 0 && c < cols)
                            .filter(c -> !(r == row && c == col))
                            .map(c -> grid[r][c]))
                .filter(cell -> cell == 1)
                .count();

    if (grid[row][col] == 1) {
      return (byte) (neighbors == 2 || neighbors == 3 ? 1 : 0);
    } else {
      return (byte) (neighbors == 3 ? 1 : 0);
    }
  }
}
