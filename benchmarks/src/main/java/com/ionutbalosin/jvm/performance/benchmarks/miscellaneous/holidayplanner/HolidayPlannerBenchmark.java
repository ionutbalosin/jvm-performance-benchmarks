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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlanner.readHolidayPlanner;
import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;

import java.util.Random;
import java.util.concurrent.ThreadFactory;
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
 * This benchmark simulates a holiday planning system that utilizes the structured concurrency API
 * to collect necessary information from multiple sources for trip planning. These sources include
 * quotations, tourist attractions, and weather data. Each of these sources divides the work into
 * sub-tasks, processes them in parallel, and returns their results, which are subsequently
 * aggregated to form the final response.
 *
 * The implementation compares the performance of using virtual threads with platform threads.
 *
 * To simulate a realistic CPU load, the number of tasks is directly proportional to the
 * available processors multiplied by a load factor. The total tasks for virtual or platform threads
 * are determined by multiplying the available CPUs by a load factor.
 *
 * References:
 *  - https://github.com/JosePaumard/JDK20_2023-Loom-Lab
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class HolidayPlannerBenchmark {

  // $ java --enable-preview -jar */*/benchmarks.jar ".*HolidayPlannerBenchmark.*"

  private static final int MAX_TRIP_DURATION_DAYS = 3 * 365;
  private static final int MAX_TRAVELERS = 256;
  private static final int TOP_TEN_ATTRACTIONS = 10;
  private static final int PARALLELISM_COUNT = Runtime.getRuntime().availableProcessors();
  private static final Random random = new Random(16384);

  @Param({"256"})
  private int loadFactor;

  @Param private ThreadType threadType;

  private int tasks;
  int tripDuration;
  int numberOfTravelers;

  @Setup()
  public void setup() {
    tasks = PARALLELISM_COUNT * loadFactor;
    tripDuration = random.nextInt(MAX_TRIP_DURATION_DAYS);
    numberOfTravelers = random.nextInt(MAX_TRAVELERS);

    // ensure the validity of results before proceeding with benchmarking
    sanityCheck(
        readHolidayPlanner(
            threadType, tasks, tripDuration, numberOfTravelers, TOP_TEN_ATTRACTIONS));
  }

  @Benchmark
  public HolidayPlanner travel_planner() {
    return readHolidayPlanner(
        threadType, tasks, tripDuration, numberOfTravelers, TOP_TEN_ATTRACTIONS);
  }

  public static ThreadFactory setupThreadFactory(ThreadType threadType) {
    return switch (threadType) {
      case VIRTUAL -> ofVirtual().factory();
      case PLATFORM -> ofPlatform().factory();
    };
  }

  public enum ThreadType {
    VIRTUAL,
    PLATFORM;
  }

  private void sanityCheck(HolidayPlanner planner) {
    if (planner.weather() == null) {
      throw new AssertionError("Weather data is missing.");
    }

    if (planner.quotation() == null) {
      throw new AssertionError("Trip quotation is missing.");
    }

    if (planner.attractions() == null || planner.attractions().size() != TOP_TEN_ATTRACTIONS) {
      throw new AssertionError("The number of tourist attractions is different than expected.");
    }
  }
}
