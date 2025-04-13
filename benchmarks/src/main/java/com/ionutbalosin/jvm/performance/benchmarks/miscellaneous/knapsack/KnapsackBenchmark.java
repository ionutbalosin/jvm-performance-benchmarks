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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic.DynamicZeroOneKnapsack;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyFractionalKnapsack;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.greedy.GreedyZeroOneKnapsack;
import java.util.ArrayList;
import java.util.List;
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
 * The knapsack problem is a classic optimization problem in computer science and combinatorial optimization.
 * Given a set of items, each with a value and weight, and a knapsack with a maximum weight capacity,
 * the objective is to select items to maximize the total value while ensuring that the sum of their weights does not exceed the knapsack's capacity.
 *
 * The knapsack problem has two main variations:
 *  - 0/1 Knapsack Problem: each item can be either included (0/1 choice) or excluded from the knapsack.
 * An item cannot be partially included. This means you can either take an item entirely or leave it out.
 *  - Fractional Knapsack Problem: there can take fractions of items, allowing to include parts of an item based on its weight.
 *
 * Some important notes regarding the knapsack problem:
 * - The 0/1 Knapsack problem is commonly tackled using dynamic programming, owing to its complex nature.
 * - The Fractional Knapsack problem is typically solved through a greedy algorithm. This is mainly because a 0/1 version of the Fractional Knapsack problem doesn't exist.
 *
 * The benchmark involves several alternative strategies:
 * - Knapsack with Dynamic Programming (for the 0/1 version)
 * - Knapsack with Greedy Programming (for the 0/1 version)
 * - Fractional Knapsack (with Greedy Programming)
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class KnapsackBenchmark {

  // $ java -jar */*/benchmarks.jar ".*KnapsackBenchmark.*"

  private final int MAX_ITEM_WEIGHT = 32;
  private final int MAX_ITEM_VALUE = 64;
  private final int KNAPSACK_CAPACITY = 5_000;
  private final int ITEMS = 50_000;
  private final Random random = new Random(16384);
  private List<Item> items;

  @Setup()
  public void setup() {
    items = new ArrayList<>(ITEMS);
    for (int i = 0; i < ITEMS; i++) {
      items.add(new Item(random.nextInt(MAX_ITEM_VALUE), random.nextInt(MAX_ITEM_WEIGHT)));
    }

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        DynamicZeroOneKnapsack.knapsack(KNAPSACK_CAPACITY, items),
        GreedyFractionalKnapsack.knapsack(KNAPSACK_CAPACITY, items),
        GreedyZeroOneKnapsack.knapsack(KNAPSACK_CAPACITY, items));
  }

  @Benchmark
  public List<Item> dynamic() {
    return DynamicZeroOneKnapsack.knapsack(KNAPSACK_CAPACITY, items);
  }

  @Benchmark
  public List<Item> greedy_fractional() {
    return GreedyFractionalKnapsack.knapsack(KNAPSACK_CAPACITY, items);
  }

  @Benchmark
  public List<Item> greedy_zero_one() {
    return GreedyZeroOneKnapsack.knapsack(KNAPSACK_CAPACITY, items);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first Knapsack generated solution
   * @param val2 - second Knapsack generated solution
   * @param val3 - second Knapsack generated solution
   */
  private void sanityCheck(List<Item> val1, List<Item> val2, List<Item> val3) {
    if (val1.isEmpty() || !isValid(val1)) {
      throw new AssertionError("The generated Knapsack solution is not valid.");
    }

    if (val2.isEmpty() || !isValid(val2)) {
      throw new AssertionError("The generated Knapsack solution is not valid.");
    }

    if (val3.isEmpty() || !isValid(val3)) {
      throw new AssertionError("The generated Knapsack solution is not valid.");
    }
  }

  public boolean isValid(List<Item> selectedItems) {
    int totalWeight = selectedItems.stream().mapToInt(item -> item.weight).sum();
    int capacityDifference = KNAPSACK_CAPACITY - totalWeight;

    return (totalWeight <= KNAPSACK_CAPACITY) && (capacityDifference <= MAX_ITEM_WEIGHT);
  }
}
