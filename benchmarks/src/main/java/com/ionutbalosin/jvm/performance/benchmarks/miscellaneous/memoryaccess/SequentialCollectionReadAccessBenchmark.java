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

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OperationsPerInvocation;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * The benchmark is designed to measure the time required for sequential element reads from the following three data structures:
 * - An array of integers.
 * - An ArrayList of integers.
 * - A LinkedList of integers.
 *
 * The benchmark can be configured with various parameters, including:
 * - shuffle: This simulates scenarios where insertions occur out of order or at various indexes over time.
 * - gc: When enabled, it tries to trigger the (minor) garbage collection after preparing the data set.
 * Note: If the default garbage collector (GC) performs compaction, the array elements (including any temporary objects if present)
 * are rearranged in memory to position them closer to each other, thus benefiting from improved locality.
 * In such cases, any performance difference between the shuffled and non-shuffled versions might be minimal.
 *
 * References:
 * - https://shipilev.net/jvm/anatomy-quarks/11-moving-gc-locality
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class SequentialCollectionReadAccessBenchmark {

  // $ java -jar */*/benchmarks.jar ".*SequentialCollectionReadAccessBenchmark.*"

  private final Random random = new Random(16384);
  private final int SIZE = 131_072;

  private Integer[] integerArray;
  private ArrayList<Integer> arrayList;
  private LinkedList<Integer> linkedList;

  @Param({"false", "true"})
  private boolean shuffle;

  @Param({"false", "true"})
  private boolean gc;

  @Setup
  public void setup() throws IOException, InterruptedException {
    integerArray = new Integer[SIZE];
    arrayList = new ArrayList<>(SIZE);
    linkedList = new LinkedList();

    for (int i = 0; i < SIZE; i++) {
      integerArray[i] = i;
      arrayList.add(i);
      linkedList.add(i);
    }

    if (shuffle) {
      Collections.shuffle(arrayList, random);
      Collections.shuffle(linkedList, random);
      Collections.shuffle(Arrays.asList(integerArray), random);
    }

    if (gc) {
      for (int i = 0; i < 5; i++) {
        // Important considerations:
        // - There is no guarantee that the GC will be actually invoked.
        // - Even if the GC is triggered, there is no assurance that the data will be rearranged
        // (i.e., compacted). The outcome depends on the specific behavior of the Collector itself.
        System.gc();
        TimeUnit.SECONDS.sleep(1);
      }
    }
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public long integer_array() {
    long sum = 0;

    for (final int value : integerArray) {
      sum += value;
    }

    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public long array_list() {
    long sum = 0;

    for (final int value : arrayList) {
      sum += value;
    }

    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public long linked_list() {
    long sum = 0;

    for (final int value : linkedList) {
      sum += value;
    }

    return sum;
  }
}
