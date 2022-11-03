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
package com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci;

import static java.math.BigInteger.ONE;
import static java.math.BigInteger.ZERO;

import com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.binet.BinetFormula;
import com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.dynamic.DynamicFormula;
import com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.iterative.IterativeFormula;
import com.ionutbalosin.jvm.performance.benchmarks.macro.fibonacci.recursive.RecursiveFormula;
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
 * Computes the nth Fibonacci number. The benchmark uses a few alternative approaches:
 * - (tail-)recursive
 * - iterative
 * - dynamic
 * - Binet's formula
 *
 * The result (i.e., nth Fibonacci number) is compared against the Binet's formula
 * to be sure the computation is not wrong.
 *
 * A tail-recursive function is a function where the last operation before the function returns is an invocation to the function itself.
 * Tail-recursive optimization avoids allocating a new stack frame by re-writing the method into a completely iterative fashion.
 *
 * Note: starting with the 93th Fibonacci number the long Java type simply overflows, so BigInteger is used instead.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(
    value = 5,
    jvmArgsAppend = {"-Xss20M"})
@State(Scope.Benchmark)
public class FibonacciBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*FibonacciBenchmark.*"

  @Param({"500", "3000"})
  private int n;

  @Setup()
  public void setup() {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        RecursiveFormula.fibonacci(n, ZERO, ONE),
        IterativeFormula.fibonacci(n, ZERO, ONE),
        DynamicFormula.fibonacci(n, ZERO, ONE),
        BinetFormula.fibonacci(n));
  }

  @Benchmark
  public BigInteger recursive() {
    return RecursiveFormula.fibonacci(n, ZERO, ONE);
  }

  @Benchmark
  public BigInteger iterative() {
    return IterativeFormula.fibonacci(n, ZERO, ONE);
  }

  @Benchmark
  public BigInteger dynamic() {
    return DynamicFormula.fibonacci(n, ZERO, ONE);
  }

  @Benchmark
  public BigInteger binet_formula() {
    return BinetFormula.fibonacci(n);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first Fibonacci number
   * @param val2 - second Fibonacci number
   * @param val3 - third Fibonacci number
   * @param val4 - fourth Fibonacci number
   */
  private void sanityCheck(BigInteger val1, BigInteger val2, BigInteger val3, BigInteger val4) {
    if (val1.compareTo(val2) != 0 || val2.compareTo(val3) != 0 || val3.compareTo(val4) != 0) {
      throw new AssertionError("Numbers are different.");
    }
  }
}
