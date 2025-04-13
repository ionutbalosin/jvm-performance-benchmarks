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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Conway's Game of Life, often referred to simply as the Game of Life, is a cellular automaton devised by mathematician John Conway in 1970.
 * It is a mathematical "zero-player" game, meaning that its evolution is determined by its initial state, with no further input required.
 *
 * The Game of Life is played on a 2D grid of cells, where each cell can be in one of two states: alive or dead (0 or 1).
 * The game progresses through generations, with the state of each cell in a generation being determined by the state of its neighboring cells
 * in the previous generation according to a set of rules. These rules are based on the concept of birth, death, and survival:
 * - Birth: A dead cell with exactly three live neighbors becomes a live.
 * - Death: A live cell with fewer than two live neighbors (underpopulation) or more than three live neighbors (overpopulation) becomes a dead cell.
 * - Survival: A live cell with two or three live neighbors remains alive.
 *
 * Despite its simple rules, the Game of Life can produce complex and intricate patterns, including gliders (moving structures),
 * oscillators (repeating patterns), and even structures that can act as logic gates and memory cells.
 *
 * The benchmark involves several alternative strategies:
 * - Game of Life with Functional Programming
 * - Game of Life with Imperative Style
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class GameOfLifeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*GameOfLifeBenchmark.*"

  private final int ROWS = 24;
  private final int COLS = 24;
  private final int GENERATIONS = 2048;
  private final Random random = new Random(16384);
  private byte[][] grid;

  @Setup()
  public void setup() {
    grid = new byte[ROWS][COLS];
    for (int i = 0; i < ROWS; i++) {
      for (int j = 0; j < COLS; j++) {
        grid[i][j] = (byte) (random.nextBoolean() == true ? 1 : 0);
      }
    }

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        FunctionalGameOfLife.evolve(grid, GENERATIONS),
        IterativeGameOfLife.evolve(grid, GENERATIONS));
  }

  @Benchmark
  public byte[][] functional() {
    return FunctionalGameOfLife.evolve(grid, GENERATIONS);
  }

  @Benchmark
  public byte[][] iterative() {
    return IterativeGameOfLife.evolve(grid, GENERATIONS);
  }

  private void sanityCheck(byte[][] grid1, byte[][] grid2) {
    if (grid1.length != ROWS
        || grid2.length != ROWS
        || grid1[0].length != COLS
        || grid2[0].length != COLS) {
      throw new AssertionError("Invalid array dimensions for population grids.");
    }

    for (int i = 0; i < ROWS; i++) {
      for (int j = 0; j < COLS; j++) {
        if (grid1[i][j] != grid2[i][j]) {
          throw new AssertionError("Generated populations contain different values.");
        }
      }
    }
  }
}
