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
package com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome;

import com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome.iterative.IterativePredicate;
import com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome.recursive.RecursivePredicate;
import com.ionutbalosin.jvm.performance.benchmarks.macro.palindrome.trampoline.TrampolinePredicate;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
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

  private final String FILE_NAME = "palindrome.list";
  private final URL URL = getClass().getClassLoader().getResource(FILE_NAME);
  private final TrampolinePredicate trampolinePredicate = new TrampolinePredicate();
  private final RecursivePredicate recursivePredicate = new RecursivePredicate();
  private final IterativePredicate iterativePredicate = new IterativePredicate();

  // java -jar benchmarks/target/benchmarks.jar ".*PalindromeBenchmark.*"

  @Setup()
  public void setup() throws IOException {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        palindromes(trampolinePredicate),
        palindromes(recursivePredicate),
        palindromes(iterativePredicate));
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

  private long palindromes(Predicate<String> predicate) throws IOException {
    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(URL.openStream()))) {
      return bufferedReader.lines().filter(predicate).count();
    }
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first number of palindromes
   * @param val2 - second number of palindromes
   * @param val3 - second number of palindromes
   */
  private void sanityCheck(long val1, long val2, long val3) {
    // It is known in advance the file "palindrome.list" contains 29 palindromes
    final int PALINDROMES = 29;
    if (val1 != PALINDROMES || val2 != PALINDROMES || val3 != PALINDROMES) {
      throw new AssertionError("Different number of palindromes.");
    }
  }
}
