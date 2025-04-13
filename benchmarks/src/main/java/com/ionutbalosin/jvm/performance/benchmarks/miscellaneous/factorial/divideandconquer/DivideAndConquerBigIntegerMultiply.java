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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.factorial.divideandconquer;

import java.math.BigInteger;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.RecursiveTask;

public class DivideAndConquerBigIntegerMultiply {

  public static BigInteger factorial(int n) {
    final FactorialRecursiveTask task =
        new FactorialRecursiveTask(
            n,
            (start, end) -> {
              BigInteger res = BigInteger.ONE;
              for (int i = start; i <= end; i++) {
                res = res.multiply(BigInteger.valueOf(i));
              }
              return res;
            });
    ForkJoinTask.invokeAll(task);

    return task.join();
  }

  public interface FactorialSequentialTask {
    BigInteger compute(int start, int end);
  }

  private static class FactorialRecursiveTask extends RecursiveTask<BigInteger> {

    private final int SEQUENTIAL_THRESHOLD = 1000;

    private final FactorialSequentialTask sequentialTask;
    private final int start, end;

    public FactorialRecursiveTask(int n, FactorialSequentialTask sequentialTask) {
      this(2, n, sequentialTask);
    }

    public FactorialRecursiveTask(int start, int end, FactorialSequentialTask sequentialTask) {
      this.start = start;
      this.end = end;
      this.sequentialTask = sequentialTask;
    }

    @Override
    protected BigInteger compute() {
      int length = end - start;

      if (length <= SEQUENTIAL_THRESHOLD) {
        return sequentialTask.compute(start, end);
      }

      final FactorialRecursiveTask leftTask =
          new FactorialRecursiveTask(start, start + length / 2, sequentialTask);
      final FactorialRecursiveTask rightTask =
          new FactorialRecursiveTask(start + length / 2 + 1, end, sequentialTask);
      ForkJoinTask.invokeAll(leftTask, rightTask);

      return leftTask.join().multiply(rightTask.join());
    }
  }
}
