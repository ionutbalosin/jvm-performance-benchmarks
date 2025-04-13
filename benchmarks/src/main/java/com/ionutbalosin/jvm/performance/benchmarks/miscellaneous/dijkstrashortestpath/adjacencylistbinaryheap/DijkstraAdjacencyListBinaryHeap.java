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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.dijkstrashortestpath.adjacencylistbinaryheap;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.PriorityQueue;
import java.util.Random;

public class DijkstraAdjacencyListBinaryHeap {

  private ArrayList<Node>[] graph;
  private int[] distances;
  private PriorityQueue<Node> queue;
  // A pool of (reusable) objects is used to minimize allocations during the benchmark method
  private NodeObjectPool objectPool;

  public DijkstraAdjacencyListBinaryHeap(int nodes, int maxDistance) {
    this.distances = new int[nodes];
    this.queue = new PriorityQueue<>(nodes);
    this.objectPool = new NodeObjectPool();
    initGraph(nodes, maxDistance);
  }

  private void initGraph(int nodes, int maxDistance) {
    graph = new ArrayList[nodes];
    final Random random = new Random(16384);

    for (int i = 0; i < nodes; i++) {
      graph[i] = new ArrayList<>();
      for (int j = 0; j < nodes; j++) {
        if (i != j) {
          int weight = random.nextInt(maxDistance) + 1; // random weight between 1 and maxDistance
          graph[i].add(new Node(j, weight));
        }
      }
    }
  }

  public int[] dijkstra(int source) {
    Arrays.fill(distances, Integer.MAX_VALUE);
    distances[source] = 0;

    // get the object from pool to avoid creating it during the benchmark method
    Node sourceNode = objectPool.get(source, 0);
    queue.offer(sourceNode);

    while (!queue.isEmpty()) {
      final Node current = queue.poll();
      final int dist = current.distance;
      final int nodeId = current.id;

      // add object back to the pool
      objectPool.add(current);

      if (dist > distances[nodeId]) {
        // Skip if the node is already processed with a shorter distance.
        continue;
      }

      for (Node neighbor : graph[nodeId]) {
        final int newDistance = dist + neighbor.distance;
        if (newDistance < distances[neighbor.id]) {
          distances[neighbor.id] = newDistance;
          // get the object from pool to avoid creating it during the benchmark method
          Node neighborNode = objectPool.get(neighbor.id, newDistance);
          queue.offer(neighborNode);
        }
      }
    }

    return distances;
  }
}
