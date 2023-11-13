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
import java.io.IOException;
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
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringIndexOfBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringIndexOfBenchmark.*"

  private static final float COMMON_ENGLISH_CHARS = 0.75f;

  private char[] textChArray;
  private String textStr;
  private int offsetIdx;

  @Param private StringUtils.Coder coder;

  @Param({"1024"})
  private int length;

  @Setup
  public void setup() throws IOException {
    // Generate encoding-specific text String
    textChArray = charArray(length, coder, COMMON_ENGLISH_CHARS);
    textStr = new String(textChArray);
  }

  @Benchmark
  public int index_of_char() {
    final char ch = textChArray[nextPosition()];
    return textStr.indexOf(ch);
  }

  @Benchmark
  public int index_of_string() {
    final String str = String.valueOf(textChArray[nextPosition()]);
    return textStr.indexOf(str);
  }

  @Benchmark
  public int last_index_of_char() {
    final char ch = textChArray[nextPosition()];
    return textStr.lastIndexOf(ch);
  }

  @Benchmark
  public int last_index_of_string() {
    final String str = String.valueOf(textChArray[nextPosition()]);
    return textStr.lastIndexOf(str);
  }

  private int nextPosition() {
    if (++offsetIdx >= length) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }
}
