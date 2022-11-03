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
package com.ionutbalosin.jvm.performance.benchmarks.macro.populationvariance.forkjoin;

import java.util.concurrent.ForkJoinPool;
import java.util.concurrent.RecursiveTask;

public class ForkJoinVariance {

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

    return variance / ages.length;
  }

  public interface VarianceSequentialTask {
    double compute(double[] ages, int start, int end);
  }

  public static class ForkJoinVarianceTask extends RecursiveTask<Double> {

    public static final long SEQUENCIAL_THRESHOLD = 1_000_000;

    private final VarianceSequentialTask sequentialTask;
    private final double[] ages;
    private final int start;
    private final int end;

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

      if (length <= SEQUENCIAL_THRESHOLD) {
        return sequentialTask.compute(ages, start, end);
      }

      ForkJoinVarianceTask leftTask =
          new ForkJoinVarianceTask(ages, start, start + length / 2, sequentialTask);
      leftTask.fork();

      ForkJoinVarianceTask rightTask =
          new ForkJoinVarianceTask(ages, start + length / 2, end, sequentialTask);

      Double rightResult = rightTask.compute();

      Double leftResult = leftTask.join();

      return leftResult + rightResult;
    }
  }
}
