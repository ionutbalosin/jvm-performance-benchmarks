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
import java.io.CharArrayReader;
import java.io.IOException;
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
 * Measures the time it takes to read character array chunks using a CharArrayReader and includes a sanity check to verify the number of characters read.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class CharArrayReaderBenchmark {

  // $ java -jar */*/benchmarks.jar ".*CharArrayReaderBenchmark.*"

  private final int ISO_8859_1 = 0xFF;

  @Param private ChunkSize chunkSize;
  @Param private FileSize fileSize;

  private CharArrayReader car;
  private char[] data;

  @Setup
  public void setup() throws IOException {
    data = charArray(fileSize.get(), ISO_8859_1);
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException {
    car = new CharArrayReader(data);
    car.mark(fileSize.get());
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException {
    car.close();
  }

  @Benchmark
  public char[] read() throws IOException {
    final char[] buffer = new char[chunkSize.get()];
    int charsRead = car.read(buffer);

    if (charsRead == -1) {
      car.reset();
    } else {
      sanityCheck(charsRead, chunkSize.get());
    }

    return buffer;
  }

  private void sanityCheck(int actualChars, int expectedChars) {
    if (actualChars != expectedChars) {
      throw new AssertionError(
          "Number of chars mismatch. Actual: " + actualChars + ", expected: " + expectedChars);
    }
  }
}
