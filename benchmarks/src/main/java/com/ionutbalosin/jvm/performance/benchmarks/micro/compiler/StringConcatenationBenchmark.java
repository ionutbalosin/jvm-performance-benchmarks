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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

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

  @Param({"128"})
  private int capacity;

  @Param private CODER coder;

  @Setup
  public void setup() {
    final char charValue;
    switch (coder) {
      case LATIN1:
        charValue = 'a';
        break;
      case UTF16:
        charValue = 'ʬ';
        break;
      default:
        throw new UnsupportedOperationException("Unsupported coder type " + coder);
    }

    final StringBuilder sb = new StringBuilder(capacity);
    for (int i = 0; i < capacity; i++) {
      sb.append((char) (charValue + random.nextInt(26)));
    }
    aString = sb.toString();
    anInt = random.nextInt();
    aFloat = random.nextFloat();
    aLong = random.nextLong();
    aDouble = random.nextDouble();
    aBool = random.nextBoolean();
  }

  @Benchmark
  public String string_builder() {
    // explicitly do not set a StringBuilder capacity (i.e., the cost is impacted by the byte array
    // resizing)
    return new StringBuilder()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(aLong)
        .append(aDouble)
        .append(aBool)
        .toString();
  }

  @Benchmark
  public String string_buffer() {
    // explicitly do not set a StringBuffer capacity (i.e., the cost is impacted by the byte array
    // resizing)
    return new StringBuffer()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(aLong)
        .append(aDouble)
        .append(aBool)
        .toString();
  }

  @Benchmark
  public String string_format() {
    return String.format("%s%s%s%s%s%s", aString, anInt, aFloat, aLong, aDouble, aBool);
  }

  @Benchmark
  public String plus_operator() {
    return aString + anInt + aFloat + aLong + aDouble + aBool;
  }

  public enum CODER {
    LATIN1,
    UTF16;
  }
}
