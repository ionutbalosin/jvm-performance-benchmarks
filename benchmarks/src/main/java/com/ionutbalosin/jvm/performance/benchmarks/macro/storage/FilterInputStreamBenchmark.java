/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.storage;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.storage.util.FileUtil.writeToFile;

import com.ionutbalosin.jvm.performance.benchmarks.macro.storage.util.FileUtil.ChunkSize;
import com.ionutbalosin.jvm.performance.benchmarks.macro.storage.util.FileUtil.FileSize;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FilterInputStream;
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
 * Measures the time it takes to read byte array chunks using various types of FilterInputStreams and includes a sanity check to confirm the number of bytes read.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class FilterInputStreamBenchmark {

  // $ java -jar */*/benchmarks.jar ".*FilterInputStreamBenchmark.*"

  private final Random random = new Random(16384);

  @Param private InputStreamType streamType;
  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private File file;
  private FilterInputStream fis;

  @Setup(Level.Trial)
  public void beforeTrial() throws IOException {
    byte[] buffer = new byte[chunkSize.get()];
    random.nextBytes(buffer);

    file = File.createTempFile("FilterInputStream", ".tmp");
    writeToFile(file, fileSize, chunkSize, buffer);
  }

  @TearDown(Level.Trial)
  public void afterTrial() {
    file.delete();
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException {
    switch (streamType) {
      case BUFFERED_IN_STREAM:
        fis = new BufferedInputStream(new FileInputStream(file));
        break;
      case DATA_IN_STREAM:
        fis = new DataInputStream(new FileInputStream(file));
        break;
      default:
        throw new UnsupportedOperationException("Unsupported stream type " + streamType);
    }
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    fis.close();
  }

  @Benchmark
  public byte[] read() throws IOException {
    final byte[] buffer = new byte[chunkSize.get()];
    int bytesRead = fis.read(buffer);

    if (bytesRead == -1) {
      afterIteration();
      beforeIteration();
    } else {
      sanityCheck(bytesRead, chunkSize.get());
    }

    return buffer;
  }

  public enum InputStreamType {
    BUFFERED_IN_STREAM,
    DATA_IN_STREAM
  }

  private void sanityCheck(int actualBytes, int expectedBytes) {
    if (actualBytes != expectedBytes) {
      throw new AssertionError(
          "Number of bytes mismatch. Actual: " + actualBytes + ", expected: " + expectedBytes);
    }
  }
}
