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
package com.ionutbalosin.jvm.performance.benchmarks.api;

import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Benchmarks the performance difference between using string concatenation vs. wrapper objects
 * for composite HashMap keys. String concatenation creates temporary objects and requires
 * string operations, while wrapper objects provide better performance through optimized
 * hashCode() and equals() implementations.
 *
 * The benchmark tests two approaches:
 * 1. String concatenation keys: keyPart1 + ":" + keyPart2 (creates new strings)
 * 2. Composite wrapper keys: immutable object with pre-computed hashCode
 *
 * References:
 * - https://richardstartin.github.io/posts/5-java-mundane-performance-tricks
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 2, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 2, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class HashMapCompositeKeyBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HashMapCompositeKeyBenchmark.*"

  private final Random random = new Random(16384);

  @Param({"16384"})
  private int mapSize;

  @Param({"64"})
  private int keyLength;

  private Map<String, Integer> stringKeyMap;
  private Map<CompositeKey, Integer> compositeKeyMap;

  private String[] stringKeys;
  private CompositeKey[] compositeKeys;

  // Key part values used to build the full keys (e.g., keyPart1 + ":" + keyPart2)
  private String[] keyPart1Values;
  private String[] keyPart2Values;

  @Setup(Level.Trial)
  public void setup() {
    // Generate test data
    keyPart1Values = generateStringArray(mapSize, keyLength / 2);
    keyPart2Values = generateStringArray(mapSize, keyLength / 2);
    stringKeys = new String[mapSize];
    compositeKeys = new CompositeKey[mapSize];

    // Pre-compute keys
    for (int i = 0; i < mapSize; i++) {
      stringKeys[i] = keyPart1Values[i] + ":" + keyPart2Values[i];
      compositeKeys[i] = new CompositeKey(keyPart1Values[i], keyPart2Values[i]);
    }

    // Initialize maps
    stringKeyMap = new HashMap<>(mapSize);
    compositeKeyMap = new HashMap<>(mapSize);
    for (int i = 0; i < mapSize; i++) {
      stringKeyMap.put(stringKeys[i], i);
      compositeKeyMap.put(compositeKeys[i], i);
    }
  }

  @Benchmark
  public Integer string_key_lookup() {
    final int index = random.nextInt(mapSize);
    final String key = keyPart1Values[index] + ":" + keyPart2Values[index];
    return stringKeyMap.get(key);
  }

  @Benchmark
  public Integer composite_key_lookup() {
    final int index = random.nextInt(mapSize);
    final CompositeKey key = new CompositeKey(keyPart1Values[index], keyPart2Values[index]);
    return compositeKeyMap.get(key);
  }

  @Benchmark
  public Integer string_key_put() {
    final int index = random.nextInt(mapSize);
    final String key = keyPart1Values[index] + ":" + keyPart2Values[index];
    return stringKeyMap.put(key, index);
  }

  @Benchmark
  public Integer composite_key_put() {
    final int index = random.nextInt(mapSize);
    final CompositeKey key = new CompositeKey(keyPart1Values[index], keyPart2Values[index]);
    return compositeKeyMap.put(key, index);
  }

  private String[] generateStringArray(int size, int stringLength) {
    final String[] array = new String[size];
    for (int i = 0; i < size; i++) {
      array[i] = generateRandomString(stringLength);
    }
    return array;
  }

  private String generateRandomString(int length) {
    final StringBuilder sb = new StringBuilder(length);
    for (int i = 0; i < length; i++) {
      sb.append((char) ('a' + random.nextInt(26)));
    }
    return sb.toString();
  }

  /** Immutable composite key wrapper that avoids string concatenation. */
  private static final class CompositeKey {
    private final String field1;
    private final String field2;
    private final int hashCode;

    public CompositeKey(String field1, String field2) {
      this.field1 = field1;
      this.field2 = field2;
      this.hashCode = Objects.hash(field1, field2);
    }

    @Override
    public boolean equals(Object obj) {
      if (this == obj) return true;
      if (obj == null || getClass() != obj.getClass()) return false;
      CompositeKey that = (CompositeKey) obj;
      return Objects.equals(field1, that.field1) && Objects.equals(field2, that.field2);
    }

    @Override
    public int hashCode() {
      return hashCode;
    }
  }
}
