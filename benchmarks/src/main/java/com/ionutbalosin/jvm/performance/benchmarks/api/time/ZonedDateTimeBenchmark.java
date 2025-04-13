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

import static java.time.format.DateTimeFormatter.ISO_ZONED_DATE_TIME;

import java.time.Clock;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
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

/**
 * Evaluates the performance of various operations involving ZonedDateTime from Java's Date and Time
 * API. This benchmark measures the efficiency of ZonedDateTime methods for comparison,
 * manipulation, creation, parsing, formatting, and conversion to other temporal types like
 * LocalDateTime, OffsetDateTime, LocalDate, LocalTime, and Instant. It assesses functions for
 * comparison, offsetting, obtaining date/time fields, adjusting time zones, parsing strings,
 * arithmetic operations, precision adjustments, and type conversions.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ZonedDateTimeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ZonedDateTimeBenchmark.*"

  private final ZoneId UTC = ZoneId.of("UTC");

  private final Random random = new Random(16384);

  private long epochSecond;
  private int year, month, dayOfMonth, hour, minute, second, nanoOfSecond;
  private String dateTimeFormat;
  private ZonedDateTime zonedDateTime, targeZonedDateTime;

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

    zonedDateTime =
        ZonedDateTime.of(
            year, month, dayOfMonth, hour, minute, second, nanoOfSecond, ZoneOffset.UTC);
    targeZonedDateTime =
        ZonedDateTime.ofInstant(Instant.ofEpochSecond(epochSecond, nanoOfSecond), UTC);

    dateTimeFormat = zonedDateTime.format(ISO_ZONED_DATE_TIME);
  }

  @Benchmark
  public int compare_to() {
    return zonedDateTime.compareTo(targeZonedDateTime);
  }

  @Benchmark
  public long get_nano_of_day() {
    return zonedDateTime.getLong(ChronoField.NANO_OF_DAY);
  }

  @Benchmark
  public boolean is_after() {
    return zonedDateTime.isAfter(targeZonedDateTime);
  }

  @Benchmark
  public boolean is_before() {
    return zonedDateTime.isBefore(targeZonedDateTime);
  }

  @Benchmark
  public boolean is_equal() {
    return zonedDateTime.isEqual(targeZonedDateTime);
  }

  @Benchmark
  public ZonedDateTime minus_nanos() {
    return zonedDateTime.minusNanos(nanoOfSecond);
  }

  @Benchmark
  public ZonedDateTime now() {
    return ZonedDateTime.now();
  }

  @Benchmark
  public ZonedDateTime now_clock() {
    return ZonedDateTime.now(Clock.system(ZoneOffset.UTC));
  }

  @Benchmark
  public ZonedDateTime now_zone_id() {
    return ZonedDateTime.now(UTC);
  }

  @Benchmark
  public ZonedDateTime now_zone_offset() {
    return ZonedDateTime.now(ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime of() {
    return ZonedDateTime.of(
        year, month, dayOfMonth, hour, minute, second, nanoOfSecond, ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime of_local_date_time() {
    final LocalDate localDate = LocalDate.of(year, month, dayOfMonth);
    final LocalTime localTime = LocalTime.of(hour, minute, second, nanoOfSecond);
    return ZonedDateTime.of(localDate, localTime, ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime of_local_datetime() {
    final LocalDateTime localDateTime =
        LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    return ZonedDateTime.of(localDateTime, ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime of_instant() {
    final Instant instant = Instant.ofEpochSecond(epochSecond, nanoOfSecond);
    return ZonedDateTime.ofInstant(instant, UTC);
  }

  @Benchmark
  public ZonedDateTime of_instant_local_datetime() {
    final LocalDateTime localDateTime =
        LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    return ZonedDateTime.ofInstant(localDateTime, ZoneOffset.UTC, UTC);
  }

  @Benchmark
  public ZonedDateTime of_local() {
    final LocalDateTime localDateTime =
        LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    return ZonedDateTime.ofLocal(localDateTime, UTC, ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime of_strict() {
    final LocalDateTime localDateTime =
        LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    return ZonedDateTime.ofStrict(localDateTime, ZoneOffset.UTC, UTC);
  }

  @Benchmark
  public ZonedDateTime parse() {
    return ZonedDateTime.parse(dateTimeFormat, ISO_ZONED_DATE_TIME);
  }

  @Benchmark
  public ZonedDateTime plus_nanos() {
    return zonedDateTime.plusNanos(nanoOfSecond);
  }

  @Benchmark
  public long to_epoch_second() {
    return zonedDateTime.toEpochSecond();
  }

  @Benchmark
  public Instant to_instant() {
    return zonedDateTime.toInstant();
  }

  @Benchmark
  public LocalDate to_local_date() {
    return zonedDateTime.toLocalDate();
  }

  @Benchmark
  public LocalTime to_local_time() {
    return zonedDateTime.toLocalTime();
  }

  @Benchmark
  public LocalDateTime to_local_datetime() {
    return zonedDateTime.toLocalDateTime();
  }

  @Benchmark
  public OffsetDateTime to_offset_datetime() {
    return zonedDateTime.toOffsetDateTime();
  }

  @Benchmark
  public String to_string() {
    return zonedDateTime.toString();
  }

  @Benchmark
  public ZonedDateTime truncated_to_nanos() {
    return zonedDateTime.truncatedTo(ChronoUnit.NANOS);
  }

  @Benchmark
  public ZonedDateTime with() {
    return zonedDateTime.with(ChronoField.NANO_OF_DAY, nanoOfSecond);
  }
}
