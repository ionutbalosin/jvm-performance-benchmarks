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

import static java.time.format.DateTimeFormatter.ISO_LOCAL_DATE_TIME;

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

/*
 * Measures the performance of various LocalDateTime operations in Java's Date and Time API. This
 * benchmark evaluates the efficiency of LocalDateTime manipulation, including methods for
 * comparison, creation, parsing, and conversion to other temporal types like LocalDate and
 * LocalTime. It explores methods for offsetting, time zone adjustments, formatting, arithmetic
 * operations, and precision adjustments.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LocalDateTimeBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LocalDateTimeBenchmark.*"

  private final ZoneId UTC = ZoneId.of("UTC");

  private final Random random = new Random(16384);

  private long epochSecond;
  private int year, month, dayOfMonth, hour, minute, second, nanoOfSecond;
  private String dateTimeFormat;
  private LocalDateTime localDateTime, targetLocalDateTime;

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

    localDateTime = LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
    targetLocalDateTime = LocalDateTime.ofEpochSecond(epochSecond, nanoOfSecond, ZoneOffset.UTC);

    dateTimeFormat = localDateTime.format(ISO_LOCAL_DATE_TIME);
  }

  @Benchmark
  public OffsetDateTime at_offset() {
    return localDateTime.atOffset(ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime at_zone() {
    return localDateTime.atZone(UTC);
  }

  @Benchmark
  public int compare_to() {
    return localDateTime.compareTo(targetLocalDateTime);
  }

  @Benchmark
  public long get_nano_of_day() {
    return localDateTime.getLong(ChronoField.NANO_OF_DAY);
  }

  @Benchmark
  public boolean is_after() {
    return localDateTime.isAfter(targetLocalDateTime);
  }

  @Benchmark
  public boolean is_before() {
    return localDateTime.isBefore(targetLocalDateTime);
  }

  @Benchmark
  public boolean is_equal() {
    return localDateTime.isEqual(targetLocalDateTime);
  }

  @Benchmark
  public LocalDateTime minus_nanos() {
    return localDateTime.minusNanos(nanoOfSecond);
  }

  @Benchmark
  public LocalDateTime now() {
    return LocalDateTime.now();
  }

  @Benchmark
  public LocalDateTime now_clock() {
    final Clock clock = Clock.system(ZoneOffset.UTC);
    return LocalDateTime.now(clock);
  }

  @Benchmark
  public LocalDateTime now_zone_id() {
    return LocalDateTime.now(UTC);
  }

  @Benchmark
  public LocalDateTime now_zone_offset() {
    return LocalDateTime.now(ZoneOffset.UTC);
  }

  @Benchmark
  public LocalDateTime of() {
    return LocalDateTime.of(year, month, dayOfMonth, hour, minute, second, nanoOfSecond);
  }

  @Benchmark
  public LocalDateTime of_local_date_time() {
    final LocalDate localDate = LocalDate.of(year, month, dayOfMonth);
    final LocalTime localTime = LocalTime.of(hour, minute, second, nanoOfSecond);
    return LocalDateTime.of(localDate, localTime);
  }

  @Benchmark
  public LocalDateTime of_epoch_second() {
    return LocalDateTime.ofEpochSecond(epochSecond, nanoOfSecond, ZoneOffset.UTC);
  }

  @Benchmark
  public LocalDateTime of_instant() {
    final Instant instant = Instant.ofEpochSecond(epochSecond);
    return LocalDateTime.ofInstant(instant, ZoneOffset.UTC);
  }

  @Benchmark
  public LocalDateTime parse() {
    return LocalDateTime.parse(dateTimeFormat, ISO_LOCAL_DATE_TIME);
  }

  @Benchmark
  public LocalDateTime plus_nanos() {
    return localDateTime.plusNanos(nanoOfSecond);
  }

  @Benchmark
  public LocalDate to_local_date() {
    return localDateTime.toLocalDate();
  }

  @Benchmark
  public LocalTime to_local_time() {
    return localDateTime.toLocalTime();
  }

  @Benchmark
  public String to_string() {
    return localDateTime.toString();
  }

  @Benchmark
  public LocalDateTime truncated_to_nanos() {
    return localDateTime.truncatedTo(ChronoUnit.NANOS);
  }

  @Benchmark
  public LocalDateTime with() {
    return localDateTime.with(ChronoField.NANO_OF_DAY, nanoOfSecond);
  }
}
