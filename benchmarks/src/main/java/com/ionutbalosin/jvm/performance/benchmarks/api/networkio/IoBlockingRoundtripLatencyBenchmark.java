/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
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
package com.ionutbalosin.jvm.performance.benchmarks.api.networkio;

import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.HOST;
import static com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.PORT;
import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.BufferSize;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.StandardSocketOptions;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
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
 * Measures the latency of blocking TCP calls to send and receive a byte array using the blocking
 * I/O (input/output) API. The benchmark simulates a client-server interaction over a TCP
 * connection. The benchmark method sends a byte buffer from the client to the server, and the
 * server immediately sends it back. The time taken for this round-trip interaction is measured to
 * gauge the latency of the communication.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class IoBlockingRoundtripLatencyBenchmark {

  // $ java -jar */*/benchmarks.jar ".*IoBlockingRoundtripLatencyBenchmark.*"

  // Note: Setting send/recv buffers too high might cause ENOBUFS on some systems (e.g., FreeBSD).
  // In case of issues, please check the maximum socket send/receive buffer size for your system.
  private final int SEND_BUFFER_LENGTH = 4_096;
  private final int RECEIVE_BUFFER_LENGTH = 4_096;
  private final int CLIENT_SOCKET_TIMEOUT = 24_000;
  private final int MAX_INCOMING_CONNECTIONS = 1_000;
  private final Random random = new Random(16384);

  private Thread serverThread;
  private CountDownLatch serverLatch;
  private Socket clientSocket;
  private byte[] data, clientReadBuffer;

  @Param private BufferSize bufferSize;
  @Param private ThreadType threadType;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize.get()];
    random.nextBytes(data);

    serverLatch = new CountDownLatch(1);
    serverThread =
        getThread(
            () -> {
              try (ServerSocket serverSocket = new ServerSocket()) {
                serverSocket.setOption(StandardSocketOptions.SO_REUSEADDR, true);
                serverSocket.setOption(StandardSocketOptions.SO_REUSEPORT, true);
                serverSocket.setOption(StandardSocketOptions.SO_RCVBUF, RECEIVE_BUFFER_LENGTH);
                serverSocket.bind(new InetSocketAddress(HOST, PORT), MAX_INCOMING_CONNECTIONS);

                serverLatch.countDown();

                try (Socket socket = serverSocket.accept()) {
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

              } catch (Exception ignore) {
              }
            });

    serverThread.start();
    // ensure that the server thread has started before the benchmark iterations
    serverLatch.await();

    clientReadBuffer = new byte[data.length];
    clientSocket = new Socket();
    clientSocket.setSoTimeout(CLIENT_SOCKET_TIMEOUT);
    clientSocket.setSendBufferSize(SEND_BUFFER_LENGTH);
    clientSocket.setReceiveBufferSize(RECEIVE_BUFFER_LENGTH);
    clientSocket.connect(new InetSocketAddress(HOST, PORT), CLIENT_SOCKET_TIMEOUT);
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() throws IOException {
    clientSocket.close();
    serverThread.interrupt();
  }

  @Benchmark
  public void send_receive() throws IOException {
    final InputStream in = clientSocket.getInputStream();
    final OutputStream out = clientSocket.getOutputStream();

    out.write(data, 0, data.length);
    final int bytesRead = in.read(clientReadBuffer, 0, clientReadBuffer.length);

    sanityCheck(bytesRead, bufferSize.get());
  }

  public enum ThreadType {
    VIRTUAL,
    PLATFORM
  }

  private Thread getThread(Runnable runnable) {
    return switch (threadType) {
      case VIRTUAL -> ofVirtual().unstarted(runnable);
      case PLATFORM -> ofPlatform().unstarted(runnable);
    };
  }

  private void sanityCheck(int actualBytes, int expectedBytes) {
    if (actualBytes != expectedBytes) {
      throw new AssertionError(
          "Number of bytes mismatch. Actual: " + actualBytes + ", expected: " + expectedBytes);
    }
  }
}
