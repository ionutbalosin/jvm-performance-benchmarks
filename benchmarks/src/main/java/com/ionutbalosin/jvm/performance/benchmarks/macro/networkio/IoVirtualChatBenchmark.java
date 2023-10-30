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
package com.ionutbalosin.jvm.performance.benchmarks.macro.networkio;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.iovirtualchat.VirtualClient.connect;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils.HOST;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils.PORT;
import static java.util.concurrent.Executors.newCachedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.iovirtualchat.VirtualServer;
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
 * messages using blocking I/O (input/output). It simulates interactions from multiple clients to a server
 * over TCP connections.
 *
 * Each Client-to-Server interaction is handled either within a virtual thread or a platform thread.
 *
 * The `send_receive()` method sequentially sends multiple byte arrays (i.e., messages) from each client
 * to the server and waits until the server echoes each of them back. The time taken for these combined
 * send-receive interactions is measured to assess the overall latency of the communication.
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
public class IoVirtualChatBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IoVirtualChatBenchmark.*"

  // Note: Setting these buffers too high might cause ENOBUFS on some systems (e.g., FreeBSD).
  // In case of issues, please check the maximum socket send/receive buffer size for your system.
  public static final int SEND_BUFFER_LENGTH = 4_096;
  public static final int RECEIVE_BUFFER_LENGTH = 4_096;
  public static final int CLIENT_SOCKET_TIMEOUT = 12_000;
  public static final int MAX_INCOMING_CONNECTIONS = 1024;

  private static final int CPUs = Runtime.getRuntime().availableProcessors();

  private final Random random = new Random(16384);

  @Param({"8"})
  private int cpuLoadFactor;

  @Param({"4"})
  private int bufferSize;

  @Param private ThreadType threadType;
  @Param private MessagesPerClient messagesPerClient;

  private VirtualServer vServer;
  private byte[] data;
  private int tasks;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize];
    random.nextBytes(data);
    tasks = CPUs * cpuLoadFactor;

    vServer = new VirtualServer(HOST, PORT, threadType, data);
    vServer.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
    vServer.awaitTermination();
  }

  @Benchmark
  public void send_receive() {
    try (ExecutorService executor = getExecutorService()) {
      IntStream.range(0, tasks)
          .forEach(i -> executor.submit(() -> connect(HOST, PORT, data, messagesPerClient.get())));
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
