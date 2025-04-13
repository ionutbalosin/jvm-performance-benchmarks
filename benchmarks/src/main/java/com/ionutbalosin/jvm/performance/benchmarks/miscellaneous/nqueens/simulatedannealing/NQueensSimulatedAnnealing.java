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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.simulatedannealing;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.backtracking.NQueensBacktracking.EMPTY;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.backtracking.NQueensBacktracking.QUEEN;

import java.util.concurrent.ThreadLocalRandom;

public class NQueensSimulatedAnnealing {

  private static final ThreadLocalRandom random = ThreadLocalRandom.current();

  public static byte[][] placeNQueens(int n, int row) {
    int[] queenColumns = generateRandomSolution(n);
    double temperature = 10000.0;
    double coolingRate = 0.003;

    // Starting from the specified row
    if (row >= 0 && row < n) {
      queenColumns[row] = random.nextInt(n); // Randomly place a queen in the starting row
    }

    while (temperature > 1.0) {
      int[] nextSolution = generateNeighborSolution(queenColumns);
      int currentEnergy = calculateEnergy(queenColumns);
      int nextEnergy = calculateEnergy(nextSolution);

      double acceptanceProbability =
          calculateAcceptanceProbability(currentEnergy, nextEnergy, temperature);

      if (acceptanceProbability > Math.random()) {
        queenColumns = nextSolution;
      }

      temperature *= (1.0 - coolingRate);
    }

    return constructBoard(queenColumns);
  }

  private static byte[][] constructBoard(int[] queenColumns) {
    int n = queenColumns.length;
    byte[][] board = new byte[n][n];

    for (int i = 0; i < n; i++) {
      for (int j = 0; j < n; j++) {
        board[i][j] = queenColumns[i] == j ? QUEEN : EMPTY;
      }
    }

    return board;
  }

  private static int[] generateRandomSolution(int n) {
    int[] solution = new int[n];

    for (int i = 0; i < n; i++) {
      solution[i] = random.nextInt(n); // Place each queen randomly in a column of its row
    }

    return solution;
  }

  private static int[] generateNeighborSolution(int[] solution) {
    int n = solution.length;
    int[] neighborSolution = solution.clone();

    int row = random.nextInt(n); // Select a random row to move a queen
    neighborSolution[row] = random.nextInt(n); // Move the queen to a random column in its row

    return neighborSolution;
  }

  private static int calculateEnergy(int[] solution) {
    int n = solution.length;
    int energy = 0;

    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        if (solution[i] == solution[j] || Math.abs(solution[i] - solution[j]) == j - i) {
          energy++; // Queens attacking each other
        }
      }
    }

    return energy;
  }

  private static double calculateAcceptanceProbability(
      int currentEnergy, int nextEnergy, double temperature) {
    if (nextEnergy < currentEnergy) {
      return 1.0; // Accept better solutions
    }
    return Math.exp((currentEnergy - nextEnergy) / temperature);
  }
}
