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

import java.time.Clock;
import java.time.Duration;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZoneOffset;
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
 * Assesses the performance of various Clock operations available in Java's Time API. This benchmark
 * evaluates the efficiency of Clock methods for generating different types of clocks, accessing
 * time, setting fixed times, and creating ticking clocks with different granularities. It measures
 * the speed of creating clocks for system default, system UTC, fixed, offset, and ticking with
 * nanosecond, millisecond, second, and minute precision.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ClockBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ClockBenchmark.*"

  private final ZoneId UTC = ZoneId.of("UTC");
  private final long NANOS_PER_SECOND = 1_000_000_000L;
  private final Random random = new Random(16384);

  private long epochSecond;
  private int nanoOfSecond;
  private Instant instant;
  private Clock clock;

  @Setup
  public void setup() {
    epochSecond = random.nextLong(0, 315_537_963_048L); // approx 9,999 yr
    nanoOfSecond = random.nextInt(0, 1_000_000_000);

    instant = Instant.ofEpochSecond(epochSecond, nanoOfSecond);
    clock = Clock.system(ZoneOffset.UTC);
  }

  @Benchmark
  public Clock fixed() {
    return clock.fixed(instant, UTC);
  }

  @Benchmark
  public Instant instant() {
    return clock.instant();
  }

  @Benchmark
  public long millis() {
    return clock.millis();
  }

  @Benchmark
  public Clock offset() {
    return Clock.offset(clock, Duration.ofNanos(instant.getNano()));
  }

  @Benchmark
  public Clock system() {
    return Clock.system(ZoneOffset.UTC);
  }

  @Benchmark
  public Clock system_default_zone() {
    return Clock.systemDefaultZone();
  }

  @Benchmark
  public Clock system_utc() {
    return Clock.systemUTC();
  }

  @Benchmark
  public Clock tick() {
    return Clock.tick(clock, Duration.ofNanos(NANOS_PER_SECOND));
  }

  @Benchmark
  public Clock tick_millis() {
    return Clock.tickMillis(UTC);
  }

  @Benchmark
  public Clock tick_minutes() {
    return Clock.tickMinutes(UTC);
  }

  @Benchmark
  public Clock tick_seconds() {
    return Clock.tickSeconds(UTC);
  }
}
