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
package com.ionutbalosin.jvm.performance.benchmarks.api.uuid;

import java.util.UUID;
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
 * It measures the performance of different operations related to UUIDs (Universally Unique Identifiers):
 * - from_string(): Creates UUID objects from their string representations.
 * - to_string(): Converts UUID objects to their string representations.
 * - from_bytes(): Creates UUID objects from their byte representations.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class UUIDBenchmark {

  // $ java -jar */*/benchmarks.jar ".*UUIDBenchmark.*"

  private final int SIZE = 512;

  private UUID[] uuids;
  private String[] uuidStrings;
  private byte[][] uuidBytes;
  private int offsetIdx;

  @Setup
  public void setup() {
    offsetIdx = 0;
    uuids = new UUID[SIZE];
    uuidStrings = new String[SIZE];
    uuidBytes = new byte[SIZE][];

    for (int i = 0; i < SIZE; i++) {
      final UUID uuid = UUID.randomUUID();

      this.uuids[i] = uuid;
      this.uuidStrings[i] = uuid.toString();
      this.uuidBytes[i] = uuid.toString().getBytes();
    }
  }

  @Benchmark
  public UUID from_string() {
    final int position = nextPosition();
    return UUID.fromString(uuidStrings[position]);
  }

  @Benchmark
  public String to_string() {
    final int position = nextPosition();
    return uuids[position].toString();
  }

  @Benchmark
  public UUID from_bytes() {
    final int position = nextPosition();
    return UUID.nameUUIDFromBytes(uuidBytes[position]);
  }

  private int nextPosition() {
    if (++offsetIdx >= SIZE) {
      offsetIdx = 0;
    }

    return offsetIdx;
  }
}
