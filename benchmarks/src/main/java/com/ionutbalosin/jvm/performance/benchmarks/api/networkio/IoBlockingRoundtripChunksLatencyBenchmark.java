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
package com.ionutbalosin.jvm.performance.benchmarks.api.networkio;

import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.HOST;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.PORT;
import static java.util.Optional.ofNullable;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.ioblocking.IoBlockingClient;
import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.ioblocking.IoBlockingServer;
import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.BufferSize;
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
 * This benchmark measures the latency of blocking TCP calls for sending and receiving multiple
 * chunks of messages using the blocking I/O (input/output) API. It involves communication between
 * multiple Clients and a Server. Each Client-to-Server interaction is handled within a virtual
 * thread or a platform thread.
 *
 * The benchmark method initiates multiple Clients, each of which connects to the Server. Within
 * each Client, multiple byte arrays (i.e., chunks of messages) are sequentially sent to the Server,
 * and the Client waits for the Server to echo each of them back. The time taken for these combined
 * send-receive Clients-to-Server interactions is measured to assess the overall latency.
 *
 * References: - https://github.com/ebarlas/project-loom-c5m
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class IoBlockingRoundtripChunksLatencyBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IoBlockingRoundtripChunksLatencyBenchmark.*"

  // Note: Setting these buffers too high might cause ENOBUFS on some systems (e.g., FreeBSD).
  // In case of issues, please check the maximum socket send/receive buffer size for your system.
  public static final int SEND_BUFFER_LENGTH = 4_096;
  public static final int RECEIVE_BUFFER_LENGTH = 4_096;

  // For a more accurate comparison between virtual threads and platform threads, set the
  // parallelism count to match the level of parallelism used for scheduling virtual threads (if
  // explicitly specified in the command line) or to the default number of available processors
  // (otherwise). This parallelism count is further utilized to define the core pool size of
  // platform threads but also to determine the tasks' load factor.
  public static final int PARALLELISM_COUNT =
      ofNullable(System.getProperty("jdk.virtualThreadScheduler.parallelism"))
          .map(Integer::parseInt)
          .orElse(Runtime.getRuntime().availableProcessors());

  private final Random random = new Random(16384);

  @Param private BufferSize bufferSize;
  @Param private ThreadType threadType;
  @Param private Chunks chunks;

  private IoBlockingServer server;
  private IoBlockingClient client;
  private byte[] data;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize.get()];
    random.nextBytes(data);

    server = new IoBlockingServer(HOST, PORT, threadType, data);
    server.start();

    client = new IoBlockingClient(HOST, PORT, threadType, data);
    client.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
    client.terminate();
    server.awaitTermination();
  }

  @Benchmark
  public void send_receive() {
    client.sendReceiveChunks(chunks.get());
  }

  public enum ThreadType {
    VIRTUAL,
    PLATFORM
  }

  public enum Chunks {
    _10_K(10_000);

    private int value;

    Chunks(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }
}
