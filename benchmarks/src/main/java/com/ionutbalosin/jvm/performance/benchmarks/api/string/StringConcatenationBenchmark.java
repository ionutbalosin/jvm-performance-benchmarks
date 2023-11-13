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
import static java.lang.String.valueOf;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils;
import java.text.MessageFormat;
import java.util.Random;
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
 * Measures the performance of concatenating different types (e.g., String, int, float, long, double, boolean, Object) into a String object using:
 * - StringBuilder
 * - StringBuffer
 * - String.format()
 * - String.concat()
 * - MessageFormat
 * - plus operator
 * The input String to be concatenated with the other types has either LATIN_1 or UTF_16 characters.
 *
 * Note: The number of allocations during benchmarking slightly influences the overall results but not fundamentally.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringConcatenationBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*StringConcatenationBenchmark.*" -prof gc

  private static final Random random = new Random(16384);

  private static String aString;
  private static int anInt;
  private static float aFloat;
  private static long aLong;
  private static double aDouble;
  private static boolean aBool;
  private static Object anObject;

  @Param({"128"})
  private static int length = 128;

  @Param private static StringUtils.Coder coder = StringUtils.Coder.ISO_8859_1;

  @Setup
  public static void setup() {
    aString = new String(charArray(length, coder));
    anInt = random.nextInt();
    aFloat = random.nextFloat();
    aLong = random.nextLong();
    aDouble = random.nextDouble();
    aBool = random.nextBoolean();
    anObject = random.nextLong();
  }

  @Benchmark
  public static String string_builder() {
    // explicitly do not set a capacity
    return new StringBuilder()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(aLong)
        .append(aDouble)
        .append(aBool)
        .append(anObject)
        .toString();
  }

  @Benchmark
  public static String string_buffer() {
    // explicitly do not set a capacity
    return new StringBuffer()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(aLong)
        .append(aDouble)
        .append(aBool)
        .append(anObject)
        .toString();
  }

  @Benchmark
  public static String string_concat() {
    return new String()
        .concat(aString)
        .concat(valueOf(anInt))
        .concat(valueOf(aFloat))
        .concat(valueOf(aLong))
        .concat(valueOf(aDouble))
        .concat(valueOf(aBool))
        .concat(valueOf(anObject));
  }

  @Benchmark
  public static String string_format() {
    return String.format(
        "%s%d%.8f%d%.17f%b%s", aString, anInt, aFloat, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public static String message_format() {
    final MessageFormat mf =
        new MessageFormat(
            "{0}{1,number,#}{2,number,#.########}{3,number,#}{4,number,#.#################}{5}{6,number,#.##########}");
    return mf.format(new Object[] {aString, anInt, aFloat, aLong, aDouble, aBool, anObject});
  }

  @Benchmark
  public static String plus_operator() {
    return aString + anInt + aFloat + aLong + aDouble + aBool + anObject;
  }

  public static void main(String args[]) {
    setup();
    System.out.println(string_builder());
    System.out.println(string_buffer());
    System.out.println(string_concat());
    System.out.println(string_format());
    System.out.println(message_format());
    System.out.println(plus_operator());
  }
}
