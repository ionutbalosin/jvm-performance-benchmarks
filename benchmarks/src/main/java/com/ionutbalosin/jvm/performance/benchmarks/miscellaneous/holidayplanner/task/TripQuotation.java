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
import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.StructuredTaskScope;
import java.util.concurrent.ThreadFactory;

public record TripQuotation(String source, Status status, double price) {

  public static final TripQuotation TRIP_QUOTATION_UNAVAILABLE = new TripQuotation(Status.ERROR);
  private static final Random random = new Random(16384);

  public TripQuotation(Status status) {
    this(null, status, 0);
  }

  /** Custom Joiner that collects successful quotations and finds the best one (lowest price). */
  public static class BestQuotationJoiner
      implements StructuredTaskScope.Joiner<TripQuotation, TripQuotation> {

    private final Collection<TripQuotation> quotations = new ConcurrentLinkedQueue<>();

    @Override
    public boolean onComplete(StructuredTaskScope.Subtask<? extends TripQuotation> subtask) {
      switch (subtask.state()) {
        case SUCCESS -> this.quotations.add(subtask.get());
        case FAILED, UNAVAILABLE -> {}
      }
      // Return false to continue collecting all quotations (don't cancel scope early)
      return false;
    }

    @Override
    public TripQuotation result() throws Throwable {
      return this.quotations.stream()
          .min(Comparator.comparing(TripQuotation::price))
          .orElse(TRIP_QUOTATION_UNAVAILABLE);
    }
  }

  public static TripQuotation getQuotation(
      ThreadType threadType, int quotationSources, int tripDuration, int numberOfTravelers) {
    final List<Callable<TripQuotation>> tasks = new ArrayList<>();
    for (int i = 0; i < quotationSources; i++) {
      final String sourceId = "Trip Quotation Source " + i;
      tasks.add(() -> getTripQuotation(sourceId, tripDuration, numberOfTravelers));
    }
    final ThreadFactory threadFactory = setupThreadFactory(threadType);

    return getQuotation(tasks, threadFactory);
  }

  private static TripQuotation getQuotation(
      List<Callable<TripQuotation>> tasks, ThreadFactory threadFactory) {
    try (final StructuredTaskScope<TripQuotation, TripQuotation> scope =
        StructuredTaskScope.open(
            new BestQuotationJoiner(),
            cf -> cf.withName("Trip Quotation").withThreadFactory(threadFactory))) {

      tasks.forEach(scope::fork);
      return scope.join();

    } catch (InterruptedException e) {
      Thread.currentThread().interrupt();
      return TRIP_QUOTATION_UNAVAILABLE;
    } catch (Exception e) {
      return TRIP_QUOTATION_UNAVAILABLE;
    }
  }

  private static TripQuotation getTripQuotation(
      String sourceId, int tripDuration, int numberOfTravelers) {
    final double basePrice = 1000.0;
    final double pricePerDay = 150.0;
    final double pricePerTraveler = 200.0;

    final double discountFactor = 0.90 + random.nextDouble() * 0.20;
    final double quotation =
        (basePrice + tripDuration * pricePerDay + numberOfTravelers * pricePerTraveler)
            * discountFactor;

    return new TripQuotation(sourceId, Status.SUCCESS, quotation);
  }

  private enum Status {
    SUCCESS,
    ERROR;
  }
}
