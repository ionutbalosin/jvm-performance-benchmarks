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

import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.ioblocking.IoBlockingClient.sendReceiveChunks;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.HOST;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.PORT;
import static java.util.concurrent.Executors.newCachedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.ioblocking.IoBlockingServer;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.stream.IntStream;
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
 * The `send_receive()` method initiates multiple Clients, each of which connects to the Server.
 * Within each Client, multiple byte arrays (i.e., chunks of messages) are sequentially sent to the
 * Server, and the Client waits for the Server to echo each of them back. The time taken for these
 * combined send-receive Clients-to-Server interactions is measured to assess the overall latency.
 *
 * References:
 * - https://github.com/ebarlas/project-loom-c5m
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class IoBlockingRoundtripChunksLatencyBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IoBlockingRoundtripChunksLatencyBenchmark.*"

  // Note: Setting these buffers too high might cause ENOBUFS on some systems (e.g., FreeBSD).
  // In case of issues, please check the maximum socket send/receive buffer size for your system.
  public static final int SEND_BUFFER_LENGTH = 4_096;
  public static final int RECEIVE_BUFFER_LENGTH = 4_096;

  private static final int CPUs = Runtime.getRuntime().availableProcessors();

  private final Random random = new Random(16384);

  @Param({"8"})
  private int cpuLoadFactor;

  @Param({"4"})
  private int bufferSize;

  @Param private ThreadType threadType;
  @Param private MessagesPerClient messagesPerClient;

  private IoBlockingServer server;
  private byte[] data;
  private int tasks;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize];
    random.nextBytes(data);
    tasks = CPUs * cpuLoadFactor;

    server = new IoBlockingServer(HOST, PORT, threadType, data);
    server.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
    server.awaitTermination();
  }

  @Benchmark
  public void send_receive() {
    try (final ExecutorService executor = getExecutorService()) {
      IntStream.range(0, tasks)
          .forEach(
              i ->
                  executor.submit(
                      () -> sendReceiveChunks(HOST, PORT, data, messagesPerClient.get())));
    }
  }

  public enum ThreadType {
    VIRTUAL,
    PLATFORM
  }

  public enum MessagesPerClient {
    _50_K(50_000);

    private int value;

    MessagesPerClient(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }

  private ExecutorService getExecutorService() {
    return switch (threadType) {
      case VIRTUAL -> newVirtualThreadPerTaskExecutor();
      case PLATFORM -> newCachedThreadPool();
    };
  }
}
