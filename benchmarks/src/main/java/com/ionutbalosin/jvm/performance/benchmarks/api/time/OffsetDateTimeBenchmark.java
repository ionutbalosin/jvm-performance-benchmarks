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

import static java.time.format.DateTimeFormatter.ISO_OFFSET_DATE_TIME;

import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.ZoneId;
import java.time.ZoneOffset;
import java.time.ZonedDateTime;
import java.time.temporal.ChronoField;
import java.time.temporal.ChronoUnit;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Measures the performance of various operations involving OffsetDateTime from Java's Date and Time
 * API. This benchmark evaluates the efficiency of OffsetDateTime manipulation, including
 * comparison, creation, parsing, formatting, and conversion to other temporal types like
 * ZonedDateTime, LocalDate, LocalTime, and Instant. It explores methods for offsetting, time zone
 * adjustments, arithmetic operations, and precision adjustments.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class OffsetDateTimeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*OffsetDateTimeBenchmark.*"

  private final ZoneId UTC = ZoneId.of("UTC");

  private final Random random = new Random(16384);

  private long epochSecond;
  private int year, month, dayOfMonth, hour, minute, second, nanoOfSecond;
  private String dateTimeFormat;
  private OffsetDateTime offsetDateTime, targetOffsetDateTime;

  @Setup
  public void setup() {
    epochSecond = random.nextLong(0, 315_537_963_048L); // approx 9,999 yr
    year = random.nextInt(0, 10_000);
    month = random.nextInt(1, 13);
    dayOfMonth = random.nextInt(1, 32);
    hour = random.nextInt(0, 24);
    minute = random.nextInt(0, 60);
    second = random.nextInt(0, 60);
    nanoOfSecond = random.nextInt(0, 1_000_000_000);

    offsetDateTime =
        OffsetDateTime.of(
            year, month, dayOfMonth, hour, minute, second, nanoOfSecond, ZoneOffset.UTC);
    targetOffsetDateTime =
        OffsetDateTime.ofInstant(Instant.ofEpochSecond(epochSecond, nanoOfSecond), UTC);

    dateTimeFormat = offsetDateTime.format(ISO_OFFSET_DATE_TIME);
  }

  @Benchmark
  public ZonedDateTime at_zone_same_instant() {
    return offsetDateTime.atZoneSameInstant(UTC);
  }

  @Benchmark
  public ZonedDateTime at_zone_similar_local() {
    return offsetDateTime.atZoneSimilarLocal(UTC);
  }

  @Benchmark
  public int compare_to() {
    return offsetDateTime.compareTo(targetOffsetDateTime);
  }

  @Benchmark
  public int get_minute_of_day() {
    return offsetDateTime.get(ChronoField.MINUTE_OF_DAY);
  }

  @Benchmark
  public long get_nano_of_day() {
    return offsetDateTime.getLong(ChronoField.NANO_OF_DAY);
  }

  @Benchmark
  public boolean is_after() {
    return offsetDateTime.isAfter(targetOffsetDateTime);
  }

  @Benchmark
  public boolean is_before() {
    return offsetDateTime.isBefore(targetOffsetDateTime);
  }

  @Benchmark
  public boolean is_equal() {
    return offsetDateTime.isEqual(targetOffsetDateTime);
  }

  @Benchmark
  public OffsetDateTime minus_nanos() {
    return offsetDateTime.minusNanos(nanoOfSecond);
  }

  @Benchmark
  public OffsetDateTime now() {
    return OffsetDateTime.now();
  }

  @Benchmark
  public OffsetDateTime now_clock() {
    final Clock clock = Clock.system(ZoneOffset.UTC);
    return OffsetDateTime.now(clock);
  }

  @Benchmark
  public OffsetDateTime now_zone_id() {
    return OffsetDateTime.now(UTC);
  }

  @Benchmark
  public OffsetDateTime now_zone_offset() {
    return OffsetDateTime.now(ZoneOffset.UTC);
  }

  @Benchmark
  public OffsetDateTime of() {
    return OffsetDateTime.of(
        year, month, dayOfMonth, hour, minute, second, nanoOfSecond, ZoneOffset.UTC);
  }

  @Benchmark
  public OffsetDateTime of_local_date_time() {
    final LocalDate localDate = LocalDate.of(year, month, dayOfMonth);
    final LocalTime localTime = LocalTime.of(hour, minute, second, nanoOfSecond);
    return OffsetDateTime.of(localDate, localTime, ZoneOffset.UTC);
  }

  @Benchmark
  public OffsetDateTime of_local_datetime() {
    final LocalDateTime localDateTime =
        LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    return OffsetDateTime.of(localDateTime, ZoneOffset.UTC);
  }

  @Benchmark
  public OffsetDateTime of_instant() {
    final Instant instant = Instant.ofEpochSecond(epochSecond, nanoOfSecond);
    return OffsetDateTime.ofInstant(instant, UTC);
  }

  @Benchmark
  public OffsetDateTime parse() {
    return OffsetDateTime.parse(dateTimeFormat, ISO_OFFSET_DATE_TIME);
  }

  @Benchmark
  public OffsetDateTime plus_nanos() {
    return offsetDateTime.plusNanos(nanoOfSecond);
  }

  @Benchmark
  public long to_epoch_second() {
    return offsetDateTime.toEpochSecond();
  }

  @Benchmark
  public Instant to_instant() {
    return offsetDateTime.toInstant();
  }

  @Benchmark
  public LocalDate to_local_date() {
    return offsetDateTime.toLocalDate();
  }

  @Benchmark
  public LocalTime to_local_time() {
    return offsetDateTime.toLocalTime();
  }

  @Benchmark
  public LocalDateTime to_local_datetime() {
    return offsetDateTime.toLocalDateTime();
  }

  @Benchmark
  public OffsetTime to_offset_time() {
    return offsetDateTime.toOffsetTime();
  }

  @Benchmark
  public String to_string() {
    return offsetDateTime.toString();
  }

  @Benchmark
  public ZonedDateTime to_zoned_datetime() {
    return offsetDateTime.toZonedDateTime();
  }

  @Benchmark
  public OffsetDateTime truncated_to_nanos() {
    return offsetDateTime.truncatedTo(ChronoUnit.NANOS);
  }

  @Benchmark
  public OffsetDateTime with() {
    return offsetDateTime.with(ChronoField.NANO_OF_DAY, nanoOfSecond);
  }
}
