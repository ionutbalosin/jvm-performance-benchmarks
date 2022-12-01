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

import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
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
 * Iterates through an array of custom object instances (containing null and not null values) and computes the
 * sum of all elements using different comparison/filtering strategies.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NpeControlFlowBenchmark {

  private final Random random = new Random(16384);
  private final int THRESHOLD = 32;

  private Wrapper[] array;

  @Param({"262144"})
  private int size;

  @Param({"0", "16"})
  private int upperNullThreshold;

  @Setup
  public void setup() {
    array = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      int value = random.nextInt(THRESHOLD) + 1;
      if (value < upperNullThreshold) {
        array[i] = null;
      } else {
        array[i] = new Wrapper(i);
      }
    }
  }

  @Benchmark
  public int try_npe_catch() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      try {
        sum += array[i].x;
      } catch (NullPointerException ignored) {
        sink(ignored);
      }
    }
    return sum;
  }

  @Benchmark
  public int if_not_npe_do_statement() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] != null) {
        sum += array[i].x;
      }
    }
    return sum;
  }

  @Benchmark
  public int if_npe_continue() {
    int sum = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] == null) {
        continue;
      }
      sum += array[i].x;
    }
    return sum;
  }

  @Benchmark
  public long stream_filter_npe() {
    return Arrays.stream(array)
        .filter(wrapper -> wrapper != null)
        .map(Wrapper::getX)
        .reduce(0, Integer::sum);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(final NullPointerException exception) {
    // Intentionally empty method
  }

  private static class Wrapper {
    private int x;

    public Wrapper(int x) {
      this.x = x;
    }

    public int getX() {
      return x;
    }
  }
}
