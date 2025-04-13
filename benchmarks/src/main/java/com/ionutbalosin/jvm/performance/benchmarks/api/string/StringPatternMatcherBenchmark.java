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
package com.ionutbalosin.jvm.performance.benchmarks.api.string;

import static java.nio.charset.StandardCharsets.UTF_8;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.Stream;
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
 * Measures the performance of sequentially counting how many Strings have exactly 3 vowels while iterating through a list of words using:
 * - Pattern.matcher().find()
 * - Pattern.matcher().matches()
 * - String.matches()
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringPatternMatcherBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringPatternMatcherBenchmark.*"

  private final String SPACE = "\\s+";
  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME = CURRENT_DIR + "/benchmarks/src/main/resources/lorem_ipsum.txt";

  @Param({"^(.*[aeuio].*){3,}$"})
  private String regexp;

  private List<String> words;
  private Pattern pattern;

  @Setup
  public void setup() throws IOException {
    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(new FileInputStream(FILE_NAME), UTF_8))) {
      words =
          bufferedReader
              .lines()
              .map(line -> line.split(SPACE))
              .flatMap(Stream::of)
              .collect(Collectors.toList());
    }

    pattern = Pattern.compile(regexp);
  }

  @Benchmark
  public boolean pattern_find() {
    boolean res = false;
    for (String word : words) {
      res |= pattern.matcher(word).find();
    }
    return res;
  }

  @Benchmark
  public boolean pattern_matches() {
    boolean res = false;
    for (String word : words) {
      res |= pattern.matcher(word).matches();
    }
    return res;
  }

  @Benchmark
  public boolean string_matches() {
    boolean res = false;
    for (String word : words) {
      res |= word.matches(regexp);
    }
    return res;
  }
}
