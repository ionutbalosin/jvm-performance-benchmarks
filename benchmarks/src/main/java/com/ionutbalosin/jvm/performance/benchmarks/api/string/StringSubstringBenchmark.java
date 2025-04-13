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
 * Measures the performance of substring and subsequence operations on strings, evaluating the
 * efficiency of extracting portions of text using 'substring' and 'subSequence' methods.
 *
 * The generated strings and characters are encoding-specific for Latin-1 and UTF-16.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringSubstringBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringSubstringBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof gc

  private char[] sourceChArray;
  private String sourceStr;
  private int offsetIdx;

  @Param private Coder coder;

  @Param({"1024"})
  private int length;

  @Param({"8"})
  private int slice;

  @Setup
  public void setup() {
    offsetIdx = 0;

    // Generate encoding-specific sources
    sourceChArray = generateCommonEnglishCharArray(length, coder);
    sourceStr = new String(sourceChArray);
  }

  @Benchmark
  public String substring() {
    final int beginIndex = nextPosition();
    return sourceStr.substring(beginIndex, beginIndex + slice);
  }

  @Benchmark
  public CharSequence subsequence() {
    final int beginIndex = nextPosition();
    return sourceStr.subSequence(beginIndex, beginIndex + slice);
  }

  private int nextPosition() {
    if (++offsetIdx + slice >= length) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }
}
