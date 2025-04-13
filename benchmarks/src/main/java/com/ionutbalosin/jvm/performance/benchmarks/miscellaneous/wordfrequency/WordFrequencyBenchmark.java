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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.functional.ParallelStreamWordFrequency;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.functional.PatternStreamWordFrequency;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.iterative.IterativeWordFrequency;
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

  // $ java -jar */*/benchmarks.jar ".*WordFrequencyBenchmark.*"

  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME =
      CURRENT_DIR + "/benchmarks/src/main/resources/word_frequency.txt";

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

  private void sanityCheck(Map<String, Long> val1, Map<String, Long> val2, Map<String, Long> val3) {
    if (val1.isEmpty()
        || val2.isEmpty()
        || val3.isEmpty()
        || !val1.equals(val2)
        || !val2.equals(val3)) {
      throw new AssertionError("Word frequencies do not match as expected.");
    }
  }
}
