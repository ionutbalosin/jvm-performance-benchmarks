package com.ionutbalosin.jvm.performance.benchmarks.jit;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * This pass transforms loops that contain branches on loop-invariant conditions to have multiple loops.
 * This can increase the size of the code exponentially (e.g. doubling it every time a loop is unswitched).
 * This pass expects loopInvariantCodeMotionPredicate() to be run before it to hoist invariant conditions out of the loop, to make the unswitching opportunity obvious.
 */
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
@Fork(value = 3)
@State(Scope.Thread)
public class LoopUnswitchBenchmark {

  @Param({"64"})
  private int magicNumber;

  @Param({"262144"})
  private int size;

  private int[] A, B, C;

  // java -jar benchmarks/target/benchmarks.jar ".*LoopUnswitchBenchmark.*"
  // java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -jar
  // benchmarks/target/benchmarks.jar ".*LoopUnswitchBenchmark.*"

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
   * Read-after-write: the loop cannot be vectorized safely because if the first two iterations are executed simultaneously (e.g. A[1]=A[0]+1; A[2]=A[1]+1)
   * by a SIMD instruction, the value of A[1] may be used by the second iteration before it has been calculated by the first iteration which could lead to incorrect results.
   */
  @Benchmark
  public void loop_unswitch() {
    for (int i = 1; i < size; i++) {
      A[i] = A[i - 1] + 1;
      if (licmPredicate_noInline()) { // potential auto-vectorization obstacle
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
