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

  private ArrayMultiply arrayMultiply;

  // java -jar benchmarks/target/benchmarks.jar ".*FactorialBenchmark.*"

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
