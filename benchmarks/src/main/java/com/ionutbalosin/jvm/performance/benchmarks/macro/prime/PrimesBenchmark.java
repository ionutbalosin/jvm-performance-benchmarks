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
package com.ionutbalosin.jvm.performance.benchmarks.macro.prime;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.prime.lazylist.LazyListUtil.from;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.prime.lazylist.LazyListUtil.primes;
import static java.util.stream.IntStream.range;

import com.ionutbalosin.jvm.performance.benchmarks.macro.prime.eratostene.EratosthenesSieve;
import com.ionutbalosin.jvm.performance.benchmarks.macro.prime.lazylist.AList;
import com.ionutbalosin.jvm.performance.benchmarks.macro.prime.stream.SqrtStreamFilter;
import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Computes the number of prime numbers until a threshold (e.g., N) number.
 * The benchmark uses a few alternative approaches:
 * - a custom lazy list
 * - sieve of Eratosthenes
 * - a stream of prime numbers (disabled ARM due to inefficiency)
 *
 * The result (i.e., number of prime numbers) is compared against the Prime number theorem
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
@Fork(value = 5)
@State(Scope.Benchmark)
public class PrimesBenchmark {

  @Param({"1048576"})
  private int n;

  // Prime number theorem: number of primes less than N or equal to N is at least N/ln(N)
  private final double minNrOfPrimes = n / Math.log(n);

  private AList<Integer> lazyList;

  // java -jar benchmarks/target/benchmarks.jar ".*PrimesBenchmark.*"

  @Setup(Level.Invocation)
  public void setup() throws IOException {
    final int FIRST_PRIME = 2;
    lazyList = primes(from(FIRST_PRIME));
  }

  // Note: this is quite a slow/inefficient implementation, temporary disabled
  // @Benchmark
  public long lazy_list() {
    long numberOfPrimes = 0;

    while (!lazyList.isEmpty() && (lazyList.head() < n)) {
      numberOfPrimes++;
      lazyList = lazyList.tail();
    }
    sanityCheck(numberOfPrimes);

    return numberOfPrimes;
  }

  @Benchmark
  public long sqrt_stream() {
    long numberOfPrimes = range(2, n).filter(SqrtStreamFilter::isPrime).count();
    sanityCheck(numberOfPrimes);
    return numberOfPrimes;
  }

  @Benchmark
  public long eratosthenes_sieve() {
    long numberOfPrimes = EratosthenesSieve.primes(n);
    sanityCheck(numberOfPrimes);
    return numberOfPrimes;
  }

  private void sanityCheck(long numberOfPrimes) {
    // this branch should never be taken unless the computation is wrong
    if (numberOfPrimes < minNrOfPrimes) {
      throw new AssertionError(
          "Invalid number of primes. Expected at least "
              + minNrOfPrimes
              + " but found "
              + numberOfPrimes
              + ".");
    }
  }
}
