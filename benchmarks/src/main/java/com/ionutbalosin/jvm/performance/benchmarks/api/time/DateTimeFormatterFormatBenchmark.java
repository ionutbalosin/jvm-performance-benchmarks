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
package com.ionutbalosin.jvm.performance.benchmarks.api.time;

import java.time.Instant;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
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
 * Assesses the performance of formatting date and time using various pre-defined DateTimeFormatter
 * instances available in Java's DateTimeFormatter API. This benchmark evaluates the efficiency of
 * formatting operations for different temporal accessors, such as ZonedDateTime and OffsetDateTime,
 * with selected DateTimeFormatter types. It measures the speed of formatting date and time data
 * both as String output and direct StringBuilder manipulation using the format() and formatTo()
 * methods respectively.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DateTimeFormatterFormatBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DateTimeFormatterFormatBenchmark.*"

  private final Random random = new Random(16384);

  @Param private DateTimeFormatterType formatterType;
  @Param private TemporalAccessorType temporalType;

  private DateTimeFormatter formatter;
  private TemporalAccessor accessor;
  private StringBuilder sb;

  @Setup
  public void setup() {
    formatter =
        switch (formatterType) {
          case BASIC_ISO_DATE -> DateTimeFormatter.BASIC_ISO_DATE;
          case ISO_OFFSET_DATE -> DateTimeFormatter.ISO_OFFSET_DATE;
          case ISO_OFFSET_TIME -> DateTimeFormatter.ISO_OFFSET_TIME;
          case ISO_OFFSET_DATE_TIME -> DateTimeFormatter.ISO_OFFSET_DATE_TIME;
          case ISO_ZONED_DATE_TIME -> DateTimeFormatter.ISO_ZONED_DATE_TIME;
          case ISO_ORDINAL_DATE -> DateTimeFormatter.ISO_ORDINAL_DATE;
          case ISO_WEEK_DATE -> DateTimeFormatter.ISO_WEEK_DATE;
          case ISO_INSTANT -> DateTimeFormatter.ISO_INSTANT;
          case RFC_1123_DATE_TIME -> DateTimeFormatter.RFC_1123_DATE_TIME;
        };

    final long epochSecond = random.nextLong(0, 315_537_963_048L); // approx 9,999 yr
    final int nanoAdjustment = random.nextInt(0, 1_000_000_000);

    sb = new StringBuilder();

    accessor =
        switch (temporalType) {
          case ZONED_DATE_TIME ->
              ZonedDateTime.ofInstant(
                  Instant.ofEpochSecond(epochSecond, nanoAdjustment), ZoneOffset.UTC);
          case OFFSET_DATE_TIME ->
              OffsetDateTime.ofInstant(
                  Instant.ofEpochSecond(epochSecond, nanoAdjustment), ZoneOffset.UTC);
        };
  }

  @Benchmark
  public String format() {
    return formatter.format(accessor);
  }

  @Benchmark
  public StringBuilder format_to() {
    sb.setLength(0); // reset the reusable buffer
    formatter.formatTo(accessor, sb);
    return sb;
  }

  public enum DateTimeFormatterType {
    BASIC_ISO_DATE,
    ISO_OFFSET_DATE,
    ISO_OFFSET_TIME,
    ISO_OFFSET_DATE_TIME,
    ISO_ZONED_DATE_TIME,
    ISO_ORDINAL_DATE,
    ISO_WEEK_DATE,
    ISO_INSTANT,
    RFC_1123_DATE_TIME
  }

  // Note: these temporal accessors are compatible with all DateTime formatters.
  // Adding a new type of temporal accessor (e.g., Instant, LocalDateTime) will cause issues.
  public enum TemporalAccessorType {
    ZONED_DATE_TIME,
    OFFSET_DATE_TIME
  }
}
