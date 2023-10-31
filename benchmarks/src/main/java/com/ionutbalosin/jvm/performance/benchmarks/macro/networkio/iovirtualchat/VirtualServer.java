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
package com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.iovirtualchat;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.IoVirtualChatBenchmark.MAX_INCOMING_CONNECTIONS;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.IoVirtualChatBenchmark.RECEIVE_BUFFER_LENGTH;
import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;
import static java.util.concurrent.Executors.newCachedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.IoVirtualChatBenchmark.ThreadType;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class VirtualServer {

  private final String host;
  private final ThreadType threadType;
  private final byte[] data;
  private final Thread serverThread;
  private final ExecutorService executor;
  private final CountDownLatch serverLatch;

  public VirtualServer(String host, int port, ThreadType threadType, byte[] data) {
    this.host = host;
    this.threadType = threadType;
    this.data = data;

    this.serverThread = getThread(() -> serve(port));
    this.executor = getExecutorService();
    this.serverLatch = new CountDownLatch(1);
  }

  public void start() throws InterruptedException {
    serverThread.start();
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
      // auto-close
    }
  }

  public void awaitTermination() {
    executor.shutdown();
    try {
      if (!executor.awaitTermination(12, TimeUnit.SECONDS)) {
        executor.shutdownNow();
        if (!executor.awaitTermination(12, TimeUnit.SECONDS)) {
          System.out.println("Server executor pool did not terminate.");
        }
      }
    } catch (InterruptedException e) {
      executor.shutdownNow();
      Thread.currentThread().interrupt();
    }

    serverThread.interrupt();
  }

  private Thread getThread(Runnable runnable) {
    return switch (threadType) {
      case VIRTUAL -> ofVirtual().unstarted(runnable);
      case PLATFORM -> ofPlatform().unstarted(runnable);
    };
  }

  private ExecutorService getExecutorService() {
    return switch (threadType) {
      case VIRTUAL -> newVirtualThreadPerTaskExecutor();
      case PLATFORM -> newCachedThreadPool();
    };
  }
}
