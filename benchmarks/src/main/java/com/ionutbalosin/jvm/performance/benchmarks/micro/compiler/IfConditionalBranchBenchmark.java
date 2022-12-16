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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Tests the optimization of an if conditional branch within a loop based on a predictable or unpredictable branch pattern.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class IfConditionalBranchBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IfConditionalBranchBenchmark.*"

  private final Random random = new Random(16384);
  private final int THRESHOLD = 4096;

  private int[] array;

  @Param({"16384"})
  private int size;

  @Setup
  public void setup() {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      // all values are within [0, threshold)
      array[i] = random.nextInt(THRESHOLD);
    }
  }

  @Benchmark
  public int no_if_branch() {
    int sum = 0;

    for (final int value : array) {
      sum += value;
    }

    return sum;
  }

  // this must be equivalent or very close to baseline()
  @Benchmark
  public int predictable_if_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value < THRESHOLD) {
        sum += value;
      }
    }

    return sum;
  }

  @Benchmark
  public int unpredictable_if_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value <= (THRESHOLD / 2)) {
        sum += value;
      }
    }

    return sum;
  }
}
