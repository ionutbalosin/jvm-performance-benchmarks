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
 * Loop fusion merges adjacent loops into one loop to reduce the loop overhead and improve run-time performance.
 * Benefits of loop fusion:
 * - reduce loop overhead
 * - improve locality by combining loops that reference the same array
 * - reuse the operands in the registers while executing the statements of the second loop
 *
 * To eliminate the effect of vectorization, there is an explicit Read-after-write (RAW) case and a data dependency between loop statements.
 *
 * References:
 *  - http://www.sridhargopinath.in/wp-content/uploads/2018/11/Loop-Fusion-in-LLVM-Compiler.pdf
 *  - http://sridhargopinath.in/files/loop-fusion.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopFusionBenchmark {

  @Param({"262144"})
  private int size;

  private int[] A, B;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void initial_loops() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
    }

    for (int i = 1; i < size; i++) {
      B[i] = B[i - 1] + A[i];
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   * RAW: the loop cannot be vectorized safely because same variable is written to in more than 1 iteration.
   */
  @Benchmark
  public void manual_loops_fusion() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + B[i];
      B[i] = B[i - 1] + A[i];
    }
  }
}
