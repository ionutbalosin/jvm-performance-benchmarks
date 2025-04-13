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

import static java.net.StandardSocketOptions.TCP_NODELAY;

import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils;
import com.ionutbalosin.jvm.performance.benchmarks.api.networkio.utils.NetworkUtils.BufferSize;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ServerSocketChannel;
import java.nio.channels.SocketChannel;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * Measures the latency of non-blocking TCP calls to send and receive a byte array using NIO
 * (non-blocking I/O). The benchmark simulates a client-server interaction over a TCP connection.
 * The send_receive() method sends a byte buffer from the client to the server, and then immediately
 * receives a response from the server. The time taken for this combined send-receive interaction is
 * measured to gauge the latency of the communication.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 5, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 5, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NioNonBlockingRoundtripLatencyBenchmark {

  // $ java -jar */*/benchmarks.jar ".*NioNonBlockingRoundtripLatencyBenchmark.*"

  private final Random random = new Random(16384);

  private Thread serverThread;
  private CountDownLatch serverLatch;
  private SocketChannel clientSocketChannel;
  private ByteBuffer clientByteBuffer;
  private byte[] data;

  @Param private BufferSize bufferSize;

  @Param({"true", "false"})
  private boolean tcpNoDelay;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    data = new byte[bufferSize.get()];
    random.nextBytes(data);

    serverLatch = new CountDownLatch(1);
    serverThread =
        new Thread(
            () -> {
              try (final ServerSocketChannel serverSocketChannel = ServerSocketChannel.open()) {
                serverSocketChannel.socket().setReuseAddress(true);
                serverSocketChannel
                    .socket()
                    .bind(new InetSocketAddress(NetworkUtils.HOST, NetworkUtils.PORT));

                serverLatch.countDown();

                try (final SocketChannel socketChannel = serverSocketChannel.accept()) {
                  socketChannel.setOption(TCP_NODELAY, tcpNoDelay);
                  socketChannel.configureBlocking(false);

                  final ByteBuffer buffer = ByteBuffer.allocateDirect(bufferSize.get());

                  while (true) {
                    buffer.clear();

                    int bytesRead;
                    do {
                      bytesRead = socketChannel.read(buffer);
                    } while (0 == bytesRead);

                    if (-1 == bytesRead) {
                      break;
                    }

                    buffer.clear().put(data);
                    buffer.flip();
                    socketChannel.write(buffer);
                  }
                }
              } catch (final Exception ex) {
                throw new RuntimeException(ex);
              }
            });

    serverThread.start();
    // ensure that the server thread has started before the benchmark iterations
    serverLatch.await();

    clientByteBuffer = ByteBuffer.allocateDirect(bufferSize.get());
    clientSocketChannel =
        SocketChannel.open(new InetSocketAddress(NetworkUtils.HOST, NetworkUtils.PORT));
    clientSocketChannel.setOption(TCP_NODELAY, tcpNoDelay);
    clientSocketChannel.configureBlocking(false);
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() throws Exception {
    clientSocketChannel.close();
    serverThread.join();
  }

  @Benchmark
  public void send_receive() throws Exception {
    clientByteBuffer.clear().put(data);
    clientByteBuffer.flip();
    clientSocketChannel.write(clientByteBuffer);

    clientByteBuffer.clear();

    int bytesRead;
    do {
      bytesRead = clientSocketChannel.read(clientByteBuffer);
    } while (0 == bytesRead);

    sanityCheck(bytesRead, bufferSize.get());
  }

  private void sanityCheck(int actualBytes, int expectedBytes) {
    if (actualBytes != expectedBytes) {
      throw new AssertionError(
          "Number of bytes mismatch. Actual: " + actualBytes + ", expected: " + expectedBytes);
    }
  }
}
