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

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCommonEnglishCharArray;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder;
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
 * This benchmark evaluates the performance of various string replacement operations, measuring the
 * efficiency of character-based and string-based replacements. It assesses the effectiveness of
 * replacing individual characters or substrings within strings, employing different methods such as
 * 'replace', 'replaceAll', and 'replaceFirst'.
 *
 * The generated strings and characters are encoding-specific for Latin-1 and UTF-16.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringReplaceBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringReplaceBenchmark.*"

  private final String REGEX = "([a-zA-Z0-9]){2,}";

  private char[] sourceChArray;
  private String sourceStr;
  private int offsetIdx;
  private String replacementStr;
  private char replacementCh;

  @Param private Coder coder;

  @Param({"1024"})
  private int length;

  @Setup
  public void setup() {
    offsetIdx = 0;

    // Generate encoding-specific sources
    sourceChArray = generateCommonEnglishCharArray(length, coder);
    sourceStr = new String(sourceChArray);

    // Generate encoding-specific targets
    replacementStr = new String(generateCharArray(2, coder)); // a (short) String of 2 chars
    replacementCh = generateCharArray(1, coder)[0];
  }

  @Benchmark
  public String replace_char() {
    final char target = sourceChArray[nextPosition()];
    return sourceStr.replace(target, replacementCh);
  }

  @Benchmark
  public String replace_string() {
    final String target = String.valueOf(sourceChArray[nextPosition()]);
    return sourceStr.replace(target, replacementStr);
  }

  @Benchmark
  public String replace_all_regexp() {
    return sourceStr.replaceAll(REGEX, replacementStr);
  }

  @Benchmark
  public String replace_first_regexp() {
    return sourceStr.replaceFirst(REGEX, replacementStr);
  }

  private int nextPosition() {
    if (++offsetIdx >= length) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }
}
