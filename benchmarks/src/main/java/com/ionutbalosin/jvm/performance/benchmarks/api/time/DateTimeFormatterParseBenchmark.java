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

import static java.time.format.DateTimeFormatter.BASIC_ISO_DATE;
import static java.time.format.DateTimeFormatter.ISO_INSTANT;
import static java.time.format.DateTimeFormatter.ISO_OFFSET_DATE;
import static java.time.format.DateTimeFormatter.ISO_OFFSET_DATE_TIME;
import static java.time.format.DateTimeFormatter.ISO_OFFSET_TIME;
import static java.time.format.DateTimeFormatter.ISO_ORDINAL_DATE;
import static java.time.format.DateTimeFormatter.ISO_WEEK_DATE;
import static java.time.format.DateTimeFormatter.ISO_ZONED_DATE_TIME;
import static java.time.format.DateTimeFormatter.RFC_1123_DATE_TIME;
import static java.time.temporal.TemporalQueries.chronology;
import static java.time.temporal.TemporalQueries.localDate;
import static java.time.temporal.TemporalQueries.localTime;
import static java.time.temporal.TemporalQueries.precision;

import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalTime;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.chrono.Chronology;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalUnit;
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
 * Evaluates the performance of parsing date and time strings into temporal data using different
 * pre-defined DateTimeFormatter instances available in Java's DateTimeFormatter API. This benchmark
 * assesses the efficiency of parsing operations for various DateTimeFormatter types, measuring
 * parsing speed for different temporal queries such as LocalDate, LocalTime, Chronology, and
 * TemporalUnit. It measures the performance of parsing operations with DateTimeFormatter instances
 * handling different date-time formats.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DateTimeFormatterParseBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DateTimeFormatterParseBenchmark.*"

  private final Random random = new Random(16384);

  @Param private DateTimeFormatterType formatterType;

  private DateTimeFormatter formatter;
  private String dateTimeFormat;

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
    final ZonedDateTime dateTime =
        Instant.ofEpochSecond(epochSecond, nanoAdjustment).atZone(ZoneOffset.UTC);

    dateTimeFormat = dateTime.format(formatter);
  }

  @Benchmark
  public TemporalAccessor parse() {
    return formatter.parse(dateTimeFormat);
  }

  @Benchmark
  public LocalDate parse_local_date_query() {
    return formatter.parse(dateTimeFormat, localDate());
  }

  @Benchmark
  public LocalTime parse_local_time_query() {
    return formatter.parse(dateTimeFormat, localTime());
  }

  @Benchmark
  public Chronology parse_chronology_query() {
    return formatter.parse(dateTimeFormat, chronology());
  }

  @Benchmark
  public TemporalUnit parse_precision_query() {
    return formatter.parse(dateTimeFormat, precision());
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
}
