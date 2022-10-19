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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * This pass transforms loops that contain branches on loop-invariant conditions to have multiple loops.
 * This can increase the size of the code exponentially (e.g., doubling it every time a loop is unswitched).
 * This pass expects loopInvariantCodeMotionPredicate() to be run before it to hoist invariant conditions out of the loop, to make the unswitching opportunity obvious.
 */
//
//  Pattern:
//
//      for (...) {
//          A
//          if (loopInvariantPredicate) {
//              B
//          }
//          C
//      }
//
//    is equivalent to:
//
//      if (loopInvariantPredicate) {
//          for (...) {
//              A
//              B
//              C
//          }
//      } else {
//          for (...) {
//              A
//              C
//          }
//      }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Thread)
public class LoopUnswitchBenchmark {

  @Param({"64"})
  private int magicNumber;

  @Param({"262144"})
  private int size;

  private int[] A, B, C;

  @Setup
  public void setup() {
    A = new int[size];
    B = new int[size];
    C = new int[size];
    for (int i = 0; i < size; i++) {
      A[i] = i;
      B[i] = i;
      C[i] = i;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   *
   * Read-after-write: the loop cannot be vectorized safely because if the first two iterations are executed simultaneously (e.g., A[1]=A[0]+1; A[2]=A[1]+1)
   * by a SIMD instruction, the value of A[1] may be used by the second iteration before it has been calculated by the first iteration which could lead to incorrect results.
   */
  @Benchmark
  public void loop_unswitch() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + 1;
      // potential auto-vectorization obstacle
      if (licmPredicate_noInline()) {
        B[i] = B[i - 1] + 1;
      }
      C[i] = C[i - 1] + 1;
    }
  }

  /*
   * Explicit broken loop vectorization (Read-after-write (RAW) - non vectorizable)
   */
  @Benchmark
  public void baseline() {
    if (licmPredicate_noInline()) {
      for (int i = 1; i < size; i++) {
        A[i] = A[i - 1] + 1;
        B[i] = B[i - 1] + 1;
        C[i] = C[i - 1] + 1;
      }
    } else {
      for (int i = 1; i < size; i++) {
        A[i] = A[i - 1] + 1;
        C[i] = C[i - 1] + 1;
      }
    }
  }

  // loop invariant code motion and non inlineable method
  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private boolean licmPredicate_noInline() {
    int result = magicNumber & 0x2;
    return result == 0;
  }
}
