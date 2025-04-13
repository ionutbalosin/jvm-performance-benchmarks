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
import java.io.File;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.file.StandardOpenOption;
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
 * Measures the time it takes to write byte array chunks using a MappedByteBuffer.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MemoryMappedWriteBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MemoryMappedWriteBenchmark.*"

  private final Random random = new Random(16384);

  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private File file;
  private FileChannel writeChannel;
  private MappedByteBuffer mappedByteBuffer;
  private byte[] data;
  private int bytesWritten;

  @Setup(Level.Trial)
  public void beforeTrial() throws IOException {
    data = new byte[chunkSize.get()];
    random.nextBytes(data);

    file = File.createTempFile("MemoryMappedWrite", ".tmp");
  }

  @TearDown(Level.Trial)
  public void afterTrial() throws IOException {
    file.delete();
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException {
    bytesWritten = 0;
    writeChannel =
        FileChannel.open(file.toPath(), StandardOpenOption.READ, StandardOpenOption.WRITE);
    mappedByteBuffer = writeChannel.map(FileChannel.MapMode.READ_WRITE, 0, fileSize.get());
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    mappedByteBuffer.clear();
    writeChannel.close();
  }

  @Benchmark
  public void write() {
    if (bytesWritten + data.length > fileSize.get()) {
      bytesWritten = 0;
      mappedByteBuffer.position(0);
    }

    mappedByteBuffer.put(data);
    bytesWritten += data.length;
  }
}
