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

import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripChunksLatencyBenchmark.RECEIVE_BUFFER_LENGTH;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripChunksLatencyBenchmark.SEND_BUFFER_LENGTH;
import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.IoBlockingRoundtripChunksLatencyBenchmark.ThreadType;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public class IoBlockingClient {

  private static final int CLIENT_SOCKET_TIMEOUT = 12_000;

  private final ThreadType threadType;
  private final byte[] data;
  private final byte[] readBuffer;
  private final Thread clientThread;
  private final CountDownLatch clientLatch;

  private Socket socket;
  private InputStream in;
  private OutputStream out;

  public IoBlockingClient(String host, int port, ThreadType threadType, byte[] data) {
    this.threadType = threadType;
    this.data = data;
    this.readBuffer = new byte[data.length];

    this.clientThread = getThread(() -> serve(host, port));
    this.clientLatch = new CountDownLatch(1);
  }

  public void start() throws InterruptedException {
    clientThread.start();
    // ensure that the client thread has started before the benchmark iterations
    clientLatch.await();
  }

  private void serve(String host, int port) {
    try {
      socket = new Socket();
      socket.setSoTimeout(CLIENT_SOCKET_TIMEOUT);
      socket.setSendBufferSize(SEND_BUFFER_LENGTH);
      socket.setReceiveBufferSize(RECEIVE_BUFFER_LENGTH);
      socket.connect(new InetSocketAddress(host, port), CLIENT_SOCKET_TIMEOUT);

      in = socket.getInputStream();
      out = socket.getOutputStream();

      clientLatch.countDown();

    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  public void sendReceiveChunks(int chunks) {
    try {
      for (int i = 0; i < chunks; i++) {
        out.write(data, 0, data.length);
        in.read(readBuffer, 0, readBuffer.length);
        sanityCheck(data, readBuffer);
      }

    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  public void terminate() {
    if (clientThread != null) {
      clientThread.interrupt();
    }

    try {
      if (socket != null && !socket.isClosed()) {
        socket.close();
      }
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  private Thread getThread(Runnable runnable) {
    return switch (threadType) {
      case VIRTUAL -> ofVirtual().unstarted(runnable);
      case PLATFORM -> ofPlatform().unstarted(runnable);
    };
  }

  private void sanityCheck(byte[] data, byte[] readBuffer) {
    if (!Arrays.equals(data, readBuffer)) {
      throw new AssertionError("The byte arrays have different content");
    }
  }
}
