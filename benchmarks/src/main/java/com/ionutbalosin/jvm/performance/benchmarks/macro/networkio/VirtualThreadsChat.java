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
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.LongAdder;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Group;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class VirtualThreadsChat {

  // $ java -jar */*/benchmarks.jar ".*VirtualThreadsChat.*"

  public static long number_of_messages = 100_000;
  EchoServer server;
  EchoClient client;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    Args args = new Args("localhost", 9999, 50, 1000, 10_000, 1_000, 50, 4, 100_000);
    server = new EchoServer(args);
    client = new EchoClient(args);
  }

  @Benchmark
  @Group("vthreadchat")
  public void server() throws InterruptedException {
    server.run();
  }

  @Benchmark
  @Group("vthreadchat")
  public void client() throws InterruptedException {
    client.run();
  }

  public static class EchoServer {

    final Args args;
    final LongAdder connections;
    final LongAdder messages;
    final AtomicReference<Exception> error;

    EchoServer(Args args) {
      this.args = args;
      this.connections = new LongAdder();
      this.messages = new LongAdder();
      this.error = new AtomicReference<>();
    }

    void run() throws InterruptedException {
      for (int i = 0; i < args.portCount; i++) {
        int port = args.port + i;
        Thread.startVirtualThread(() -> serve(port));
      }
      while (true) {
        System.out.printf(
            "[EchoServer] connections=%d, messages=%d\n", connections.sum(), messages.sum());
        Thread.sleep(1_000);
      }
    }

    void serve(int port) {
      try (ServerSocket serverSocket =
          new ServerSocket(port, args.backlog, InetAddress.getByName(args.host))) {
        serverSocket.setOption(StandardSocketOptions.SO_REUSEADDR, true);
        serverSocket.setOption(StandardSocketOptions.SO_REUSEPORT, true);
        while (true) {
          Socket socket = serverSocket.accept();
          connections.increment();
          Thread.startVirtualThread(() -> handle(socket));
        }
      } catch (Exception e) {
        e.printStackTrace();
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
  }

  public static class EchoClient {

    final Args args;
    final LongAdder connections;
    final LongAdder messages;
    final AtomicReference<Exception> error;

    EchoClient(Args args) {
      this.args = args;
      this.connections = new LongAdder();
      this.messages = new LongAdder();
      this.error = new AtomicReference<>();
    }

    void run() throws InterruptedException {
      for (int i = 0; i < args.portCount; i++) {
        int port = args.port + i;
        for (int j = 0; j < args.numConnections; j++) {
          int id = i * args.portCount + j;
          Thread.startVirtualThread(() -> connect(id, port));
        }
      }
      while (error.get() == null) {
        System.out.printf(
            "[EchoClient] connections=%d, messages=%d\n", connections.sum(), messages.sum());
        Thread.sleep(1_000);
      }
      error.get().printStackTrace();
    }

    void connect(int id, int port) {
      try (Socket s = new Socket()) {
        Thread.sleep((int) (Math.random() * args.warmUp));
        s.connect(new InetSocketAddress(args.host, port), args.socketTimeout);
        s.setSoTimeout(args.socketTimeout);
        connections.increment();
        ByteBuffer buffer = ByteBuffer.allocate(4);
        buffer.putInt(id);
        byte[] writeBuffer = buffer.array();
        byte[] readBuffer = new byte[4];
        InputStream in = s.getInputStream();
        OutputStream out = s.getOutputStream();
        while (error.get() == null && messages.longValue() < number_of_messages) {
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
          messages.increment();
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
    int warmUp;
    int sleep;
    int bufferSize;
    int backlog;

    public Args(
        String host,
        int port,
        int portCount,
        int numConnections,
        int socketTimeout,
        int warmUp,
        int sleep,
        int bufferSize,
        int backlog) {
      this.host = host;
      this.port = port;
      this.portCount = portCount;
      this.numConnections = numConnections;
      this.socketTimeout = socketTimeout;
      this.warmUp = warmUp;
      this.sleep = sleep;
      this.bufferSize = bufferSize;
      this.backlog = backlog;
    }
  }
}
