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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome;

import static java.nio.charset.StandardCharsets.UTF_8;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate;
import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.concurrent.TimeUnit;
import java.util.function.Predicate;
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
 * Iterates through a list of Strings read from a file and checks, for each String, if it is a palindrome.
 * The benchmark uses a few alternative approaches:
 * - trampolines
 * - recursive
 * - iterative
 *
 * The trampoline pattern is used for implementing algorithms recursively but without
 * blowing the stack (as an alternative to recursive functions).
 * A trampoline is an iteration applying a list of functions, where each function returns
 * the next function to be called.
 *
 * The result (i.e., number of palindromes) is compared against a known constant number
 * to be sure the computation is not wrong.
 *
 * References:
 * - code examples by Mario Fusco (Twitter: @mariofusco)
 * - https://github.com/mariofusco/javaz/tree/master/src/main/java/org/javaz/trampoline
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(
    value = 5,
    jvmArgsAppend = {"-Xss20M"})
@State(Scope.Benchmark)
public class PalindromeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PalindromeBenchmark.*"

  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME = CURRENT_DIR + "/benchmarks/src/main/resources/palindrome.list";
  // Expected number of palindromes in the file "palindrome.list" is known to be 29
  private final int EXPECTED_PALINDROME_COUNT = 29;

  private final TrampolinePredicate trampolinePredicate = new TrampolinePredicate();
  private final RecursivePredicate recursivePredicate = new RecursivePredicate();
  private final IterativePredicate iterativePredicate = new IterativePredicate();
  private final FunctionalPredicate functionalPredicate = new FunctionalPredicate();

  @Setup()
  public void setup() throws IOException {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        palindromes(trampolinePredicate),
        palindromes(recursivePredicate),
        palindromes(iterativePredicate),
        palindromes(functionalPredicate));
  }

  @Benchmark
  public long trampoline() throws IOException {
    return palindromes(trampolinePredicate);
  }

  @Benchmark
  public long recursive() throws IOException {
    return palindromes(recursivePredicate);
  }

  @Benchmark
  public long iterative() throws IOException {
    return palindromes(iterativePredicate);
  }

  @Benchmark
  public long functional() throws IOException {
    return palindromes(functionalPredicate);
  }

  private long palindromes(Predicate<String> predicate) throws IOException {
    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(new FileInputStream(FILE_NAME), UTF_8))) {
      return bufferedReader.lines().filter(predicate).count();
    }
  }

  private void sanityCheck(long val1, long val2, long val3, long val4) {
    if (val1 != EXPECTED_PALINDROME_COUNT
        || val2 != EXPECTED_PALINDROME_COUNT
        || val3 != EXPECTED_PALINDROME_COUNT
        || val4 != EXPECTED_PALINDROME_COUNT) {
      throw new AssertionError("Different number of palindromes.");
    }
  }
}
