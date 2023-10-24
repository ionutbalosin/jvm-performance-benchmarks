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

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.LongAdder;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
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
public class VirtualThreadsChat {

  // $ java -jar */*/benchmarks.jar ".*VirtualThreadsChat.*"

  public static final long TOTAL_MESSAGES = 1_000_000L;
  EchoServer server;
  EchoClient client;
  Args args;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    args = new Args("localhost", 9999, 50, 1000, 32_000, 16, 16_192);

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
      throw new AssertionError("The byte arrays have different content.");
    }
  }

  @Benchmark
  public void send_receive() {
    client.run();
  }

  public static class EchoServer {

    final Args args;
    final LongAdder connections;
    final LongAdder messages;
    final AtomicReference<Exception> error;
    final Thread[] threads;
    final CountDownLatch serverLatch;

    EchoServer(Args args) {
      this.args = args;
      this.connections = new LongAdder();
      this.messages = new LongAdder();
      this.error = new AtomicReference<>();
      this.threads = new Thread[args.portCount];
      this.serverLatch = new CountDownLatch(args.portCount);
    }

    void run() throws InterruptedException {
      for (int i = 0; i < args.portCount; i++) {
        int port = args.port + i;
        threads[i] = Thread.startVirtualThread(() -> serve(port));
      }

      // ensure that the server thread has started before the benchmark iterations
      serverLatch.await();
    }

    void serve(int port) {
      try (ServerSocket serverSocket =
          new ServerSocket(port, args.backlog, InetAddress.getByName(args.host))) {
        serverSocket.setOption(StandardSocketOptions.SO_REUSEADDR, true);
        serverSocket.setOption(StandardSocketOptions.SO_REUSEPORT, true);

        serverLatch.countDown();

        while (true) {
          Socket socket = serverSocket.accept();
          connections.increment();
          Thread.startVirtualThread(() -> handle(socket));
        }
      } catch (Exception ignore) {
        // auto-close
      }
    }

    void handle(Socket socket) {
      try (Socket s = socket) {
        byte[] buffer = new byte[args.bufferSize];
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        while (true) {
          int numBytes = in.read(buffer);
          if (numBytes < 0) {
            break;
          }
          out.write(buffer, 0, numBytes);
          messages.increment();
        }
      } catch (Exception ignore) {
        // auto-close
      } finally {
        connections.decrement();
      }
    }

    void stop() {
      for (int i = 0; i < threads.length; i++) {
        threads[i].interrupt();
      }
    }
  }

  public static class EchoClient {

    final Args args;
    final LongAdder connections;
    final LongAdder messages;
    final AtomicReference<Exception> error;
    final Thread[] threads;

    EchoClient(Args args) {
      this.args = args;
      this.connections = new LongAdder();
      this.messages = new LongAdder();
      this.error = new AtomicReference<>();
      this.threads = new Thread[args.portCount * args.numConnections];
    }

    void run() {
      for (int i = 0; i < args.portCount; i++) {
        int port = args.port + i;
        for (int j = 0; j < args.numConnections; j++) {
          int id = i * args.numConnections + j;
          threads[id] =
              Thread.startVirtualThread(
                  () -> connect(id, port, (int) TOTAL_MESSAGES / threads.length));
        }
      }

      for (int i = 0; i < threads.length; i++) {
        try {
          threads[i].join();
        } catch (Exception ignore) {
        }
      }
    }

    void connect(int id, int port, int messages) {
      try (Socket s = new Socket()) {
        s.connect(new InetSocketAddress(args.host, port), args.socketTimeout);
        s.setSoTimeout(args.socketTimeout);
        connections.increment();
        ByteBuffer buffer = ByteBuffer.allocate(4);
        buffer.putInt(id);
        byte[] writeBuffer = buffer.array();
        byte[] readBuffer = new byte[4];
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        int sentMessages = 0;

        while (error.get() == null && sentMessages < messages) {
          out.write(writeBuffer);
          int offset = 0;
          while (offset < readBuffer.length) {
            int numBytes = in.read(readBuffer, offset, readBuffer.length - offset);
            if (numBytes < 0) {
              break;
            }
            offset += numBytes;
          }
          if (!Arrays.equals(writeBuffer, readBuffer)) {
            throw new AssertionError("The byte arrays have different content.");
          }
          sentMessages++;
          this.messages.increment();
        }
      } catch (Exception e) {
        error.set(e);
      } finally {
        connections.decrement();
      }
    }
  }

  public static class Args {
    String host;
    int port;
    int portCount;
    int numConnections;
    int socketTimeout;
    int bufferSize;
    int backlog;

    public Args(
        String host,
        int port,
        int portCount,
        int numConnections,
        int socketTimeout,
        int bufferSize,
        int backlog) {
      this.host = host;
      this.port = port;
      this.portCount = portCount;
      this.numConnections = numConnections;
      this.socketTimeout = socketTimeout;
      this.bufferSize = bufferSize;
      this.backlog = backlog;
    }
  }
}
