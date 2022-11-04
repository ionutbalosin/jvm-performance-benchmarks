/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.macro.factorial.forkjoin;

import java.math.BigInteger;
import java.util.concurrent.ForkJoinTask;
import java.util.concurrent.RecursiveTask;

public class ForkJoinFactorial {

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

    private static final int SEQUENTIAL_THRESHOLD = 1000;

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
