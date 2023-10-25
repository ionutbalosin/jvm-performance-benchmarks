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

import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils.HOST;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils.PORT;

import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils;
import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.virtualchat.VirtualClient;
import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.virtualchat.VirtualServer;
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
 * This benchmark measures the average time it takes to send and receive a large number of messages between a Client and a Server.
 * Both the Client and Server employ virtual threads to manage connections between them.
 *
 * The Server listens on a specific range of ports for incoming client connections, with each connection being handled by a virtual thread.
 * When a connection request is accepted from the Client, a new virtual thread is spawned to manage the specific communication
 * with that Client (i.e., listen to the Client message and echo back the same content).
 *
 * The Client initiates multiple connections to each of the Server's ports within the specified range, simulating multiple
 * clients interacting with the Server on the same port. In each connection, handled within a virtual thread,
 * the Client sends a byte array to the Server and awaits the same message to be echoed back.
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

  private final Random random = new Random(16384);

  @Param private static Ports ports;
  @Param private static Connections connections;
  @Param private static Messages messages;
  @Param private static NetworkUtils.BufferSize bufferSize;

  private VirtualServer vServer;
  private VirtualClient vClient;
  private byte[] data;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize.get()];
    random.nextBytes(data);

    vServer = new VirtualServer(HOST, PORT, ports.get(), data);
    vServer.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() throws Exception {
    vServer.awaitTermination();
  }

  @Setup(Level.Invocation)
  public void setupInvocation() {
    vClient = new VirtualClient(HOST, PORT, ports.get(), connections.get(), data, messages.get());
    vClient.init();
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() {
    if (vClient.messages.longValue() != messages.get()) {
      throw new AssertionError(
          "The number of messages differs from the expected value. Actual: "
              + vClient.messages.longValue()
              + ", expected: "
              + messages.get());
    }
  }

  @Benchmark
  public void send_receive() {
    vClient.start();
    vClient.awaitTermination();
  }

  public enum Ports {
    _100(100);

    private int value;

    Ports(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }

  public enum Connections {
    _50_K(50_000);

    private int value;

    Connections(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }

  public enum Messages {
    _500_K(500_000);

    private int value;

    Messages(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }
}
