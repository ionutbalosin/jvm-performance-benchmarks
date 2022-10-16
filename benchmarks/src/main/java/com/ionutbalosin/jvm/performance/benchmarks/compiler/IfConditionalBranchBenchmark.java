package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests the optimization of an if conditional branch within a loop based on a predictable or unpredictable branch pattern.
 */

//  Pattern:
//
//    for (int value : array) {
//        if (value < thresholdLimit) {
//            sum += value;
//        }
//    }
//
//    where thresholdLimit is either:
//     - always greater then arrays values - predictable pattern
//     - or partially greater than some arrays values - unpredictable pattern
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class IfConditionalBranchBenchmark {

  private final int SIZE = 16384;
  private int[] array = new int[SIZE];

  @Param({"4096"})
  private int thresholdLimit;

  @Setup
  public void setup() {
    final Random random = new Random(16384);

    for (int i = 0; i < SIZE; i++) {
      // all values are within [0, thresholdLimit)
      array[i] = random.nextInt(thresholdLimit);
    }
  }

  @Benchmark
  public int branchless_baseline() {
    int sum = 0;

    for (final int value : array) {
      sum += value;
    }

    return sum;
  }

  // this must be equivalent or very close to baseline()
  @Benchmark
  public int predictable_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value < thresholdLimit) {
        sum += value;
      }
    }

    return sum;
  }

  @Benchmark
  public int unpredictable_branch() {
    int sum = 0;

    for (final int value : array) {
      if (value <= (thresholdLimit / 2)) {
        sum += value;
      }
    }

    return sum;
  }
}
