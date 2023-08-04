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
package com.ionutbalosin.jvm.performance.benchmarks.macro.dijkstrashortestpath;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Queue;
import java.util.Random;

public class DijkstraAdjacencyListBinaryHeap {

  private ArrayList<Node>[] graph;
  private int[] distances;
  private PriorityQueue<Node> pQueue;
  // A pool of pre-allocated objects is create to minimize allocations during the benchmark method
  private NodeObjectPool nodeObjPool;

  public DijkstraAdjacencyListBinaryHeap(int nodes, int maxDistance) {
    this.distances = new int[nodes];
    this.pQueue = new PriorityQueue<>(nodes);
    this.nodeObjPool = new NodeObjectPool(nodes);
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
    Node sourceNode = nodeObjPool.getFromPool(source, 0);
    pQueue.offer(sourceNode);

    while (!pQueue.isEmpty()) {
      final Node current = pQueue.poll();
      final int dist = current.distance;
      final int nodeId = current.id;

      // add object back to the pool
      nodeObjPool.addToPool(current);

      if (dist > distances[nodeId]) {
        // Skip if the node is already processed with a shorter distance.
        continue;
      }

      for (Node neighbor : graph[nodeId]) {
        final int newDistance = dist + neighbor.distance;
        if (newDistance < distances[neighbor.id]) {
          distances[neighbor.id] = newDistance;
          // get the object from pool to avoid creating it during the benchmark method
          Node neighborNode = nodeObjPool.getFromPool(neighbor.id, newDistance);
          pQueue.offer(neighborNode);
        }
      }
    }

    return distances;
  }
}

// Note: this object pool is not intentionally created to be thread safe.
class NodeObjectPool {

  private final Queue<Node> pool;

  public NodeObjectPool(int size) {
    this.pool = new LinkedList<>();
    for (int i = 0; i < size; i++) {
      pool.offer(createObject());
    }
  }

  public void addToPool(Node obj) {
    pool.offer(obj);
  }

  public Node getFromPool(int id, int distance) {
    Node obj = pool.poll();
    if (obj == null) {
      obj = createObject();
    }

    return obj.setId(id).setDistance(distance);
  }

  private Node createObject() {
    return new Node();
  }
}

class Node implements Comparable<Node> {
  int id;
  int distance;

  public Node() {}

  public Node(int id, int distance) {
    this.id = id;
    this.distance = distance;
  }

  @Override
  public int compareTo(Node other) {
    return Integer.compare(this.distance, other.distance);
  }

  public Node setId(int id) {
    this.id = id;
    return this;
  }

  public Node setDistance(int distance) {
    this.distance = distance;
    return this;
  }
}
