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
package com.ionutbalosin.jvm.performance.benchmarks.api.networkio.ioblocking;

import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripLatencyBenchmark.PARALLELISM_COUNT;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripLatencyBenchmark.RECEIVE_BUFFER_LENGTH;
import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;
import static java.util.concurrent.Executors.newFixedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripLatencyBenchmark.ThreadType;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class IoBlockingServer {

  private static final int MAX_INCOMING_CONNECTIONS = 1_000;

  private final String host;
  private final ThreadType threadType;
  private final byte[] data;
  private final Thread serverThread;
  private final ExecutorService executor;
  private final CountDownLatch serverLatch;

  public IoBlockingServer(String host, int port, ThreadType threadType, byte[] data) {
    this.host = host;
    this.threadType = threadType;
    this.data = data;

    this.serverThread = getThread(() -> serve(port));
    this.executor = getExecutorService();
    this.serverLatch = new CountDownLatch(1);
  }

  public void start() throws InterruptedException {
    serverThread.start();
    // ensure that the server thread has started before the benchmark iterations
    serverLatch.await();
  }

  private void serve(int port) {
    try (ServerSocket serverSocket = new ServerSocket()) {
      serverSocket.setOption(StandardSocketOptions.SO_REUSEADDR, true);
      serverSocket.setOption(StandardSocketOptions.SO_REUSEPORT, true);
      serverSocket.setOption(StandardSocketOptions.SO_RCVBUF, RECEIVE_BUFFER_LENGTH);
      serverSocket.bind(new InetSocketAddress(host, port), MAX_INCOMING_CONNECTIONS);

      serverLatch.countDown();

      while (true) {
        final Socket socket = serverSocket.accept();
        executor.submit(() -> handle(socket));
      }
    } catch (Exception ignore) {
    }
  }

  private void handle(Socket newSocket) {
    try (Socket socket = newSocket) {
      InputStream in = socket.getInputStream();
      OutputStream out = socket.getOutputStream();
      byte[] readBuffer = new byte[data.length];

      while (true) {
        final int bytesRead = in.read(readBuffer);
        if (-1 == bytesRead) {
          break;
        }
        out.write(readBuffer, 0, bytesRead);
      }
    } catch (Exception ignore) {
      // auto-close the socket
    }
  }

  public void awaitTermination() {
    executor.shutdown();
    try {
      if (!executor.awaitTermination(24, TimeUnit.SECONDS)) {
        executor.shutdownNow();
        if (!executor.awaitTermination(24, TimeUnit.SECONDS)) {
          System.err.println("Server executor service pool did not terminate.");
        }
      }
    } catch (InterruptedException e) {
      executor.shutdownNow();
      Thread.currentThread().interrupt();
    }

    if (serverThread != null) {
      serverThread.interrupt();
    }
  }

  private Thread getThread(Runnable runnable) {
    return switch (threadType) {
      case VIRTUAL -> ofVirtual().unstarted(runnable);
      case PLATFORM -> ofPlatform().unstarted(runnable);
    };
  }

  private ExecutorService getExecutorService() {
    return switch (threadType) {
        // Note: Virtual threads are not resource-intensive, there is never a need to pool them.
        // Moreover, pooling virtual threads to restrict concurrency should be avoided and
        // implemented using separate mechanisms (such as semaphores).
      case VIRTUAL -> newVirtualThreadPerTaskExecutor();
      case PLATFORM -> newFixedThreadPool(PARALLELISM_COUNT, ofPlatform().factory());
    };
  }
}
