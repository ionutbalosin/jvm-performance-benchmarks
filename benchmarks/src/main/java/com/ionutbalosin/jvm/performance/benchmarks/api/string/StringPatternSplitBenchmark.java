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
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
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
 * Measures the performance of splitting a very long text (i.e., a sequence of words separated by empty spaces) by either one or two characters, using the below methods:
 * - Pattern.split()
 * - String.split()
 * The number of allocations during this benchmark is not neglectable, and it influences the overall results. It could be partially mitigated by using a shorter text.
 *
 * Note:
 * - String.split() has a fast-path for:
 *   - one-char String and this character is not one of the RegEx's meta characters ".$|()[{^?*+\\", or
 *   - two-char String and the first char is the backslash and the second is not the ascii digit or ascii letter.
 * - Pattern.split() reuses the pattern, it saves a few cycles in comparison to String.split()
 *
 * Note: The number of allocations during benchmarking is not neglectable, and it influences the overall results.
 * It could be partially mitigated by using a smaller text.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringPatternSplitBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringPatternSplitBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof gc

  private final String SPACE = "\\s+";
  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME = CURRENT_DIR + "/benchmarks/src/main/resources/lorem_ipsum.txt";

  @Param({"_", "__"})
  private String regexp;

  private String text;
  private Pattern pattern;

  @Setup
  public void setup() throws IOException {
    String loremIpsumText;
    try (BufferedReader bufferedReader =
        new BufferedReader(new InputStreamReader(new FileInputStream(FILE_NAME), UTF_8))) {
      loremIpsumText = bufferedReader.lines().collect(Collectors.joining(" "));
    }

    pattern = Pattern.compile(regexp);
    text = loremIpsumText.replaceAll(SPACE, regexp);
  }

  @Benchmark
  public String[] string_split() {
    return text.split(regexp);
  }

  @Benchmark
  public String[] pattern_split() {
    return pattern.split(text);
  }
}
