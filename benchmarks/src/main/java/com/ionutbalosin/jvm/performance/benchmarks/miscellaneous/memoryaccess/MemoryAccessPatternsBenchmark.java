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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.memoryaccess;

import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * This benchmark evaluates the performance of various memory access patterns, aiming to gauge the influence of different memory access strategies on code execution time.
 * The benchmark defines three distinct memory access patterns:
 * - LINEAR_WALK
 * - RANDOM_PAGE_WALK
 * - RANDOM_HEAP_WALK
 * Each pattern is implemented using the StrideType enum, which includes a method for calculating the subsequent memory access position based on the present position, page offset, and word offset.
 *
 * The benchmark contains two memory access approaches:
 * - walk(): This scenario measures the execution time of memory access using the specified memory access pattern.
 * - dependent_walk(): This scenario measures memory access time while ensuring a dependency is maintained between consecutive accesses.
 *
 * The performance of memory access benchmarks is influenced by various factors:
 * - CPU Caching: Modern CPUs have multiple levels of cache (e.g., L1, L2, L3), which store frequently used data close to the CPU cores for faster access.
 * - Memory Hierarchy: Alongside CPU caches, the memory hierarchy includes main memory (RAM) and potentially other levels of memory like non-volatile storage (e.g., SSDs).
 * - Data Locality: The proximity of data in memory to the CPU affects access times. Sequential or localized data access patterns often exploit data locality and benefit from better cache utilization.
 * - Memory Bandwidth: Memory bandwidth, or the rate at which data can be read from or written to memory, can become a bottleneck in memory-intensive operations.
 * - Branch Predictions: Conditional statements (if-else) and loops can influence the performance of memory access patterns.
 *
 * References:
 * - code examples by Martin Thompson (Twitter: @mjpt777)
 * - https://mechanical-sympathy.blogspot.com/2012/08/memory-access-patterns-are-important.html
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MemoryAccessPatternsBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MemoryAccessPatternsBenchmark.*"

  private static final int LONG_SIZE = 8; // 8 bytes
  // Note: With Transparent Huge Pages enabled, this needs to be set to 2 MB
  private static final int PAGE_SIZE = 4 * 1024; // 4 KB
  private static final long MEMORY_SIZE = 1024 * 1024 * 1024; // 1 GB
  private static final int PRIME_INC = 514_229;

  private static final int ARRAY_SIZE = (int) (MEMORY_SIZE / LONG_SIZE);
  private static final int WORDS_PER_PAGE = PAGE_SIZE / LONG_SIZE;

  private static final int ARRAY_MASK = ARRAY_SIZE - 1;
  private static final int PAGE_MASK = WORDS_PER_PAGE - 1;

  private long[] array;

  @Param private StrideType strideType;

  @Setup(Level.Trial)
  public void setup() {
    array = new long[ARRAY_SIZE];
    Arrays.fill(array, 42);
  }

  @Benchmark
  @OperationsPerInvocation(ARRAY_SIZE)
  public long walk() {
    int pos = -1;

    long sum = 0;
    for (int pageOffset = 0; pageOffset < ARRAY_SIZE; pageOffset += WORDS_PER_PAGE) {
      for (int wordOffset = pageOffset, limit = pageOffset + WORDS_PER_PAGE;
          wordOffset < limit;
          wordOffset++) {
        pos = strideType.next(pageOffset, wordOffset, pos);
        sum += array[pos];
      }
    }

    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(ARRAY_SIZE)
  public long dependent_walk() {
    long previousValue = 0;

    long sum = 0;
    for (int pageOffset = 0; pageOffset < ARRAY_SIZE; pageOffset += WORDS_PER_PAGE) {
      for (int wordOffset = pageOffset, limit = pageOffset + WORDS_PER_PAGE;
          wordOffset < limit;
          wordOffset++) {
        int pos = strideType.next(pageOffset, wordOffset, (int) previousValue);
        previousValue = array[pos];
        sum += previousValue;
      }
    }

    return sum;
  }

  public enum StrideType {
    LINEAR_WALK {
      public int next(final int pageOffset, final int wordOffset, final int pos) {
        return (pos + 1) & ARRAY_MASK;
      }
    },

    RANDOM_PAGE_WALK {
      public int next(final int pageOffset, final int wordOffset, final int pos) {
        return pageOffset + (((pos + wordOffset) * PRIME_INC) & PAGE_MASK);
      }
    },

    RANDOM_HEAP_WALK {
      public int next(final int pageOffset, final int wordOffset, final int pos) {
        return (pageOffset + (pos * PRIME_INC)) & ARRAY_MASK;
      }
    };

    public abstract int next(int pageOffset, int wordOffset, int pos);
  }
}
