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
package com.ionutbalosin.jvm.performance.benchmarks.macro.networkio.virtualchat;

import static java.lang.Thread.startVirtualThread;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

public class VirtualServer {

  private final int MAX_INCOMING_CONNECTIONS = 16_192;

  private final int numberOfPorts;
  private final ExecutorService executor;
  private final CountDownLatch serverLatch;
  private final String host;
  private final int port;
  private final byte[] data;

  public VirtualServer(String host, int port, int numberOfPorts, byte[] data) {
    this.host = host;
    this.port = port;
    this.numberOfPorts = numberOfPorts;
    this.data = data;
    this.executor = newVirtualThreadPerTaskExecutor();
    this.serverLatch = new CountDownLatch(numberOfPorts);
  }

  public void start() throws InterruptedException {
    for (int i = 0; i < numberOfPorts; i++) {
      final int newPort = port + i;
      executor.submit(() -> serve(newPort));
    }

    // ensure that the server thread has started before the benchmark iterations
    serverLatch.await();
  }

  private void serve(int port) {
    try (ServerSocket serverSocket =
        new ServerSocket(port, MAX_INCOMING_CONNECTIONS, InetAddress.getByName(host))) {
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

  private void handle(Socket newSocket) {
    try (Socket socket = newSocket) {
      InputStream in = socket.getInputStream();
      OutputStream out = socket.getOutputStream();
      byte[] readBuffer = new byte[data.length];

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
      // auto-close
    }
  }

  public void awaitTermination() throws InterruptedException {
    executor.shutdown();
    executor.awaitTermination(24, TimeUnit.SECONDS);
  }
}
