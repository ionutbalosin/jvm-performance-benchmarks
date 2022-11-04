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
package com.ionutbalosin.jvm.performance.benchmarks.macro.wordfrequency;

import com.ionutbalosin.jvm.performance.benchmarks.macro.wordfrequency.iterative.IterativeWordFrequency;
import com.ionutbalosin.jvm.performance.benchmarks.macro.wordfrequency.parallelstream.ParallelStreamWordFrequency;
import com.ionutbalosin.jvm.performance.benchmarks.macro.wordfrequency.patternstream.PatternStreamWordFrequency;
import java.io.IOException;
import java.net.URISyntaxException;
import java.util.Map;
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
 * Computes the word frequencies/occurrences from a text file.
 * The benchmark uses a few alternative approaches:
 * - iterative
 * - parallel streams
 * - pattern streams
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class WordFrequencyBenchmark {

  private static final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private static final String FILE_NAME =
      CURRENT_DIR + "/benchmarks/src/main/resources/word_frequency.txt";

  // java -jar benchmarks/target/benchmarks.jar ".*WordFrequencyBenchmark.*"

  @Setup()
  public void setup() throws IOException, URISyntaxException {
    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        IterativeWordFrequency.frequencies(FILE_NAME),
        ParallelStreamWordFrequency.frequencies(FILE_NAME),
        PatternStreamWordFrequency.frequencies(FILE_NAME));
  }

  @Benchmark
  public Map<String, Long> iterative() throws IOException {
    return IterativeWordFrequency.frequencies(FILE_NAME);
  }

  @Benchmark
  public Map<String, Long> parallel_stream() throws IOException {
    return ParallelStreamWordFrequency.frequencies(FILE_NAME);
  }

  @Benchmark
  public Map<String, Long> pattern_stream() throws IOException {
    return PatternStreamWordFrequency.frequencies(FILE_NAME);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first word frequencies
   * @param val2 - second word frequencies
   * @param val3 - third word frequencies
   */
  private void sanityCheck(Map<String, Long> val1, Map<String, Long> val2, Map<String, Long> val3) {
    if (val1.isEmpty()
        || val2.isEmpty()
        || val3.isEmpty()
        || !val1.equals(val2)
        || !val2.equals(val3)) {
      throw new AssertionError("Word frequencies are not as expected.");
    }
  }
}
