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

import static java.lang.Thread.startVirtualThread;

import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.utils.NetworkUtils;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.LongAdder;
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

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class IoBlockingClientServerBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IoBlockingClientServerBenchmark.*"

  private final long TOTAL_MESSAGES = 500_000L;
  private final Random random = new Random(16384);

  @Param private static NetworkUtils.BufferSize bufferSize;

  private EchoServer server;
  private EchoClient client;
  private Args args;
  private byte[] data;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize.get()];
    random.nextBytes(data);
    args = new Args(NetworkUtils.HOST, NetworkUtils.PORT, 50, 1000, 32_000, 16_192);

    server = new EchoServer(args);
    server.run();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() throws Exception {
    server.stop();
  }

  @Setup(Level.Invocation)
  public void setupInvocation() {
    client = new EchoClient(args);
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() {
    if (client.messages.longValue() != TOTAL_MESSAGES) {
      throw new AssertionError(
          "The number of messages differs from the expected value. Actual: "
              + client.messages.longValue()
              + ", expected: "
              + TOTAL_MESSAGES);
    }
  }

  @Benchmark
  public void send_receive() {
    client.run();
  }

  public class EchoServer {

    final Args args;
    final Thread[] threads;
    final CountDownLatch serverLatch;

    EchoServer(Args args) {
      this.args = args;
      this.threads = new Thread[args.numOfPorts];
      this.serverLatch = new CountDownLatch(args.numOfPorts);
    }

    void run() throws InterruptedException {
      for (int i = 0; i < args.numOfPorts; i++) {
        int port = args.port + i;
        threads[i] = startVirtualThread(() -> serve(port));
      }

      // ensure that the server thread has started before the benchmark iterations
      serverLatch.await();
    }

    void serve(int port) {
      try (ServerSocket serverSocket =
          new ServerSocket(port, args.maxIncomingConnections, InetAddress.getByName(args.host))) {
        serverSocket.setOption(StandardSocketOptions.SO_REUSEADDR, true);
        serverSocket.setOption(StandardSocketOptions.SO_REUSEPORT, true);

        serverLatch.countDown();

        while (true) {
          Socket socket = serverSocket.accept();
          startVirtualThread(() -> handle(socket));
        }
      } catch (Exception ignore) {
      }
    }

    void handle(Socket socket) {
      try (Socket s = socket) {
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        byte[] readBuffer = new byte[bufferSize.get()];

        while (true) {
          int offset = 0;
          while (offset < readBuffer.length) {
            int bytesRead = in.read(readBuffer, offset, readBuffer.length - offset);
            if (-1 == bytesRead) {
              break;
            }
            offset += bytesRead;
          }
          if (!Arrays.equals(data, readBuffer)) {
            throw new AssertionError("The byte arrays have different content.");
          }
          out.write(readBuffer);
        }

      } catch (Exception ignore) {
      }
    }

    void stop() {
      for (int i = 0; i < threads.length; i++) {
        threads[i].interrupt();
      }
    }
  }

  public class EchoClient {

    final Args args;
    final LongAdder messages;
    final Thread[] threads;

    EchoClient(Args args) {
      this.args = args;
      this.messages = new LongAdder();
      this.threads = new Thread[args.numOfPorts * args.numOfConnectionsPerPort];
    }

    void run() {
      for (int i = 0; i < args.numOfPorts; i++) {
        int port = args.port + i;
        for (int j = 0; j < args.numOfConnectionsPerPort; j++) {
          int id = i * args.numOfConnectionsPerPort + j;
          threads[id] =
              startVirtualThread(() -> connect(port, (int) TOTAL_MESSAGES / threads.length));
        }
      }

      for (int i = 0; i < threads.length; i++) {
        try {
          threads[i].join();
        } catch (Exception ignore) {
        }
      }
    }

    void connect(int port, int messages) {
      try (Socket s = new Socket()) {
        s.connect(new InetSocketAddress(args.host, port), args.socketTimeout);
        s.setSoTimeout(args.socketTimeout);
        byte[] readBuffer = new byte[bufferSize.get()];
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        int sentMessages = 0;

        while (sentMessages < messages) {
          out.write(data);
          int offset = 0;
          while (offset < readBuffer.length) {
            int numBytes = in.read(readBuffer, offset, readBuffer.length - offset);
            if (-1 == numBytes) {
              break;
            }
            offset += numBytes;
          }
          if (!Arrays.equals(data, readBuffer)) {
            throw new AssertionError("The byte arrays have different content.");
          }
          sentMessages++;
          this.messages.increment();
        }

      } catch (Exception ignore) {
      }
    }
  }

  public static class Args {
    String host;
    int port;
    int numOfPorts;
    int numOfConnectionsPerPort;
    int socketTimeout;
    int maxIncomingConnections;

    public Args(
        String host,
        int port,
        int numOfPorts,
        int numOfConnectionsPerPort,
        int socketTimeout,
        int maxIncomingConnections) {
      this.host = host;
      this.port = port;
      this.numOfPorts = numOfPorts;
      this.numOfConnectionsPerPort = numOfConnectionsPerPort;
      this.socketTimeout = socketTimeout;
      this.maxIncomingConnections = maxIncomingConnections;
    }
  }
}
