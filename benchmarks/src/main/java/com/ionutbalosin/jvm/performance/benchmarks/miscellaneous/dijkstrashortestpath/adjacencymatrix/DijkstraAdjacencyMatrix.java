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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencymatrix;

import java.util.Arrays;
import java.util.Random;

public class DijkstraAdjacencyMatrix {

  private int nodes;
  private int[][] graph;
  private int[] distances;
  private boolean[] visited;

  public DijkstraAdjacencyMatrix(int nodes, int maxDistance) {
    this.nodes = nodes;
    this.distances = new int[nodes];
    this.visited = new boolean[nodes];
    initGraph(nodes, maxDistance);
  }

  private void initGraph(int nodes, int maxDistance) {
    graph = new int[nodes][nodes];
    final Random random = new Random(16384);

    for (int i = 0; i < nodes; i++) {
      for (int j = 0; j < nodes; j++) {
        if (i != j) {
          graph[i][j] = random.nextInt(maxDistance) + 1; // Random weight between 1 and maxDistance
        }
      }
    }
  }

  public int[] dijkstra(int source) {
    Arrays.fill(visited, false);
    Arrays.fill(distances, Integer.MAX_VALUE);
    distances[source] = 0;

    for (int i = 0; i < nodes - 1; i++) {
      final int minDistNode = findMinDistanceNode(distances, visited);
      visited[minDistNode] = true;

      for (int j = 0; j < nodes; j++) {
        if (!visited[j]
            && graph[minDistNode][j] != 0
            && distances[minDistNode] != Integer.MAX_VALUE) {
          int newDistance = distances[minDistNode] + graph[minDistNode][j];
          if (newDistance < distances[j]) {
            distances[j] = newDistance;
          }
        }
      }
    }

    return distances;
  }

  public static int findMinDistanceNode(int[] distances, boolean[] visited) {
    int minDistance = Integer.MAX_VALUE;
    int minNode = -1;

    for (int i = 0; i < distances.length; i++) {
      if (!visited[i] && distances[i] < minDistance) {
        minDistance = distances[i];
        minNode = i;
      }
    }

    return minNode;
  }
}
