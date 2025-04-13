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

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.TouristAttraction.getTopTouristAttractions;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.TripQuotation.getQuotation;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.Weather.getWeather;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlannerBenchmark.ThreadType;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.TouristAttraction;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.TripQuotation;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.task.Weather;
import java.util.List;
import java.util.concurrent.StructuredTaskScope;
import java.util.concurrent.atomic.AtomicReference;

public record HolidayPlanner(
    Status status, TripQuotation quotation, List<TouristAttraction> attractions, Weather weather) {

  public static final HolidayPlanner HOLIDAY_PLANNER_UNAVAILABLE = new HolidayPlanner(Status.ERROR);

  public HolidayPlanner(Status status) {
    this(status, null, List.of(), null);
  }

  public HolidayPlanner(
      TripQuotation quotation, List<TouristAttraction> attractions, Weather weather) {
    this(Status.SUCCESS, quotation, attractions, weather);
  }

  public static final class HolidayPlannerTaskScope extends StructuredTaskScope {

    private AtomicReference<TripQuotation> quotation = new AtomicReference<>();
    private AtomicReference<List<TouristAttraction>> attractions = new AtomicReference<>();
    private AtomicReference<Weather> weather = new AtomicReference<>();

    @Override
    protected void handleComplete(Subtask subtask) {
      switch (subtask.state()) {
        case SUCCESS -> {
          switch (subtask.get()) {
            case TripQuotation quotation -> this.quotation.set(quotation);
            case List attractions -> this.attractions.set(attractions);
            case Weather weather -> this.weather.set(weather);
            default -> throw new UnsupportedOperationException("Unexpected value " + subtask.get());
          }
        }
        case FAILED, UNAVAILABLE -> {}
      }
    }

    public HolidayPlanner getHolidayPlanner() {
      return new HolidayPlanner(this.quotation.get(), this.attractions.get(), this.weather.get());
    }
  }

  public static HolidayPlanner readHolidayPlanner(
      ThreadType threadType,
      int tasks,
      int tripDuration,
      int numberOfTravelers,
      int topAttractions) {
    try (final HolidayPlannerTaskScope scope = new HolidayPlannerTaskScope()) {
      scope.fork(() -> getQuotation(threadType, tasks, tripDuration, numberOfTravelers));
      scope.fork(() -> getTopTouristAttractions(threadType, tasks, topAttractions));
      scope.fork(() -> getWeather(threadType));

      scope.join();
      return scope.getHolidayPlanner();

    } catch (InterruptedException e) {
      return HOLIDAY_PLANNER_UNAVAILABLE;
    }
  }

  private enum Status {
    SUCCESS,
    ERROR;
  }
}
