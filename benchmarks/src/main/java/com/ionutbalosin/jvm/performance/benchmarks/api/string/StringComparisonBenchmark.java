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

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.charArray;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils;
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

// This benchmark assumes all string matches (i.e., perform the most work)
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringComparisonBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*StringComparisonBenchmark.*"

  private static final float COMMON_ENGLISH_CHARS = 0.75f;
  private static int SLICES = 3;

  private static char[] textChArray;
  private static String textStr;
  private static String firstSlice, middleSlice, middleSliceUppercase, lastSlice;

  private static int sliceLength;

  @Param private static StringUtils.Coder coder = StringUtils.Coder.ISO_8859_1;

  @Param({"1024"})
  private static int length = 1024;

  @Setup
  public static void setup() {
    sliceLength = length / SLICES;

    // Generate encoding-specific text String
    textChArray = charArray(length, coder, COMMON_ENGLISH_CHARS);
    textStr = new String(textChArray);

    // Generate encoding-specific matching Strings by slicing the original String
    firstSlice = textStr.substring(0, sliceLength);
    middleSlice = textStr.substring(sliceLength, 2 * sliceLength);
    lastSlice = textStr.substring(2 * sliceLength);

    middleSliceUppercase = middleSlice.toUpperCase();
  }

  @Benchmark
  public static boolean starts_with() {
    return textStr.startsWith(firstSlice);
  }

  @Benchmark
  public static boolean starts_with_offset() {
    return textStr.startsWith(middleSlice, sliceLength);
  }

  @Benchmark
  public static boolean ends_with() {
    return textStr.endsWith(lastSlice);
  }

  @Benchmark
  public static boolean contains() {
    return textStr.contains(middleSlice);
  }

  @Benchmark
  public static boolean region_matches() {
    return textStr.regionMatches(sliceLength, middleSlice, 0, middleSlice.length());
  }

  @Benchmark
  public static boolean region_matches_ignore_case() {
    return textStr.regionMatches(
        true, sliceLength, middleSliceUppercase, 0, middleSliceUppercase.length());
  }

  public static void main(String args[]) {
    setup();
    System.out.println(starts_with());
    System.out.println(starts_with_offset());
    System.out.println(ends_with());
    System.out.println(contains());
    System.out.println(region_matches());
    System.out.println(region_matches_ignore_case());
  }
}
