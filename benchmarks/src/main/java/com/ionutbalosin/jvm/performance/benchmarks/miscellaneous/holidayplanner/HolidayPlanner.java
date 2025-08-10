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

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlannerBenchmark.setupThreadFactory;
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
    TripQuotation quotation, List<TouristAttraction> attractions, Weather weather) {

  public static final HolidayPlanner HOLIDAY_PLANNER_UNAVAILABLE =
      new HolidayPlanner(
          TripQuotation.TRIP_QUOTATION_UNAVAILABLE, List.of(), Weather.WEATHER_UNAVAILABLE);

  /**
   * Custom Joiner that collects all three types of holiday planning data: quotation, attractions,
   * and weather.
   */
  public static class HolidayPlannerJoiner
      implements StructuredTaskScope.Joiner<Object, HolidayPlanner> {

    private final AtomicReference<TripQuotation> quotation = new AtomicReference<>();
    private final AtomicReference<List<TouristAttraction>> attractions = new AtomicReference<>();
    private final AtomicReference<Weather> weather = new AtomicReference<>();

    @Override
    public boolean onComplete(StructuredTaskScope.Subtask<? extends Object> subtask) {
      if (subtask.state() == StructuredTaskScope.Subtask.State.SUCCESS) {
        Object result = subtask.get();

        switch (result) {
          case TripQuotation q -> quotation.set(q);
          case Weather w -> weather.set(w);
          case List<?> list -> {
            if (!list.isEmpty()) {
              try {
                @SuppressWarnings("unchecked")
                List<TouristAttraction> attractionList = (List<TouristAttraction>) list;
                // Verify the first element is indeed a TouristAttraction
                if (attractionList.get(0) instanceof TouristAttraction) {
                  attractions.set(attractionList);
                }
              } catch (ClassCastException e) {
                // Ignore if cast fails
              }
            }
          }
          default -> {} // ignore unexpected types
        }
      }
      // Always return false to wait for all subtasks to complete
      return false;
    }

    @Override
    public HolidayPlanner result() throws Throwable {
      TripQuotation finalQuotation = quotation.get();
      List<TouristAttraction> finalAttractions = attractions.get();
      Weather finalWeather = weather.get();

      // Return unavailable planner if any component is missing
      if (finalQuotation == null || finalAttractions == null || finalWeather == null) {
        return HOLIDAY_PLANNER_UNAVAILABLE;
      }

      return new HolidayPlanner(finalQuotation, finalAttractions, finalWeather);
    }
  }

  public static HolidayPlanner readHolidayPlanner(
      ThreadType threadType,
      int tasks,
      int tripDuration,
      int numberOfTravelers,
      int topAttractions) {

    try (final StructuredTaskScope<Object, HolidayPlanner> scope =
        StructuredTaskScope.open(
            new HolidayPlannerJoiner(),
            cf ->
                cf.withName("Holiday Planner").withThreadFactory(setupThreadFactory(threadType)))) {

      scope.fork(() -> getQuotation(threadType, tasks, tripDuration, numberOfTravelers));
      scope.fork(() -> getTopTouristAttractions(threadType, tasks, topAttractions));
      scope.fork(() -> getWeather(threadType));

      return scope.join();

    } catch (InterruptedException e) {
      Thread.currentThread().interrupt();
      return HOLIDAY_PLANNER_UNAVAILABLE;
    } catch (Exception e) {
      return HOLIDAY_PLANNER_UNAVAILABLE;
    }
  }
}
