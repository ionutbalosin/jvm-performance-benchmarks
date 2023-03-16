/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
 *
 * Author: Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
 *
 * Co-author: Florin Blanaru
 * Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
 *
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.populationvariance;

import com.ionutbalosin.jvm.performance.benchmarks.macro.populationvariance.forkjoin.ForkJoinVariance;
import com.ionutbalosin.jvm.performance.benchmarks.macro.populationvariance.iterative.IterativeVariance;
import com.ionutbalosin.jvm.performance.benchmarks.macro.populationvariance.stream.StreamVariance;
import java.util.concurrent.ThreadLocalRandom;
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
 * This benchmark generates a population of different ages and then calculates the age variation.
 *
 * Population variance is the average of the distances from each data point in a particular population
 * to the mean squared. It indicates how data points spread out in the population.
 * Population variance is an important measure of dispersion used in statistics.
 *
 *  References:
 * - code examples by Mario Fusco (Twitter: @mariofusco)
 * - https://github.com/mariofusco/javaz/tree/master/src/main/java/org/javaz/variance
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class PopulationVarianceBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PopulationVarianceBenchmark.*"

  // The oldest person ever: 116 years 54 days
  private static final float OLDEST_MAN_AGE = 116.1479F;
  private static final int POPULATION_SIZE = Integer.MAX_VALUE >> 4;

  private static double[] ages = new double[POPULATION_SIZE];

  @Setup()
  public void setup() {
    for (int i = 0; i < POPULATION_SIZE; i++) {
      ages[i] = ThreadLocalRandom.current().nextDouble(OLDEST_MAN_AGE);
    }

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(
        IterativeVariance.variance(ages),
        StreamVariance.variance(ages),
        ForkJoinVariance.variance(ages));
  }

  @Benchmark
  public double iterative() {
    return IterativeVariance.variance(ages);
  }

  @Benchmark
  public double stream() {
    return StreamVariance.variance(ages);
  }

  @Benchmark
  public double fork_join() {
    return ForkJoinVariance.variance(ages);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param val1 - first variance
   * @param val2 - second variance
   * @param val3 - second variance
   */
  private static void sanityCheck(double val1, double val2, double val3) {
    // the difference between numbers should be within the specified tolerance
    final double ACCEPTED_TOLERANCE = 0.000000001d;
    if (Math.abs(val1 - val2) > ACCEPTED_TOLERANCE || Math.abs(val2 - val3) > ACCEPTED_TOLERANCE) {
      throw new AssertionError("Different variances.");
    }
  }
}
