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

import static java.time.format.DateTimeFormatter.ISO_INSTANT;

import java.time.Clock;
import java.time.Instant;
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
 * This benchmark measures the speed of Instant-related functionalities including time manipulation,
 * comparison, formatting, parsing, and epoch second/millisecond conversions. It evaluates
 * operations such as atOffset, atZone, comparison to another Instant, retrieval of time components,
 * addition and subtraction of nanoseconds, current time retrieval, instantiation from different
 * time units, parsing of Instant from a formatted string, and epoch second/millisecond conversions.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class InstantBenchmark {

  // $ java -jar */*/benchmarks.jar ".*InstantBenchmark.*"

  private final ZoneId UTC = ZoneId.of("UTC");
  private final Random random = new Random(16384);

  private long epochSecond;
  private int nanoOfSecond;
  private long epochMilli;
  private String instantFormat;
  private Instant instant, targetInstant;

  @Setup
  public void setup() {
    epochSecond = random.nextLong(0, 315_537_963_048L); // approx 9,999 yr
    epochMilli = random.nextLong(0, 1_000_000_000_000L);
    nanoOfSecond = random.nextInt(0, 1_000_000_000);

    instant = Instant.ofEpochSecond(epochSecond, nanoOfSecond);
    targetInstant = Instant.ofEpochMilli(epochMilli);

    instantFormat = ISO_INSTANT.format(instant);
  }

  @Benchmark
  public OffsetDateTime at_offset() {
    return instant.atOffset(ZoneOffset.UTC);
  }

  @Benchmark
  public ZonedDateTime at_zone() {
    return instant.atZone(UTC);
  }

  @Benchmark
  public int compare_to() {
    return instant.compareTo(targetInstant);
  }

  @Benchmark
  public long get_epoch_second() {
    return instant.getEpochSecond();
  }

  @Benchmark
  public long get_nano_of_day() {
    return instant.getLong(ChronoField.NANO_OF_SECOND);
  }

  @Benchmark
  public boolean is_after() {
    return instant.isAfter(targetInstant);
  }

  @Benchmark
  public boolean is_before() {
    return instant.isBefore(targetInstant);
  }

  @Benchmark
  public Instant minus_nanos() {
    return instant.minusNanos(nanoOfSecond);
  }

  @Benchmark
  public Instant now() {
    return Instant.now();
  }

  @Benchmark
  public Instant now_clock() {
    final Clock clock = Clock.system(ZoneOffset.UTC);
    return Instant.now(clock);
  }

  @Benchmark
  public Instant of_epoch_milli() {
    return Instant.ofEpochMilli(epochMilli);
  }

  @Benchmark
  public Instant of_epoch_second() {
    return Instant.ofEpochSecond(epochSecond);
  }

  @Benchmark
  public Instant of_epoch_second_nano() {
    return Instant.ofEpochSecond(epochSecond, nanoOfSecond);
  }

  @Benchmark
  public Instant parse() {
    return Instant.parse(instantFormat);
  }

  @Benchmark
  public Instant plus_nanos() {
    return instant.plusNanos(nanoOfSecond);
  }

  @Benchmark
  public long to_epoch_milli() {
    return instant.toEpochMilli();
  }

  @Benchmark
  public String to_string() {
    return instant.toString();
  }

  @Benchmark
  public Instant truncated_to_nanos() {
    return instant.truncatedTo(ChronoUnit.NANOS);
  }
}
