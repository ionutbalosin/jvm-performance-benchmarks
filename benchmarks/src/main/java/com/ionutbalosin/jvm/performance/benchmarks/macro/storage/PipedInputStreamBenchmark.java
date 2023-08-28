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

import com.ionutbalosin.jvm.performance.benchmarks.macro.storage.util.FileUtil.ChunkSize;
import java.io.IOException;
import java.io.PipedInputStream;
import java.io.PipedOutputStream;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
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
 * Measures the time it takes to read byte array chunks using an PipedInputStream and includes a sanity check to verify the number of bytes read.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class PipedInputStreamBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PipedInputStreamBenchmark.*"

  private final Random random = new Random(16384);

  @Param private ChunkSize chunkSize;

  private PipedInputStream pis;
  private PipedOutputStream pos;
  private byte[] data;
  private Thread writerThread;
  private CountDownLatch writerLatch;
  private volatile boolean isWriterRunning;

  @Setup(Level.Trial)
  public void beforeTrial() throws IOException {
    data = new byte[chunkSize.get()];
    random.nextBytes(data);
  }

  @Setup(Level.Iteration)
  public void beforeIteration() throws IOException, InterruptedException {
    pis = new PipedInputStream(chunkSize.get());
    pos = new PipedOutputStream(pis);

    isWriterRunning = true;
    writerLatch = new CountDownLatch(1);
    writerThread =
        new Thread(
            () -> {
              writerLatch.countDown();
              while (isWriterRunning) {
                try {
                  pos.write(data);
                  pos.flush();
                } catch (IOException e) {
                  throw new RuntimeException(e);
                }
              }
            });

    writerThread.start();
    // ensure that the writer thread has started before the benchmark iterations
    writerLatch.await();
  }

  @TearDown(Level.Iteration)
  public void afterIteration() throws IOException, InterruptedException {
    isWriterRunning = false;
    writerThread.join();
    pis.close();
    pos.close();
  }

  @Benchmark
  public byte[] read() throws IOException, InterruptedException {
    final byte[] buffer = new byte[chunkSize.get()];
    int bytesRead = pis.read(buffer, 0, chunkSize.get());

    if (bytesRead == -1) {
      afterIteration();
      beforeIteration();
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