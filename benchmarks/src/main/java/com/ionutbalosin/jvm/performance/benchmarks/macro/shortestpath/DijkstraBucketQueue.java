/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.shortestpath;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Random;

public class DijkstraBucketQueue {

  private int nodes;
  private ArrayList<Node>[] graph;
  private int[] distances;

  public DijkstraBucketQueue(int nodes, int maxDistance) {
    this.nodes = nodes;
    this.distances = new int[nodes];
    initGraph(maxDistance);
  }

  private void initGraph(int maxDistance) {
    graph = new ArrayList[nodes];
    Random random = new Random(16384);

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

    final List<List<Node>> buckets = new ArrayList<>();
    for (int i = 0; i < nodes + 1; i++) {
      buckets.add(new ArrayList<>());
    }
    buckets.get(0).add(new Node(source, 0));

    while (true) {
      int bucketIndex = -1;
      for (int i = 0; i < buckets.size(); i++) {
        if (!buckets.get(i).isEmpty()) {
          bucketIndex = i;
          break;
        }
      }
      if (bucketIndex == -1) {
        break;
      }

      final Node current = buckets.get(bucketIndex).remove(0);

      final int dist = current.distance;
      final int nodeId = current.id;

      if (dist > distances[nodeId]) {
        continue;
      }

      for (Node neighbor : graph[nodeId]) {
        final int newDistance = dist + neighbor.distance;

        if (newDistance < distances[neighbor.id]) {
          distances[neighbor.id] = newDistance;
          int newBucketIndex = newDistance;
          if (buckets.size() <= newBucketIndex) {
            for (int i = buckets.size(); i <= newBucketIndex; i++) {
              buckets.add(new ArrayList<>());
            }
          }
          buckets.get(newBucketIndex).add(new Node(neighbor.id, newDistance));
        }
      }
    }

    return distances;
  }

  public static class Node implements Comparable<Node> {
    int id;
    int distance;

    public Node(int id, int distance) {
      this.id = id;
      this.distance = distance;
    }

    @Override
    public int compareTo(Node other) {
      return Integer.compare(this.distance, other.distance);
    }
  }
}
