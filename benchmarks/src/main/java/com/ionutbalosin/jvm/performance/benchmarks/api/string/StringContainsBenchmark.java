/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.COMMON_ENGLISH_CHARS_TARGET;
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.encodeCharArray;
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.ComparisonType;
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
 * This benchmark evaluates the performance of various string comparison operations, encompassing
 * 'contains', 'startsWith', 'endsWith', 'regionMatches', and their corresponding variants.
 *
 * The generated strings are specific to different encodings, particularly Latin-1 and UTF-16.
 * Furthermore, variations between these encodings (Latin-1 to UTF-16) are included to cover a wider
 * range of scenarios.
 *
 * All comparisons involving substrings examine the entire character arrays to determine the result.
 * This deliberate design aims to trigger a comprehensive number of checks, involving a higher count
 * of (char/byte arrays) comparisons to determine the result.
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringContainsBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringContainsBenchmark.*"

  private final int TARGET_COUNT = 3;

  private String source, lowercaseSource;
  private int targetLength;
  private String startTarget, middleTarget, uppercaseMiddleTarget, endTarget;

  @Param private ComparisonType comparisonType;

  @Param({"1024"})
  private int length;

  @Setup
  public void setup() {
    // Generate encoding-specific sources
    final char[] sourceChArray =
        generateCharArray(length, comparisonType.getSource(), COMMON_ENGLISH_CHARS_TARGET);
    source = new String(sourceChArray);
    lowercaseSource = source.toLowerCase();

    // Generate encoding-specific targets derived from the same source character array
    // Note: This creates equivalent Strings to the source, possibly with different encodings
    // (according to the target coder), except when converting from UTF-16 to Latin-1, which may
    // result in unequal strings due to character loss.
    final byte[] targetByteArray = encodeCharArray(sourceChArray, comparisonType.getTarget());
    final String target = new String(targetByteArray, comparisonType.getTarget().getCharset());
    targetLength = length / TARGET_COUNT;
    startTarget = target.substring(0, targetLength);
    middleTarget = target.substring(targetLength, 2 * targetLength);
    uppercaseMiddleTarget = middleTarget.toUpperCase();
    endTarget = target.substring(2 * targetLength);
  }

  @Benchmark
  public boolean contains() {
    return source.contains(middleTarget);
  }

  @Benchmark
  public boolean starts_with() {
    return source.startsWith(startTarget);
  }

  @Benchmark
  public boolean starts_with_offset() {
    return source.startsWith(middleTarget, targetLength);
  }

  @Benchmark
  public boolean ends_with() {
    return source.endsWith(endTarget);
  }

  @Benchmark
  public boolean region_matches() {
    return source.regionMatches(targetLength, middleTarget, 0, middleTarget.length());
  }

  @Benchmark
  public boolean region_matches_ignore_case() {
    return lowercaseSource.regionMatches(
        true, targetLength, uppercaseMiddleTarget, 0, uppercaseMiddleTarget.length());
  }
}
