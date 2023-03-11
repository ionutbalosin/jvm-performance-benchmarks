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
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test how the compiler can effectively coarsen/merge several adjacent synchronized blocks into one synchronized block,
 * thus reducing the locking overhead. This optimization can be applied if the same lock object is used by all methods.
 * Compilers can help to coarsen/merge the locks, but that is not guaranteed!
 *
 * OpenJDK HotSpot VM specifics:
 * - prior JDK 15: with biased locking enabled, compare-and-swap atomic operation are basically no-ops when acquiring a monitor, in case of uncontended locking.
 * It assumes that a monitor remains owned by a given thread until a different thread tries to acquire it
 * - starting JDK 15: without biased locking (or some improved version of non-biased locking), certain synchronized scenarios
 * might become much slower (i.e., since synchronized calls comes now with atomic compare-and-swap on lock)
 *
 * ZGC and Shenandoah GC have biased locking disabled to prevent safepoint operations (e.g., biased locking revocation), hence avoiding stop-the-world pauses.
 *
 * References:
 * - https://openjdk.org/jeps/374
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LockCoarseningBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LockCoarseningBenchmark.*"
  // Recommended command line options:
  // - JVM options: {-XX:-UseBiasedLocking, -XX:+UseBiasedLocking}

  private final Random random = new Random(16384);
  private final int DEPTH = 8;

  private int defaultValue;
  private int incrementValue;

  @Setup
  public void setup() {
    defaultValue = 32 + random.nextInt(64);
    incrementValue = random.nextInt(32);
  }

  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    synchronized (this) {
      result += incrementValue;
      synchronized (this) {
        result += incrementValue;
        synchronized (this) {
          result += incrementValue;
          synchronized (this) {
            result += incrementValue;
            synchronized (this) {
              result += incrementValue;
              synchronized (this) {
                result += incrementValue;
                synchronized (this) {
                  result += incrementValue;
                  synchronized (this) {
                    result += incrementValue;
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }

  @Benchmark
  public int recursive_method_calls() {
    int result = defaultValue << 1;
    result = recursiveSum(result, DEPTH);
    return result;
  }

  @Benchmark
  public int chain_method_calls() {
    int result = defaultValue << 1;

    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);
    result = sum(result);

    return result;
  }

  @Benchmark
  public int conditional_chain_method_calls() {
    int result = defaultValue << 1;

    // all conditionals are evaluated to "true"
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }
    if (result > 1 << 5) {
      result = sum(result);
    }

    return result;
  }

  @Benchmark
  public int conditional_nested_method_calls() {
    int result = defaultValue << 1;

    // all conditionals are evaluated to "true"
    if (result > 1 << 5) {
      result = sum(result);
      if (result > 1 << 5) {
        result = sum(result);
        if (result > 1 << 5) {
          result = sum(result);
          if (result > 1 << 5) {
            result = sum(result);
            if (result > 1 << 5) {
              result = sum(result);
              if (result > 1 << 5) {
                result = sum(result);
                if (result > 1 << 5) {
                  result = sum(result);
                  if (result > 1 << 5) {
                    result = sum(result);
                  }
                }
              }
            }
          }
        }
      }
    }

    return result;
  }

  @Benchmark
  public int baseline() {
    int result = defaultValue << 1;

    synchronized (this) {
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
      result += incrementValue;
    }

    return result;
  }

  public synchronized int sum(int aValue) {
    return aValue + incrementValue;
  }

  public synchronized int recursiveSum(int aValue, int depth) {
    if (depth == 0) {
      return aValue;
    }
    return incrementValue + recursiveSum(aValue, depth - 1);
  }
}
