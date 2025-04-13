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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.backtracking.NQueensBacktracking.QUEEN;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.backtracking.NQueensBacktracking;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.nqueens.simulatedannealing.NQueensSimulatedAnnealing;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * The N-Queens problem is a classic combinatorial problem to place N chess queens on an N×N chessboard in such a way that no two queens can attack each other.
 * This problem is computationally intensive, and its duration is directly proportional to the chessboard size
 * (i.e., the larger the chessboard, the more time it takes to compute the solutions).
 * The benchmark utilizes two alternative approaches to solve the N-Queens problem:
 * - Backtracking
 * - Simulated Annealing
 *
 * Simulated Annealing is a probabilistic optimization algorithm inspired by the annealing process in metallurgy.
 * It is used for solving combinatorial optimization problems, where the goal is to find the best solution among a large set of possible solutions.
 * It starts with an initial solution and iteratively explores neighboring solutions, gradually reducing the "temperature"
 * (a parameter that controls the probability of accepting worse solutions).
 *
 * Backtracking is an algorithmic technique used to systematically explore all possible solutions to a problem by incrementally building
 * a solution and undoing incorrect choices if they lead to dead-ends. It explores all possible paths in the solution space,
 * pruning those that violate problem constraints, to find a feasible or optimal solution.
 *
 * Note: Simulated Annealing does not guarantee an optimal solution, unlike Backtracking, which guarantees to find the exact solution if it exists.
 *
 * The performance of Simulated Annealing versus Backtracking can vary significantly based on the choice of parameters, cooling schedule, N-size, etc. Example:
 * - for a smaller N (e.g., N=8; i.e., a typical 8x8 chessboard size), Backtracking is capable of finding all possible solutions relatively quickly.
 * - for a larger N (e.g., N=64, i.e., 64x64 chessboard size), the search space becomes astronomically large, making it less practical for Backtracking to explore all configurations.
 * In such cases, Simulated Annealing may become more practical, as it can efficiently explore the search space but without guaranteeing an optimal solution.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NQueensBenchmark {

  // $ java -jar */*/benchmarks.jar ".*NQueensBenchmark.*"

  @Param({"16", "64"})
  private int n;

  // the current (starting) row to place a queen on the chessboard
  private int startingRow;
  private final Random random = new Random(16384);

  @Setup()
  public void setup() {
    startingRow = random.nextInt(n);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(NQueensBacktracking.placeNQueens(n, startingRow));
    sanityCheck(NQueensSimulatedAnnealing.placeNQueens(n, startingRow));
  }

  @Benchmark
  public byte[][] backtracking() {
    return NQueensBacktracking.placeNQueens(n, startingRow);
  }

  @Benchmark
  public byte[][] simulated_annealing() {
    return NQueensSimulatedAnnealing.placeNQueens(n, startingRow);
  }

  /**
   * Sanity check for the chess board results to ensure the correct placement of N Queens.
   *
   * @param board - chess board representing the N Queens properly positioned
   */
  private void sanityCheck(byte[][] board) {
    int nQueens = 0;
    for (byte[] row : board) {
      for (byte position : row) {
        if (position == QUEEN) {
          nQueens++;
        }
      }
    }

    if (nQueens != n) {
      throw new AssertionError(
          "The number of placed queens differs from the expected value. Actual: "
              + nQueens
              + ", expected: "
              + n);
    }
  }
}
