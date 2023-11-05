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
 * - MessageFormat
 * - plus operator
 * The input String to be concatenated with the other types has either LATIN1 or UTF16 characters.
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

  private final Random random = new Random(16384);

  private String aString;
  private int anInt;
  private float aFloat;
  private long aLong;
  private double aDouble;
  private boolean aBool;
  private Object anObject;

  @Param({"128"})
  private int capacity;

  @Param private Coder coder;

  @Setup
  public void setup() {
    final char aChar;
    switch (coder) {
      case LATIN1:
        aChar = 'a';
        break;
      case UTF16:
        aChar = 'ʬ';
        break;
      default:
        throw new UnsupportedOperationException("Unsupported coder type " + coder);
    }

    final StringBuilder sb = new StringBuilder(capacity);
    for (int i = 0; i < capacity; i++) {
      sb.append((char) (aChar + random.nextInt(26)));
    }
    aString = sb.toString();
    anInt = random.nextInt();
    aFloat = random.nextFloat();
    aLong = random.nextLong();
    aDouble = random.nextDouble();
    aBool = random.nextBoolean();
    anObject = random.nextLong();
  }

  @Benchmark
  public String string_builder() {
    // explicitly do not set a capacity (i.e., the cost is impacted by the byte array resizing)
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
    // explicitly do not set a capacity (i.e., the cost is impacted by the byte array resizing)
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

  public enum Coder {
    LATIN1,
    UTF16;
  }
}
