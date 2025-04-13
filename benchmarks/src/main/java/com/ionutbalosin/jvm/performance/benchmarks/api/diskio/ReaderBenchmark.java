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

import static com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.CharUtils.charArray;

import com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.FileUtil.ChunkSize;
import com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util.FileUtil.FileSize;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.LineNumberReader;
import java.io.Reader;
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
 * Measures the time it takes to read character array chunks using various types of Reader and includes a sanity check to confirm the number of bytes read.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ReaderBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ReaderBenchmark.*"

  private final int ISO_8859_1 = 0xFF;

  @Param private ReaderType readerType;
  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private File file;
  private Reader reader;

  @Setup(Level.Trial)
  public void beforeTrial() throws IOException {
    char[] buffer = charArray(chunkSize.get(), ISO_8859_1);

    file = File.createTempFile("Reader", ".tmp");
    try (FileWriter fw = new FileWriter(file)) {
      for (int i = 0; i < fileSize.get(); i += chunkSize.get()) {
        int charsRemaining = Math.min(fileSize.get() - i, chunkSize.get());
        fw.write(buffer, 0, charsRemaining);
      }
    }
  }

  @TearDown(Level.Trial)
  public void afterTrial() {
    file.delete();
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException {
    switch (readerType) {
      case FILE_READER:
        reader = new FileReader(file);
        break;
      case INPUT_STREAM_READER:
        reader = new InputStreamReader(new FileInputStream(file));
        break;
      case BUFFERED_READER:
        reader = new BufferedReader(new FileReader(file));
        break;
      case LINE_NUMBER_READER:
        reader = new LineNumberReader(new FileReader(file));
        break;
      default:
        throw new UnsupportedOperationException("Unsupported reader type " + readerType);
    }
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    reader.close();
  }

  @Benchmark
  public char[] read() throws IOException {
    final char[] buffer = new char[chunkSize.get()];
    int charsRead = reader.read(buffer);

    if (charsRead == -1) {
      afterIteration();
      beforeIteration();
    } else {
      sanityCheck(charsRead, chunkSize.get());
    }

    return buffer;
  }

  public enum ReaderType {
    FILE_READER,
    INPUT_STREAM_READER,
    BUFFERED_READER,
    LINE_NUMBER_READER
  }

  private void sanityCheck(int actualChars, int expectedChars) {
    if (actualChars != expectedChars) {
      throw new AssertionError(
          "Number of chars mismatch. Actual: " + actualChars + ", expected: " + expectedChars);
    }
  }
}
