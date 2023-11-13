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

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringReplaceBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*StringReplaceBenchmark.*"

  private static final float COMMON_ENGLISH_CHARS = 0.75f;
  private static final String REGEX = "([a-zA-Z0-9]){2,}";

  private static char[] textChArray;
  private static String textStr;
  private static int offsetIdx;
  private static String strReplacement;
  private static char chReplacement;

  @Param private static StringUtils.Coder coder = StringUtils.Coder.ISO_8859_1;

  @Param({"1024"})
  private static int length = 1024;

  @Setup
  public static void setup() {
    offsetIdx = 0;

    // Generate encoding-specific text String
    textChArray = charArray(length, coder, COMMON_ENGLISH_CHARS);
    textStr = new String(textChArray);

    // Generate encoding-specific replacement String/char
    strReplacement = new String(charArray(2, coder)); // length of 2
    chReplacement = charArray(1, coder)[0];
  }

  @Benchmark
  public static String replace_char() {
    final char target = textChArray[nextPosition()];
    return textStr.replace(target, chReplacement);
  }

  @Benchmark
  public static String replace_string() {
    final String target = String.valueOf(textChArray[nextPosition()]);
    return textStr.replace(target, strReplacement);
  }

  @Benchmark
  public static String replace_all_regexp() {
    return textStr.replaceAll(REGEX, strReplacement);
  }

  @Benchmark
  public static String replace_first_regexp() {
    return textStr.replaceFirst(REGEX, strReplacement);
  }

  public static void main(String args[]) {
    setup();
    replace_char();
    replace_string();
    replace_all_regexp();
    replace_first_regexp();
  }

  private static int nextPosition() {
    if (++offsetIdx >= length) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }
}
