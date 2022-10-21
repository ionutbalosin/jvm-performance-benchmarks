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
 * Test how compiler can elide/remove several adjacent locking blocks on non-shared objects, thus reducing the locking overhead.
 * Synchronization on non-shared objects is pointless, and runtime does not have to do anything there.
 *
 * Escape analysis is used to determine if references to an object are limited to local scope only and none of those references
 * "escape" to a broader scope.
 * If escape analysis figures out the objects are non-escaping, compiler is free to eliminate the synchronizations.
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class LockElisionBenchmark {

  private final int DEPTH = 8;

  private int defaultValue;
  private int incrementValue;

  // java -jar benchmarks/target/benchmarks.jar ".*LockElisionBenchmark.*"

  @Setup
  public void setup() {
    final Random random = new Random(16384);
    defaultValue = random.nextInt(32, 64);
    incrementValue = random.nextInt(32);
  }

  @Benchmark
  public int nested_synchronized() {
    int result = defaultValue << 1;

    Object lock = new Object();

    synchronized (lock) {
      result += incrementValue;
      synchronized (lock) {
        result += incrementValue;
        synchronized (lock) {
          result += incrementValue;
          synchronized (lock) {
            result += incrementValue;
            synchronized (lock) {
              result += incrementValue;
              synchronized (lock) {
                result += incrementValue;
                synchronized (lock) {
                  result += incrementValue;
                  synchronized (lock) {
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

    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;
    result += incrementValue;

    return result;
  }

  public int sum(int aValue) {
    Object lock = new Object();
    synchronized (lock) {
      return aValue + incrementValue;
    }
  }

  public int recursiveSum(int aValue, int depth) {
    Object lock = new Object();
    synchronized (lock) {
      if (depth == 0) {
        return aValue;
      }
      return incrementValue + recursiveSum(aValue, depth - 1);
    }
  }
}
