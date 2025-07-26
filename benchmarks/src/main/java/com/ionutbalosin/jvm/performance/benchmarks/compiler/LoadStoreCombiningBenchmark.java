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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmarks Load/Store combining optimizations in the JIT compiler. Tests how the compiler
 * combines adjacent memory operations into wider loads/stores.
 *
 * Load/store combining is a crucial optimization where the JIT compiler:
 * - Combines multiple adjacent byte/short loads into wider int/long loads
 * - Merges sequential stores into single wider store operations
 * - Reduces memory bandwidth usage and improves cache efficiency
 * - Eliminates redundant memory operations
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class LoadStoreCombiningBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LoadStoreCombiningBenchmark.*"

  @Param({"1024", "4096", "16384"})
  private int arraySize;

  private byte[] byteArray;
  private short[] shortArray;
  private int[] intArray;

  // Arrays for testing different alignment scenarios
  private byte[] alignedByteArray;
  private byte[] unalignedByteArray;

  // Test data
  private static final int TEST_INT = 0x12345678;
  private static final long TEST_LONG = 0x123456789ABCDEF0L;

  @Setup
  public void setup() {
    byteArray = new byte[arraySize];
    shortArray = new short[arraySize / 2];
    intArray = new int[arraySize / 4];

    // Create aligned and unaligned byte arrays
    alignedByteArray = new byte[arraySize];
    unalignedByteArray = new byte[arraySize + 1]; // +1 for misalignment

    // Initialize with test data
    for (int i = 0; i < arraySize; i++) {
      byteArray[i] = (byte) (i & 0xFF);
    }
    for (int i = 0; i < shortArray.length; i++) {
      shortArray[i] = (short) (i & 0xFFFF);
    }
    for (int i = 0; i < intArray.length; i++) {
      intArray[i] = i;
    }
  }

  /** Sequential byte loads - should be combined into wider loads */
  @Benchmark
  public long sequential_byte_loads() {
    long result = 0;
    for (int i = 0; i < byteArray.length - 7; i += 8) {
      // These 8 sequential byte loads should be combined
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 1];
      byte b2 = byteArray[i + 2];
      byte b3 = byteArray[i + 3];
      byte b4 = byteArray[i + 4];
      byte b5 = byteArray[i + 5];
      byte b6 = byteArray[i + 6];
      byte b7 = byteArray[i + 7];

      result +=
          ((long) b0 & 0xFF)
              | (((long) b1 & 0xFF) << 8)
              | (((long) b2 & 0xFF) << 16)
              | (((long) b3 & 0xFF) << 24)
              | (((long) b4 & 0xFF) << 32)
              | (((long) b5 & 0xFF) << 40)
              | (((long) b6 & 0xFF) << 48)
              | (((long) b7 & 0xFF) << 56);
    }
    return result;
  }

  /** Non-sequential byte loads - cannot be combined */
  @Benchmark
  public long non_sequential_byte_loads() {
    long result = 0;
    for (int i = 0; i < byteArray.length - 16; i += 16) {
      // Non-sequential access pattern - no combining possible
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 2]; // Gap
      byte b2 = byteArray[i + 4]; // Gap
      byte b3 = byteArray[i + 6]; // Gap
      byte b4 = byteArray[i + 8]; // Gap
      byte b5 = byteArray[i + 10]; // Gap
      byte b6 = byteArray[i + 12]; // Gap
      byte b7 = byteArray[i + 14]; // Gap

      result +=
          ((long) b0 & 0xFF)
              | (((long) b1 & 0xFF) << 8)
              | (((long) b2 & 0xFF) << 16)
              | (((long) b3 & 0xFF) << 24)
              | (((long) b4 & 0xFF) << 32)
              | (((long) b5 & 0xFF) << 40)
              | (((long) b6 & 0xFF) << 48)
              | (((long) b7 & 0xFF) << 56);
    }
    return result;
  }

  /** Short loads that can be combined into int loads */
  @Benchmark
  public long sequential_short_loads() {
    long result = 0;
    for (int i = 0; i < shortArray.length - 3; i += 4) {
      // Four sequential short loads - should combine into two int loads
      short s0 = shortArray[i];
      short s1 = shortArray[i + 1];
      short s2 = shortArray[i + 2];
      short s3 = shortArray[i + 3];

      result +=
          ((long) s0 & 0xFFFF)
              | (((long) s1 & 0xFFFF) << 16)
              | (((long) s2 & 0xFFFF) << 32)
              | (((long) s3 & 0xFFFF) << 48);
    }
    return result;
  }

  /** Int loads that can be combined into long loads */
  @Benchmark
  public long sequential_int_loads() {
    long result = 0;
    for (int i = 0; i < intArray.length - 1; i += 2) {
      // Two sequential int loads - should combine into one long load
      int i0 = intArray[i];
      int i1 = intArray[i + 1];

      result += ((long) i0 & 0xFFFFFFFFL) | (((long) i1 & 0xFFFFFFFFL) << 32);
    }
    return result;
  }

  /** Sequential byte stores - should be combined into wider stores */
  @Benchmark
  public int sequential_byte_stores() {
    int operations = 0;
    for (int i = 0; i < byteArray.length - 7; i += 8) {
      // These 8 sequential byte stores should be combined
      byteArray[i] = (byte) 0x01;
      byteArray[i + 1] = (byte) 0x02;
      byteArray[i + 2] = (byte) 0x03;
      byteArray[i + 3] = (byte) 0x04;
      byteArray[i + 4] = (byte) 0x05;
      byteArray[i + 5] = (byte) 0x06;
      byteArray[i + 6] = (byte) 0x07;
      byteArray[i + 7] = (byte) 0x08;
      operations += 8;
    }
    return operations;
  }

  /** Non-sequential byte stores - cannot be combined */
  @Benchmark
  public int non_sequential_byte_stores() {
    int operations = 0;
    for (int i = 0; i < byteArray.length - 16; i += 16) {
      // Non-sequential stores - no combining possible
      byteArray[i] = (byte) 0x01;
      byteArray[i + 2] = (byte) 0x02; // Gap
      byteArray[i + 4] = (byte) 0x03; // Gap
      byteArray[i + 6] = (byte) 0x04; // Gap
      byteArray[i + 8] = (byte) 0x05; // Gap
      byteArray[i + 10] = (byte) 0x06; // Gap
      byteArray[i + 12] = (byte) 0x07; // Gap
      byteArray[i + 14] = (byte) 0x08; // Gap
      operations += 8;
    }
    return operations;
  }

  /** Short stores that can be combined into int stores */
  @Benchmark
  public int sequential_short_stores() {
    int operations = 0;
    for (int i = 0; i < shortArray.length - 3; i += 4) {
      // Four sequential short stores - should combine
      shortArray[i] = (short) 0x1234;
      shortArray[i + 1] = (short) 0x5678;
      shortArray[i + 2] = (short) 0x9ABC;
      shortArray[i + 3] = (short) 0xDEF0;
      operations += 4;
    }
    return operations;
  }

  /** Int stores that can be combined into long stores */
  @Benchmark
  public int sequential_int_stores() {
    int operations = 0;
    for (int i = 0; i < intArray.length - 1; i += 2) {
      // Two sequential int stores - should combine into long store
      intArray[i] = 0x12345678;
      intArray[i + 1] = 0x9ABCDEF0;
      operations += 2;
    }
    return operations;
  }

  /** Aligned memory access - optimal for combining */
  @Benchmark
  public int aligned_byte_stores() {
    int operations = 0;
    // Access aligned to natural boundaries
    for (int i = 0; i < alignedByteArray.length - 7; i += 8) {
      alignedByteArray[i] = (byte) 0x01;
      alignedByteArray[i + 1] = (byte) 0x02;
      alignedByteArray[i + 2] = (byte) 0x03;
      alignedByteArray[i + 3] = (byte) 0x04;
      alignedByteArray[i + 4] = (byte) 0x05;
      alignedByteArray[i + 5] = (byte) 0x06;
      alignedByteArray[i + 6] = (byte) 0x07;
      alignedByteArray[i + 7] = (byte) 0x08;
      operations += 8;
    }
    return operations;
  }

  /** Misaligned memory access - may prevent combining */
  @Benchmark
  public int misaligned_byte_stores() {
    int operations = 0;
    // Start at offset 1 to create misalignment
    for (int i = 1; i < unalignedByteArray.length - 7; i += 8) {
      unalignedByteArray[i] = (byte) 0x01;
      unalignedByteArray[i + 1] = (byte) 0x02;
      unalignedByteArray[i + 2] = (byte) 0x03;
      unalignedByteArray[i + 3] = (byte) 0x04;
      unalignedByteArray[i + 4] = (byte) 0x05;
      unalignedByteArray[i + 5] = (byte) 0x06;
      unalignedByteArray[i + 6] = (byte) 0x07;
      unalignedByteArray[i + 7] = (byte) 0x08;
      operations += 8;
    }
    return operations;
  }

  /** Interleaved loads and stores - tests combining across operations */
  @Benchmark
  public int interleaved_load_store() {
    int result = 0;
    for (int i = 0; i < byteArray.length - 15; i += 16) {
      // Load-store-load-store pattern
      byte b0 = byteArray[i];
      byte b1 = byteArray[i + 1];
      byteArray[i + 8] = b0;
      byteArray[i + 9] = b1;

      byte b2 = byteArray[i + 2];
      byte b3 = byteArray[i + 3];
      byteArray[i + 10] = b2;
      byteArray[i + 11] = b3;

      result += b0 + b1 + b2 + b3;
    }
    return result;
  }

  /** Memory copy pattern - tests bulk combining optimizations */
  @Benchmark
  public int memory_copy_pattern() {
    int operations = 0;
    int halfSize = byteArray.length / 2;
    for (int i = 0; i < halfSize - 7; i += 8) {
      // Copy 8 bytes from first half to second half
      byteArray[halfSize + i] = byteArray[i];
      byteArray[halfSize + i + 1] = byteArray[i + 1];
      byteArray[halfSize + i + 2] = byteArray[i + 2];
      byteArray[halfSize + i + 3] = byteArray[i + 3];
      byteArray[halfSize + i + 4] = byteArray[i + 4];
      byteArray[halfSize + i + 5] = byteArray[i + 5];
      byteArray[halfSize + i + 6] = byteArray[i + 6];
      byteArray[halfSize + i + 7] = byteArray[i + 7];
      operations += 8;
    }
    return operations;
  }
}
