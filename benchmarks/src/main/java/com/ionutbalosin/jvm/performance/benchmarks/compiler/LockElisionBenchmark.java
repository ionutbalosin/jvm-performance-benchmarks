package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
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
 * Test how Compiler can elide several adjacent locking blocks, thus reducing the locking overhead.
 * Synchronization on non-shared objects is futile, and thus runtime does not have to do anything there.
 * Therefore, if escape analysis figures out the objects are non-escaping, Compiler is free to eliminate synchronization.
 */

//  Pattern:
//
//    method() {
//        Object lock = new Object();
//        synchronized (lock) {
//            // statements 1
//        }
//        synchronized (lock) {
//            // statements 2
//        }
//        // ..
//    }
//
//    is equivalent to:
//
//    method() {
//        // statements 1
//        // statements 2
//        // ..
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LockElisionBenchmark {

  @Param({"42"})
  private int value;

  // java -jar benchmarks/target/benchmarks.jar ".*LockElisionBenchmark.*"

  @Benchmark
  public int lock_elision_10x() {
    int sum = 0;

    Object lock = new Object();

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    synchronized (lock) {
      sum += value;
    }

    return sum;
  }

  @Benchmark
  public int lock_baseline() {
    int sum = 0;

    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;
    sum += value;

    return sum;
  }
}
