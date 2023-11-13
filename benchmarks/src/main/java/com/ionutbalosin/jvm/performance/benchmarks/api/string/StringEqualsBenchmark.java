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
import java.nio.CharBuffer;
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
public class StringEqualsBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*StringEqualsBenchmark.*"

  private static final float COMMON_ENGLISH_CHARS = 0.75f;

  private static String textStr, textStrLowercase, textStrDuplicated;
  private static StringBuilder textSb;
  private static CharSequence textChSeq;

  @Param private static StringUtils.Coder coder = StringUtils.Coder.ISO_8859_1;

  @Param({"1024"})
  private static int length = 1024;

  @Setup
  public static void setup() {
    // Generate encoding-specific text Strings
    final char[] textChArray = charArray(length, coder, COMMON_ENGLISH_CHARS);
    textStr = new String(textChArray);
    textStrLowercase = textStr.toLowerCase();
    textStrDuplicated = new String(textChArray);
    textSb = new StringBuilder(textStr);
    final CharBuffer textChBuffer = CharBuffer.wrap(textChArray);
    textChSeq = textChBuffer.subSequence(0, textChArray.length);
  }

  @Benchmark
  public static boolean equals() {
    return textStr.equals(textStrDuplicated);
  }

  @Benchmark
  public static boolean equals_ignore_case() {
    return textStr.equalsIgnoreCase(textStrLowercase);
  }

  @Benchmark
  public static boolean content_equals_string() {
    return textStr.contentEquals(textStrDuplicated);
  }

  @Benchmark
  public static boolean equals_content_string_builder() {
    return textStr.contentEquals(textSb);
  }

  @Benchmark
  public static boolean equals_content_char_sequence() {
    return textStr.contentEquals(textChSeq);
  }

  public static void main(String args[]) {
    setup();
    System.out.println(equals());
    System.out.println(equals_ignore_case());
    System.out.println(content_equals_string());
    System.out.println(equals_content_string_builder());
    System.out.println(equals_content_char_sequence());
  }
}
