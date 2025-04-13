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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.dynamic;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.knapsack.Item;
import java.util.ArrayList;
import java.util.List;

public class DynamicZeroOneKnapsack {

  public static List<Item> knapsack(int capacity, List<Item> items) {
    final int n = items.size();
    final int[][] dp = new int[n + 1][capacity + 1];

    for (int i = 1; i <= n; i++) {
      final Item currentItem = items.get(i - 1);
      for (int w = 0; w <= capacity; w++) {
        if (currentItem.weight <= w) {
          dp[i][w] = Math.max(dp[i - 1][w], dp[i - 1][w - currentItem.weight] + currentItem.value);
        } else {
          dp[i][w] = dp[i - 1][w];
        }
      }
    }

    final List<Item> selectedItems = new ArrayList<>();
    int w = capacity;
    for (int i = n; i > 0 && w > 0; i--) {
      if (dp[i][w] != dp[i - 1][w]) {
        final Item selectedItem = items.get(i - 1);
        selectedItems.add(selectedItem);
        w -= selectedItem.weight;
      }
    }

    return selectedItems;
  }
}
