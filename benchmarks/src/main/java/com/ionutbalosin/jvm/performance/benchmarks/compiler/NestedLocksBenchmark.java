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
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how Compiler can effectively merge several nested synchronized blocks that use the same (local and global) lock, thus reducing the locking overhead.
 */
//
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
@Fork(value = 5)
@State(Scope.Benchmark)
public class NestedLocksBenchmark {

  @Param({"42"})
  private int value;

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
