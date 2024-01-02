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

import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.Arrays;
import java.util.concurrent.CountDownLatch;

public class IoBlockingClient {

  private static final int CLIENT_SOCKET_TIMEOUT = 12_000;

  public static void sendReceiveChunks(
      String host, int port, byte[] data, int messages, CountDownLatch latch) {
    try (Socket socket = new Socket()) {
      socket.setSoTimeout(CLIENT_SOCKET_TIMEOUT);
      socket.setSendBufferSize(SEND_BUFFER_LENGTH);
      socket.setReceiveBufferSize(RECEIVE_BUFFER_LENGTH);
      socket.connect(new InetSocketAddress(host, port), CLIENT_SOCKET_TIMEOUT);

      final InputStream in = socket.getInputStream();
      final OutputStream out = socket.getOutputStream();
      final byte[] readBuffer = new byte[data.length];

      int counter = 0;
      while (counter < messages) {
        out.write(data, 0, data.length);
        in.read(readBuffer, 0, readBuffer.length);
        if (!Arrays.equals(data, readBuffer)) {
          throw new AssertionError("The byte arrays have different content");
        }
        counter++;
      }

    } catch (Exception e) {
      throw new RuntimeException(e);
    } finally {
      latch.countDown();
    }
  }
}
