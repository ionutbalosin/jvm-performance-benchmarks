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

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.holidayplanner.HolidayPlannerBenchmark.ThreadType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.StructuredTaskScope;
import java.util.concurrent.ThreadFactory;
import java.util.function.Supplier;
import java.util.stream.Collectors;

public record TouristAttraction(String source, String name, float rating) {

  private static final Random random = new Random(16384);
  private static List<String> ATTRACTIONS =
      List.of(
          "Museum of Art",
          "Historic Landmark",
          "Nature Reserve",
          "Adventure Park",
          "Cultural Festival",
          "Botanical Garden",
          "Beach Resort",
          "Zoo and Wildlife Sanctuary",
          "Historical Monuments",
          "Ski Resort",
          "National Park",
          "Science Museum",
          "Zipline Adventure",
          "Food and Wine Tours",
          "Spa and Wellness Retreat",
          "Cruise Ship Excursion",
          "Aquarium",
          "Amusement Park",
          "Local Markets",
          "Mountain Hiking",
          "Historic Theaters",
          "Waterfall Exploration",
          "Cave Exploration",
          "Surfing Adventure");

  public static List<TouristAttraction> getTopTouristAttractions(
      ThreadType threadType, int attractionSources, int topAttractions)
      throws InterruptedException {
    final List<Callable<TouristAttraction>> tasks = new ArrayList<>();
    for (int i = 0; i < attractionSources; i++) {
      final String sourceId = "Tourist Attraction Source " + i;
      tasks.add(() -> getTouristAttraction(sourceId));
    }
    final ThreadFactory threadFactory = setupThreadFactory(threadType);

    return getTopTouristAttractions(tasks, threadFactory, topAttractions);
  }

  private static List<TouristAttraction> getTopTouristAttractions(
      List<Callable<TouristAttraction>> tasks, ThreadFactory threadFactory, int topAttractions) {
    final List<TouristAttraction> touristAttractions = getTouristAttractions(tasks, threadFactory);

    return touristAttractions.stream()
        .sorted(Comparator.comparing(TouristAttraction::rating).reversed())
        .limit(topAttractions)
        .collect(Collectors.toList());
  }

  private static List<TouristAttraction> getTouristAttractions(
      List<Callable<TouristAttraction>> tasks, ThreadFactory threadFactory) {

    try (var scope =
        new StructuredTaskScope.ShutdownOnFailure("Tourist Attraction", threadFactory)) {
      final List<? extends Supplier<TouristAttraction>> suppliers =
          tasks.stream().map(scope::fork).toList();
      scope.join().throwIfFailed();
      return suppliers.stream().map(Supplier::get).toList();
    } catch (Exception e) {
      return Collections.emptyList();
    }
  }

  private static TouristAttraction getTouristAttraction(String sourceId) {
    final float minRating = 1.0f;
    final float maxRating = 5.0f;
    // Generate a random rating between 1 and 5 (inclusive)
    final float rating = minRating + random.nextFloat() * (maxRating - minRating);
    final String attraction = ATTRACTIONS.get(random.nextInt(ATTRACTIONS.size()));

    return new TouristAttraction(sourceId, attraction, rating);
  }
}
