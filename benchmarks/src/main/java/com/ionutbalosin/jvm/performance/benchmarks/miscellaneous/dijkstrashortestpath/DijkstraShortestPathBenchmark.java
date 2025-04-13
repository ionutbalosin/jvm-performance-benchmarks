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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap.DijkstraAdjacencyListBinaryHeap;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix.DijkstraAdjacencyMatrix;
import java.util.Arrays;
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
 * Find the shortest path between a random source node and all other nodes in a dense graph using Dijkstra's algorithm.
 * The benchmark uses two alternative approaches, each using different data structures to represent the graph, as follows:
 * - an adjacency matrix
 * - an adjacency list with a binary heap (min heap)
 *
 * Adjacency Matrix: This implementation uses an adjacency matrix representation of the graph combined with a standard priority queue (binary heap).
 * The adjacency matrix represents the graph as a 2D array, where the value in the matrix indicates the weight of the edge between two nodes.
 * This approach is suitable for dense graphs but can be inefficient for sparse graphs due to its space usage.
 * The time complexity is O(V^2) due to the cost of accessing the matrix for each node during relaxation.
 *
 * Adjacency List with Binary Heap (Min Heap): This implementation uses a standard binary heap (min heap) combined with an adjacency list representation of the graph.
 * The binary heap is implemented manually using a list of queues (buckets).
 * It can offer better performance than binary heaps for dense graphs with small and non-negative edge weights.
 * Its time complexity is O((V + E) log V).
 *
 * Note: these implementations offer different trade-offs in terms of time complexity, space efficiency, and performance characteristics.
 * The best choice of implementation depends on the specific graph structure, the distribution of edge weights, etc.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DijkstraShortestPathBenchmark {

  // $ java  -jar */*/benchmarks.jar ".*DijkstraShortestPathBenchmark.*"
  // Recommended command line options:
  // - JVM options: -Xms4g -Xmx4g

  @Param({"8192"})
  private int nodes;

  private final int MAX_DISTANCE = 64;
  private final Random random = new Random(16384);

  private int sourceNode;
  private DijkstraAdjacencyMatrix dijkstraAdjacencyMatrix;
  private DijkstraAdjacencyListBinaryHeap dijkstraAdjacencyListBinaryHeap;

  @Setup()
  public void setup() {
    sourceNode = random.nextInt(nodes);
    dijkstraAdjacencyMatrix = new DijkstraAdjacencyMatrix(nodes, MAX_DISTANCE);
    dijkstraAdjacencyListBinaryHeap = new DijkstraAdjacencyListBinaryHeap(nodes, MAX_DISTANCE);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        dijkstraAdjacencyMatrix.dijkstra(sourceNode),
        dijkstraAdjacencyListBinaryHeap.dijkstra(sourceNode));
  }

  @Benchmark
  public int[] adjacency_matrix() {
    return dijkstraAdjacencyMatrix.dijkstra(sourceNode);
  }

  @Benchmark
  public int[] adjacency_list_binary_heap() {
    return dijkstraAdjacencyListBinaryHeap.dijkstra(sourceNode);
  }

  private static void sanityCheck(int[] distances1, int[] distances2) {
    if (!Arrays.equals(distances1, distances2)) {
      throw new AssertionError("The arrays of distances have different values.");
    }
  }
}
