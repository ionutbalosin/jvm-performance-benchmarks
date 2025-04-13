/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci;

import static java.math.BigInteger.ONE;
import static java.math.BigInteger.ZERO;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.binet.BinetFormula;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.dynamic.DynamicFormula;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.functional.FunctionalFormula;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.iterative.IterativeFormula;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.fibonacci.recursive.RecursiveFormula;
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
 * - functional
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

  // $ java -jar */*/benchmarks.jar ".*FibonacciBenchmark.*"

  @Param({"500", "3000"})
  private int n;

  @Setup()
  public void setup() {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        RecursiveFormula.fibonacci(n, ZERO, ONE),
        IterativeFormula.fibonacci(n, ZERO, ONE),
        DynamicFormula.fibonacci(n, ZERO, ONE),
        FunctionalFormula.fibonacci(n, ZERO, ONE),
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
  public BigInteger functional() {
    return FunctionalFormula.fibonacci(n, ZERO, ONE);
  }

  @Benchmark
  public BigInteger dynamic() {
    return DynamicFormula.fibonacci(n, ZERO, ONE);
  }

  @Benchmark
  public BigInteger binet_formula() {
    return BinetFormula.fibonacci(n);
  }

  private void sanityCheck(
      BigInteger val1, BigInteger val2, BigInteger val3, BigInteger val4, BigInteger val5) {
    if (val1.compareTo(val2) != 0
        || val2.compareTo(val3) != 0
        || val3.compareTo(val4) != 0
        || val4.compareTo(val5) != 0) {
      throw new AssertionError("The Fibonacci numbers are different.");
    }
  }
}
