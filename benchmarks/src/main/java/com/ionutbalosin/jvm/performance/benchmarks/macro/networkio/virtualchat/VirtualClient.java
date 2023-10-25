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

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.concurrent.atomic.LongAdder;

public class VirtualClient {

  private final int SOCKET_TIMEOUT = 32_000;

  private final String host;
  private final int port;
  private final int numberOfPorts;
  private final long totalMessages;
  private final byte[] data;
  private final int numberOfClientsPerPort;
  private final Thread[] threads;
  public final LongAdder messages;

  public VirtualClient(
      String host,
      int port,
      int numberOfPorts,
      int numberOfConnections,
      byte[] data,
      long totalMessages) {
    this.host = host;
    this.port = port;
    this.numberOfPorts = numberOfPorts;
    this.data = data;
    this.totalMessages = totalMessages;
    this.numberOfClientsPerPort = numberOfConnections / numberOfPorts;
    this.threads = new Thread[numberOfConnections];
    this.messages = new LongAdder();
  }

  public void start() {
    for (int i = 0; i < numberOfPorts; i++) {
      final int newPort = port + i;
      for (int j = 0; j < numberOfClientsPerPort; j++) {
        int id = i * numberOfClientsPerPort + j;
        threads[id] =
            startVirtualThread(() -> connect(newPort, (int) totalMessages / threads.length));
      }
    }
  }

  private void connect(int port, int messages) {
    try (Socket socket = new Socket()) {
      socket.connect(new InetSocketAddress(host, port), SOCKET_TIMEOUT);
      socket.setSoTimeout(SOCKET_TIMEOUT);

      final byte[] readBuffer = new byte[data.length];
      final InputStream in = socket.getInputStream();
      final OutputStream out = socket.getOutputStream();
      int counter = 0;

      while (counter < messages) {
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
        counter++;
        this.messages.increment();
      }

    } catch (Exception ignore) {
      // auto-close
    }
  }

  public void awaitTermination() {
    for (int i = 0; i < threads.length; i++) {
      try {
        threads[i].join();
      } catch (InterruptedException ignore) {
      }
    }
  }
}
