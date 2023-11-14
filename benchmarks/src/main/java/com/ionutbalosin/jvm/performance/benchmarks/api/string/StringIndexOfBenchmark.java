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
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;

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
 * This benchmark evaluates the efficiency of index-based search operations, focusing on the
 * 'indexOf' and 'lastIndexOf' methods applied to strings. It aims to assess the effectiveness of
 * locating individual characters, substrings, and their respective occurrences within strings.
 *
 * The generated strings are encoding-specific for Latin-1 and UTF-16.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringIndexOfBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringIndexOfBenchmark.*"

  private static char[] sourceChArray;
  private static String sourceStr;
  private static int offsetIdx;

  @Param private static Coder coder = Coder.UTF16;

  @Param({"1024"})
  private static int length = 1024;

  @Setup
  public static void setup() {
    offsetIdx = 0;

    // Generate encoding-specific sources
    sourceChArray = generateCharArray(length, coder, COMMON_ENGLISH_CHARS_TARGET);
    sourceStr = new String(sourceChArray);
  }

  @Benchmark
  public static int index_of_char() {
    final char ch = sourceChArray[nextPosition()];
    return sourceStr.indexOf(ch);
  }

  @Benchmark
  public static int index_of_string() {
    final String str = String.valueOf(sourceChArray[nextPosition()]);
    return sourceStr.indexOf(str);
  }

  @Benchmark
  public static int last_index_of_char() {
    final char ch = sourceChArray[nextPosition()];
    return sourceStr.lastIndexOf(ch);
  }

  @Benchmark
  public static int last_index_of_string() {
    final String str = String.valueOf(sourceChArray[nextPosition()]);
    return sourceStr.lastIndexOf(str);
  }

  private static int nextPosition() {
    if (++offsetIdx >= length) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }

  public static void main(String args[]) {
    setup();
    System.out.println(sourceStr);
    int i = 0;
    while (i++ < 10) {
      System.out.println();
      System.out.println(index_of_char());
      System.out.println(index_of_string());
      System.out.println(last_index_of_char());
      System.out.println(last_index_of_string());
    }
  }
}
