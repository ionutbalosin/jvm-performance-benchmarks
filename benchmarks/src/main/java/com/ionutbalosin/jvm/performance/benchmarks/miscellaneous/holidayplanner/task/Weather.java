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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlannerBenchmark.setupThreadFactory;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlannerBenchmark;
import java.time.Duration;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.StructuredTaskScope;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicReference;

public record Weather(
    String source,
    Status status,
    WeatherCondition condition,
    float temperature,
    float precipitation,
    float humidity,
    float wind) {

  public static final Weather WEATHER_UNAVAILABLE = new Weather(Status.ERROR);
  private static final Random random = new Random(16384);
  private static final Duration TIMEOUT = Duration.ofSeconds(1);
  private static final WeatherCondition[] cachedWeatherConditions = WeatherCondition.values();

  public Weather(Status status) {
    this(null, status, null, 0, 0, 0, 0);
  }

  public Weather(String source, Status status) {
    this(source, status, null, 0, 0, 0, 0);
  }

  /** Custom Joiner that returns the first successful weather result. */
  public static class FirstSuccessfulWeatherJoiner
      implements StructuredTaskScope.Joiner<Weather, Weather> {

    private final AtomicReference<Weather> firstSuccessfulWeather = new AtomicReference<>();

    @Override
    public boolean onComplete(StructuredTaskScope.Subtask<? extends Weather> subtask) {
      if (subtask.state() == StructuredTaskScope.Subtask.State.SUCCESS) {
        Weather weather = subtask.get();
        if (weather.status == Status.SUCCESS) {
          // Found first successful weather, try to set it and cancel scope
          if (firstSuccessfulWeather.compareAndSet(null, weather)) {
            return true; // Cancel scope since we found what we need
          }
        }
      }
      // Continue waiting for other subtasks if we haven't found a successful one yet
      return false;
    }

    @Override
    public Weather result() throws Throwable {
      Weather weather = firstSuccessfulWeather.get();
      return weather != null ? weather : WEATHER_UNAVAILABLE;
    }
  }

  // Iterate through the list of weather sources and return only the one that has returned success.
  // In case there is none, the weather will be marked as unavailable
  public static Weather getWeather(HolidayPlannerBenchmark.ThreadType threadType) {
    final List<Callable<Weather>> tasks = new ArrayList<>();
    tasks.add(() -> getWeatherFromResilientSource());
    tasks.add(() -> getWeatherFromNonResilientSource());
    final ThreadFactory threadFactory = setupThreadFactory(threadType);

    return getWeather(tasks, threadFactory);
  }

  private static Weather getWeather(List<Callable<Weather>> tasks, ThreadFactory threadFactory) {
    try (final StructuredTaskScope<Weather, Weather> scope =
        StructuredTaskScope.open(
            new FirstSuccessfulWeatherJoiner(),
            cf -> cf.withName("Weather").withThreadFactory(threadFactory).withTimeout(TIMEOUT))) {

      tasks.forEach(scope::fork);

      return scope.join();
    } catch (Exception e) {
      return WEATHER_UNAVAILABLE;
    }
  }

  // This weather source returns an empty error report while being not able to provide any data
  private static Weather getWeatherFromResilientSource() {
    if (random.nextDouble() < 0.5) {
      return new Weather("Resilient Source", Status.ERROR);
    }

    final WeatherCondition condition =
        cachedWeatherConditions[random.nextInt(cachedWeatherConditions.length)];
    final float temperature = random.nextFloat() * 110 - 30;
    final float precipitation = random.nextFloat() * 90 + 10;
    final float humidity = random.nextFloat() * 50;
    final float wind = random.nextFloat() * 25;

    return new Weather(
        "Resilient Source", Status.SUCCESS, condition, temperature, precipitation, humidity, wind);
  }

  // This weather source throws exceptions while being not able to provide any data
  private static Weather getWeatherFromNonResilientSource() {
    if (random.nextDouble() > 0.5) {
      throw new RuntimeException("The non resilient source is unable to provide any weather data.");
    }

    final WeatherCondition condition =
        cachedWeatherConditions[random.nextInt(cachedWeatherConditions.length)];
    final float temperature = random.nextFloat() * 110 - 30;
    final float precipitation = random.nextFloat() * 90 + 10;
    final float humidity = random.nextFloat() * 50;
    final float wind = random.nextFloat() * 25;

    return new Weather(
        "Non Resilient Source",
        Status.SUCCESS,
        condition,
        temperature,
        precipitation,
        humidity,
        wind);
  }

  private enum Status {
    SUCCESS,
    ERROR;
  }

  private enum WeatherCondition {
    SUNNY,
    CLOUDY,
    RAINY,
    SNOWY,
    FOGGY;
  }
}
