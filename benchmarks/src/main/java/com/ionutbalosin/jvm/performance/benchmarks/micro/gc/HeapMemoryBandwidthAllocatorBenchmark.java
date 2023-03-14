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
package com.ionutbalosin.jvm.performance.benchmarks.micro.gc;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
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
 * This benchmark tests the allocation rate for chunks of byte arrays having different sizes.
 *
 * In comparison to the previous benchmarks (e.g., HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark, HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark),
 * it just allocates the byte arrays and immediately releases them, without keeping any strong references.
 *
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class HeapMemoryBandwidthAllocatorBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HeapMemoryBandwidthAllocatorBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC}
  // - JMH options: -t {1, 2} -prof gc

  private int sizeInBytes;

  @Param private ObjectsSize size;

  @Setup()
  public void setup() {
    switch (size) {
      case _32_B:
        sizeInBytes = 32;
        break;
      case _16_KB:
        sizeInBytes = 16 * 1024;
        break;
      case _8_MB:
        sizeInBytes = 8 * 1024 * 1024;
        break;
      default:
        throw new UnsupportedOperationException("Unsupported object size " + size);
    }
  }

  @Benchmark
  public byte[] gc() {
    return allocate();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private byte[] allocate() {
    return new byte[sizeInBytes];
  }

  public enum ObjectsSize {
    _32_B,
    _16_KB,
    _8_MB
  }
}
