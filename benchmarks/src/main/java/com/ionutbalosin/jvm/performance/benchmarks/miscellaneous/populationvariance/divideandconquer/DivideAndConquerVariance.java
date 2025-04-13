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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.populationvariance.divideandconquer;

import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RecursiveTask;

public class DivideAndConquerVariance {

  public static double variance(double[] ages) {
    final ForkJoinPool forkJoinPool = new ForkJoinPool();

    final double total =
        forkJoinPool.invoke(
            new ForkJoinVarianceTask(
                ages,
                (population, start, end) -> {
                  double partialTotal = 0;
                  for (int i = start; i < end; i++) {
                    partialTotal += population[i];
                  }
                  return partialTotal;
                }));

    final double average = total / ages.length;

    final double variance =
        forkJoinPool.invoke(
            new ForkJoinVarianceTask(
                ages,
                (population, start, end) -> {
                  double partialVariance = 0;
                  for (int i = start; i < end; i++) {
                    partialVariance += (population[i] - average) * (population[i] - average);
                  }
                  return partialVariance;
                }));

    forkJoinPool.shutdown();

    return variance / ages.length;
  }

  public interface VarianceSequentialTask {
    double compute(double[] ages, int start, int end);
  }

  public static class ForkJoinVarianceTask extends RecursiveTask<Double> {

    public static final long SEQUENTIAL_THRESHOLD = 1000;

    private final VarianceSequentialTask sequentialTask;
    private final double[] ages;
    private final int start, end;

    public ForkJoinVarianceTask(double[] ages, VarianceSequentialTask sequentialTask) {
      this(ages, 0, ages.length, sequentialTask);
    }

    private ForkJoinVarianceTask(
        double[] ages, int start, int end, VarianceSequentialTask sequentialTask) {
      this.ages = ages;
      this.start = start;
      this.end = end;
      this.sequentialTask = sequentialTask;
    }

    @Override
    protected Double compute() {
      int length = end - start;

      if (length <= SEQUENTIAL_THRESHOLD) {
        return sequentialTask.compute(ages, start, end);
      }

      final ForkJoinVarianceTask leftTask =
          new ForkJoinVarianceTask(ages, start, start + length / 2, sequentialTask);
      leftTask.fork();

      final ForkJoinVarianceTask rightTask =
          new ForkJoinVarianceTask(ages, start + length / 2, end, sequentialTask);

      return rightTask.invoke() + leftTask.join();
    }
  }
}
