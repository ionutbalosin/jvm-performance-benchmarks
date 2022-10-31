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
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.TearDown;
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
  private final int PALINDROMES = 29;
  private final URL URL = getClass().getClassLoader().getResource(FILE_NAME);

  private BufferedReader bufferedReader;
  private TrampolinePredicate trampolinePalindrome;
  private RecursivePredicate recursivePredicate;
  private IterativePredicate iterativePredicate;

  // java -jar benchmarks/target/benchmarks.jar ".*PalindromeBenchmark.*"

  @Setup(Level.Invocation)
  public void setup() throws IOException {
    bufferedReader = new BufferedReader(new InputStreamReader(URL.openStream()));
    trampolinePalindrome = new TrampolinePredicate();
    recursivePredicate = new RecursivePredicate();
    iterativePredicate = new IterativePredicate();
  }

  @TearDown(Level.Invocation)
  public void tearDown() throws IOException {
    if (bufferedReader != null) {
      bufferedReader.close();
    }
  }

  @Benchmark
  public long trampoline() {
    long numberOfPalindromes = bufferedReader.lines().filter(trampolinePalindrome).count();
    sanityCheck(numberOfPalindromes);
    return numberOfPalindromes;
  }

  @Benchmark
  public long recursive() {
    long numberOfPalindromes = bufferedReader.lines().filter(recursivePredicate).count();
    sanityCheck(numberOfPalindromes);
    return numberOfPalindromes;
  }

  @Benchmark
  public long iterative() {
    long numberOfPalindromes = bufferedReader.lines().filter(iterativePredicate).count();
    sanityCheck(numberOfPalindromes);
    return numberOfPalindromes;
  }

  private void sanityCheck(long numberOfPalindromes) {
    // this branch should never be taken unless the computation is wrong
    if (numberOfPalindromes != PALINDROMES) {
      throw new AssertionError(
          "Invalid number of palindromes. Expected "
              + PALINDROMES
              + " but found "
              + numberOfPalindromes
              + ".");
    }
  }
}
