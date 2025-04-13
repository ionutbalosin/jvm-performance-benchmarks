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
package com.ionutbalosin.jvm.performance.benchmarks.api.random;

import java.util.concurrent.TimeUnit;
import java.util.random.RandomGenerator;
import java.util.random.RandomGeneratorFactory;
import java.util.stream.DoubleStream;
import java.util.stream.IntStream;
import java.util.stream.LongStream;
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
 * Assess various types of implementations for pseudorandom number generators (PRNGs), including jumpable PRNGs,
 * and an additional class of splittable PRNG algorithms (LXM). The tested methods include ints, longs, doubles,
 * nextBoolean, nextInt, nextLong, nextDouble, nextBytes, nextFloat, nextGaussian, and nextExponential.
 *
 * Please note that ThreadLocalRandom is not included in this assessment because the RandomGeneratorFactory
 * lacks an implementation for it. Therefore, it is evaluated separately.
 *
 * JEP 356: Enhanced Pseudo-Random Number Generators was added in JDK 17
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RandomGeneratorBenchmark {

  // $ java -jar */*/benchmarks.jar ".*RandomGeneratorBenchmark.*"

  @Param("1024")
  private int bytesSize;

  @Param({
    "L128X1024MixRandom",
    "L128X128MixRandom",
    "L128X256MixRandom",
    "L32X64MixRandom",
    "L64X1024MixRandom",
    "L64X128MixRandom",
    "L64X128StarStarRandom",
    "L64X256MixRandom",
    "Random",
    "SecureRandom",
    "SplittableRandom",
    "Xoroshiro128PlusPlus",
    "Xoshiro256PlusPlus"
  })
  private String generatorName;

  private RandomGenerator randomGenerator;
  private byte[] bytes;

  @Setup
  public void setup() {
    bytes = new byte[bytesSize];
    randomGenerator = RandomGeneratorFactory.of(generatorName).create(generatorName.hashCode());
  }

  @Benchmark
  public boolean next_boolean() {
    return randomGenerator.nextBoolean();
  }

  @Benchmark
  public byte[] next_bytes() {
    randomGenerator.nextBytes(bytes);
    return bytes;
  }

  @Benchmark
  public float next_float() {
    return randomGenerator.nextFloat();
  }

  @Benchmark
  public double next_double() {
    return randomGenerator.nextDouble();
  }

  @Benchmark
  public int next_int() {
    return randomGenerator.nextInt();
  }

  @Benchmark
  public long next_long() {
    return randomGenerator.nextLong();
  }

  @Benchmark
  public double next_gaussian() {
    return randomGenerator.nextGaussian();
  }

  @Benchmark
  public double next_exponential() {
    return randomGenerator.nextExponential();
  }

  @Benchmark
  public DoubleStream doubles() {
    return randomGenerator.doubles(bytesSize);
  }

  @Benchmark
  public IntStream ints() {
    return randomGenerator.ints(bytesSize);
  }

  @Benchmark
  public LongStream longs() {
    return randomGenerator.longs(bytesSize);
  }
}
