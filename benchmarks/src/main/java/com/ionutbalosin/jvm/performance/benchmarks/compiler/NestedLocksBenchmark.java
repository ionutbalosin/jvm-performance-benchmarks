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
 * Test how Compiler can effectively merge several nested synchronized blocks that use the same (local and global) lock, thus reducing the locking overhead.
 */

//  Pattern:
//
//    global_locks_10x() {
//        synchronized (this) {
//            // statements 1
//            synchronized (this) {
//                // statements 2
//                synchronized (this) {
//                    // ...
//                }
//            }
//        }
//    }
//
//    is equivalent to:
//
//    global_locks_baseline() {
//        synchronized (this) {
//            // statements 1
//            // statements 2
//            // ..
//        }
//    }
//
//    local_locks_10x() {
//        Object lock = new Object();
//        synchronized (lock) {
//            // statements 1
//            synchronized (lock) {
//                // statements 2
//                synchronized (lock) {
//                    // ...
//                }
//            }
//        }
//    }
//
//    is equivalent to:
//
//    local_locks_baseline() {
//        // statements 1
//        // statements 2
//        // ..
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class NestedLocksBenchmark {

  @Param({"42"})
  private int value;

  // java -jar benchmarks/target/benchmarks.jar ".*RecursiveLockBenchmark.*"

  @Benchmark
  public int global_locks_10x() {
    int sum = 0;

    synchronized (this) {
      sum += value;
      synchronized (this) {
        sum += value;
        synchronized (this) {
          sum += value;
          synchronized (this) {
            sum += value;
            synchronized (this) {
              sum += value;
              synchronized (this) {
                sum += value;
                synchronized (this) {
                  sum += value;
                  synchronized (this) {
                    sum += value;
                    synchronized (this) {
                      sum += value;
                      synchronized (this) {
                        sum += value;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return sum;
  }

  @Benchmark
  public int global_locks_baseline() {
    int sum = 0;

    synchronized (this) {
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
    }

    return sum;
  }

  @Benchmark
  public int local_locks_10x() {
    int sum = 0;

    Object lock = new Object();

    synchronized (lock) {
      sum += value;
      synchronized (lock) {
        sum += value;
        synchronized (lock) {
          sum += value;
          synchronized (lock) {
            sum += value;
            synchronized (lock) {
              sum += value;
              synchronized (lock) {
                sum += value;
                synchronized (lock) {
                  sum += value;
                  synchronized (lock) {
                    sum += value;
                    synchronized (lock) {
                      sum += value;
                      synchronized (lock) {
                        sum += value;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    return sum;
  }

  @Benchmark
  public int local_locks_baseline() {
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
