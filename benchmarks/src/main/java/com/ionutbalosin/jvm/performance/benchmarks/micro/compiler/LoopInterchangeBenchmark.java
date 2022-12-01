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
 * Loop interchange is the process of exchanging the order of two iteration variables used by a nested loop.
 * The variable used in the inner loop switches to the outer loop, and vice versa. It is often done to ensure
 * that the elements of a multi-dimensional array are accessed in the order in which they are present in memory,
 * improving locality of reference.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopInterchangeBenchmark {

  // a larger size, e.g., 2048 bytes, in comparison to the cache line size, e.g., 64 bytes
  @Param({"2048"})
  private int size;

  private int[][] A;

  @Setup
  public void setup() {
    A = new int[size][size];
  }

  @Benchmark
  public int[][] initial_loop() {
    int[][] lA = A;
    int length = size;
    for (int i = 0; i < length; i++) {
      for (int j = 0; j < length; j++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }

  @Benchmark
  public int[][] manual_loop_interchange() {
    int[][] lA = A;
    int length = size;
    for (int j = 0; j < length; j++) {
      for (int i = 0; i < length; i++) {
        lA[j][i] = i * j;
      }
    }
    return lA;
  }
}
