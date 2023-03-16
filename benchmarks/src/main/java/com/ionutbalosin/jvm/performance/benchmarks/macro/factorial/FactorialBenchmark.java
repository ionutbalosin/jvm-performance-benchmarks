/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
 *
 * Author: Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
 *
 * Co-author: Florin Blanaru
 * Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
 *
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.ionutbalosin.jvm.performance.benchmarks.macro.factorial;

import com.ionutbalosin.jvm.performance.benchmarks.macro.factorial.array.ArrayMultiply;
import com.ionutbalosin.jvm.performance.benchmarks.macro.factorial.biginteger.BigIntegerMultiply;
import com.ionutbalosin.jvm.performance.benchmarks.macro.factorial.forkjoin.ForkJoinFactorial;
import java.math.BigInteger;
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
 * Calculates the factorial of a number. The benchmark uses a few alternative approaches:
 * - BigInteger multiply
 * - an array of bytes (i.e., by manually crafting the multiplication)
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class FactorialBenchmark {

  // $ java -jar */*/benchmarks.jar ".*FactorialBenchmark.*"

  private ArrayMultiply arrayMultiply;

  @Param({"1000", "5000"})
  private int n;

  @Setup()
  public void setup() {
    arrayMultiply = new ArrayMultiply(n);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        arrayMultiply.factorial(), BigIntegerMultiply.factorial(n), ForkJoinFactorial.factorial(n));
  }

  @Benchmark
  public byte[] array_multiply() {
    return arrayMultiply.factorial();
  }

  @Benchmark
  public BigInteger big_integer_multiply() {
    return BigIntegerMultiply.factorial(n);
  }

  @Benchmark
  public BigInteger fork_join() {
    return ForkJoinFactorial.factorial(n);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first factorial number as an array of bytes in reverse order. Each byte
   *     represents a figure (from 0 to 9)
   * @param val2 - second factorial number
   * @param val3 - third factorial number
   * @throws AssertionError if the results are not the same
   */
  private void sanityCheck(byte[] val1, BigInteger val2, BigInteger val3) {
    // compare val1 with val2
    int size1 = val1.length;
    char[] chars2 = val2.toString().toCharArray();
    for (char ch2 : chars2) {
      if (ch2 != '0' + val1[--size1]) {
        throw new AssertionError("Numbers are different.");
      }
    }
    if (val2.compareTo(val3) != 0) {
      throw new AssertionError("Numbers are different.");
    }
  }
}
