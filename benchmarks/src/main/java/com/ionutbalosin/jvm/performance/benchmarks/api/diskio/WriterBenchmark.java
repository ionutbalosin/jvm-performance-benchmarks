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
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
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
 * Measures the time it takes to write character array chunks using various types of Writer.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class WriterBenchmark {

  // $ java -jar */*/benchmarks.jar ".*WriterBenchmark.*"

  private final int ISO_8859_1 = 0xFF;

  @Param private WriterType writerType;
  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private File file;
  private Writer writer;
  private char[] data;
  private int charsWritten;

  @Setup(Level.Trial)
  public void beforeTrial() throws IOException {
    data = charArray(chunkSize.get(), ISO_8859_1);
    file = File.createTempFile("Writer", ".tmp");
  }

  @TearDown(Level.Trial)
  public void afterTrial() {
    file.delete();
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException {
    charsWritten = 0;
    switch (writerType) {
      case FILE_WRITER:
        writer = new FileWriter(file);
        break;
      case PRINT_WRITER:
        writer = new PrintWriter(file);
        break;
      case BUFFERED_WRITER:
        writer = new BufferedWriter(new FileWriter(file));
        break;
      case OUTPUT_STREAM_WRITER:
        writer = new OutputStreamWriter(new FileOutputStream(file));
        break;
      default:
        throw new UnsupportedOperationException("Unsupported writer type " + writerType);
    }
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    writer.close();
  }

  @Benchmark
  public void write() throws IOException {
    if (charsWritten + data.length > fileSize.get()) {
      writer.close();
      beforeIteration();
    }

    writer.write(data);
    writer.flush();
    charsWritten += data.length;
  }

  public enum WriterType {
    FILE_WRITER,
    PRINT_WRITER,
    BUFFERED_WRITER,
    OUTPUT_STREAM_WRITER
  }
}
