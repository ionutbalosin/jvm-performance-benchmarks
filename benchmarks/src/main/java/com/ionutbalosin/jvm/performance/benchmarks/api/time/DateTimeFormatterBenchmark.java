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

import java.time.format.DateTimeFormatter;
import java.time.format.FormatStyle;
import java.util.Locale;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Evaluates the performance of DateTimeFormatter creation using various styles and patterns
 * available in Java's DateTimeFormatter API. This benchmark measures the efficiency of
 * DateTimeFormatter instantiation for localized date, time, and datetime formats employing
 * different styles. Additionally, it assesses the speed of DateTimeFormatter creation using a
 * custom-defined pattern with specific formatting elements and locale.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DateTimeFormatterBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DateTimeFormatterBenchmark.*"

  @Benchmark
  public DateTimeFormatter of_localized_date() {
    return DateTimeFormatter.ofLocalizedDate(FormatStyle.FULL);
  }

  @Benchmark
  public DateTimeFormatter of_localized_time() {
    return DateTimeFormatter.ofLocalizedTime(FormatStyle.FULL);
  }

  @Benchmark
  public DateTimeFormatter of_localized_datetime() {
    return DateTimeFormatter.ofLocalizedDateTime(FormatStyle.FULL, FormatStyle.FULL);
  }

  @Benchmark
  public DateTimeFormatter of_pattern() {
    return DateTimeFormatter.ofPattern(
        "yyyy MMM dd GGGG G GGGGG EEE, HH:mm:ssZZZ VV", Locale.ENGLISH);
  }
}
