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

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;
import static java.lang.String.valueOf;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder;
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
 * Measures the performance of concatenating different types (e.g., String, int, float, long,
 * double, boolean, Object) into a String object using various methods:
 * - StringBuilder
 * - StringBuffer
 * - String.concat()
 * - String.format()
 * - MessageFormat
 * - plus operator
 *
 * The input String concatenated with other types consists of either Latin-1 or UTF-16 characters.
 *
 * Note: The number of allocations during benchmarking may have a slight influence on the overall
 * results but doesn't fundamentally alter the outcomes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringConcatenationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringConcatenationBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof gc

  private final Random random = new Random(16384);

  private String aString;
  private int anInt;
  private float aFloat;
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
    aLong = random.nextLong();
    aDouble = random.nextDouble();
    aBool = random.nextBoolean();
    anObject = random.nextLong();
  }

  @Benchmark
  public String string_builder() {
    // Do not explicitly set a capacity
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
  public String string_buffer() {
    // Do not explicitly set a capacity
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
  public String string_concat() {
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
  public String string_format() {
    return String.format(
        "%s%d%.8f%d%.17f%b%s", aString, anInt, aFloat, aLong, aDouble, aBool, anObject);
  }

  @Benchmark
  public String message_format() {
    final MessageFormat mf =
        new MessageFormat(
            "{0}{1,number,#}{2,number,#.########}{3,number,#}{4,number,#.#################}{5}{6,number,#.##########}");
    return mf.format(new Object[] {aString, anInt, aFloat, aLong, aDouble, aBool, anObject});
  }

  @Benchmark
  public String plus_operator() {
    return aString + anInt + aFloat + aLong + aDouble + aBool + anObject;
  }
}
