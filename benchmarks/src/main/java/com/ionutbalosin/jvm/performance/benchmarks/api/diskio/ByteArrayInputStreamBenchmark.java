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
package com.ionutbalosin.jvm.performance.benchmarks.api.diskio;

import com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.FileUtil.ChunkSize;
import com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.FileUtil.FileSize;
import java.io.ByteArrayInputStream;
import java.io.IOException;
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
import org.openjdk.jmh.annotations.TearDown;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Measures the time it takes to read byte array chunks using a ByteArrayInputStream and includes a sanity check to verify the number of bytes read.
 *
 * Note: all of these I/O benchmarks are affected by various factors, including:
 * - Underlying File System: Different file systems (such as NTFS, ext4, FAT32) might employ distinct strategies for caching, block allocation,
 * and metadata management, thereby impacting I/O performance.
 * - Hardware: The hardware utilized, including specifications of the hard drive or solid-state drive (SSD),  such as rotational speed,
 * data transfer rates, and seek times.
 * - Disk Subsystem: The physical hardware components responsible for storing and retrieving data, encompassing factors like disk speed,
 * storage technology (HDD vs. SSD), and more.
 * - Operating System Disk Scheduler: The OS disk scheduler manages the order in which read and write requests are processed on the storage device.
 * Various schedulers prioritize requests differently, influencing the sequence and efficiency of I/O operations.
 * - Caching: Both the OS and hardware often employ caching mechanisms to boost the I/O performance.
 * This entails frequently accessed data being stored in a cache to curtail the necessity of accessing slower storage media, such as disks.
 * - File Size and Data Patterns: The size of files being read or written and the patterns of data access can exert influence on I/O performance.
 * Sequential access might outpace random access, and disparities in performance characteristics might emerge between larger and smaller files.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ByteArrayInputStreamBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ByteArrayInputStreamBenchmark.*"

  private final Random random = new Random(16384);

  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private ByteArrayInputStream bais;
  private byte[] data;

  @Setup
  public void setup() throws IOException {
    data = new byte[fileSize.get()];
    random.nextBytes(data);
  }

  @Setup(Level.Iteration)
  public void beforeIteration() {
    bais = new ByteArrayInputStream(data);
    bais.mark(fileSize.get());
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    bais.close();
  }

  @Benchmark
  public byte[] read() throws IOException {
    final byte[] buffer = new byte[chunkSize.get()];
    int bytesRead = bais.read(buffer);

    if (bytesRead == -1) {
      bais.reset();
    } else {
      sanityCheck(bytesRead, chunkSize.get());
    }

    return buffer;
  }

  private void sanityCheck(int actualBytes, int expectedBytes) {
    if (actualBytes != expectedBytes) {
      throw new AssertionError(
          "Number of bytes mismatch. Actual: " + actualBytes + ", expected: " + expectedBytes);
    }
  }
}
