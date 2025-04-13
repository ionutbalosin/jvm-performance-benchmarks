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

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder;
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

import java.text.MessageFormat;
import java.util.Random;
import java.util.concurrent.TimeUnit;

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;
import static java.util.FormatProcessor.FMT;

/*
 * This benchmark measures the performance of different formatting approaches utilizing various data types
 * (e.g., String, int, float, char, long, double, boolean, Object) using different methods:
 * - String.format()
 * - MessageFormat.format() with both constant or dynamically allocated message formatter in the benchmark method
 * - String.formatted()
 * - FormatProcessor
 *
 * The input String and char consist of characters encoded in either Latin-1 or UTF-16.
 *
 * Note: The benchmark might encompass different allocations, potentially impacting the overall results.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringFormatBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringFormatBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof gc

  private final Random random = new Random(16384);
  private final MessageFormat MESSAGE_FORMAT = new MessageFormat(
          "{0}{1,number,0}{2,number,0.00000000}{3}{4,number,0}{5,number,0.00000000000000000}{6}{7,number,0}");

  private String aString;
  private int anInt;
  private float aFloat;
  private char aChar;
  private long aLong;
  private double aDouble;
  private boolean aBool;
  private Object anObject;

  @Param({"128"})
  private int length;

  @Param private Coder coder;

  @Setup
  public void setup() {
    aString = new String(generateCharArray(length, coder));
    anInt = random.nextInt();
    aFloat = random.nextFloat();
    aChar = generateCharArray(1, coder)[0];
    aLong = random.nextLong();
    aDouble = random.nextDouble();
    aBool = random.nextBoolean();
    anObject = random.nextLong();
  }

  @Benchmark
  public String string_format() {
    return String.format(
        "%s%d%.8f%s%d%.17f%b%s", aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public String message_format_new() {
    final MessageFormat mf =
        new MessageFormat(
            "{0}{1,number,0}{2,number,0.00000000}{3}{4,number,0}{5,number,0.00000000000000000}{6}{7,number,0}");
    return mf.format(new Object[] {aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject});
  }

  @Benchmark
  public String message_format_constant() {
    return MESSAGE_FORMAT.format(new Object[] {aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject});
  }

  @Benchmark
  public String string_formatted() {
    return "%s%d%.8f%s%d%.17f%b%s".formatted(aString, anInt, aFloat, aChar, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public String format_processor() {
    return FMT."%s\{aString}%d\{anInt}%.8f\{aFloat}%s\{aChar}%d\{aLong}%.17f\{aDouble}%b\{aBool}%s\{anObject}";
  }
}
