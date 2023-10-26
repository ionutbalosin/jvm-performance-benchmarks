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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;

import java.io.IOException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;
import java.util.concurrent.SynchronousQueue;
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
 * This benchmark tries to measure the efficiency of mounting and unmounting virtual threads in Java
 * when they interact with blocking APIs at varying thread stack depths. It also serves as a
 * reference by comparing the behavior of virtual threads with that of platform threads (OS-level threads).
 *
 * Note: in typical scenarios, a virtual thread unmounts when it blocks on I/O or other blocking
 * operations in the JDK, such as BlockingQueue.take(). When the blocking operation is ready to
 * complete (e.g., bytes have been received on a socket), the virtual thread is resubmitted to the
 * scheduler, which mounts it on a carrier for execution.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 3, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class VirtualThreadBlockingCallBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VirtualThreadBlockingCallBenchmark.*"

  private final Random random = new Random(16384);
  private final int BYTES = 64;

  private Thread producerThread;
  private Thread consumerThread;
  private FutureTask<Wrapper> consumerFuture;
  private BlockingQueue<byte[]> queue;
  private byte[] data;

  @Param private THREAD_TYPE threadType;

  @Param({"1", "10", "100", "1000"})
  int stackDepth;

  @Setup(Level.Trial)
  public void setupTrial() throws Exception {
    queue = new SynchronousQueue<>();
    data = new byte[BYTES];
    random.nextBytes(data);

    producerThread =
        new Thread(
            () -> {
              boolean interrupted = false;
              while (!interrupted) {
                try {
                  // Note: If necessary, a backoff strategy can be employed to lower the producer
                  // rate
                  queue.put(data);
                } catch (InterruptedException ignore) {
                  interrupted = true;
                }
              }
            });

    producerThread.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() throws Exception {
    producerThread.interrupt();
  }

  @Setup(Level.Invocation)
  public void setupInvocation() {
    consumerFuture = new FutureTask<>(new RecursiveTask(queue, stackDepth));
    switch (threadType) {
      case VIRTUAL:
        consumerThread = ofVirtual().unstarted(consumerFuture);
        break;
      case PLATFORM:
        consumerThread = ofPlatform().unstarted(consumerFuture);
        break;
      default:
        throw new UnsupportedOperationException("Unsupported thread type " + threadType);
    }
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() throws IOException, ExecutionException, InterruptedException {
    if (!Arrays.equals(data, consumerFuture.get().array)) {
      throw new AssertionError("The byte arrays have different content.");
    }
  }

  @Benchmark
  public Wrapper recursive_blocking_calls() throws InterruptedException, ExecutionException {
    consumerThread.start();
    return consumerFuture.get();
  }

  public enum THREAD_TYPE {
    VIRTUAL,
    PLATFORM;
  }

  private static class RecursiveTask implements Callable<Wrapper> {
    private final BlockingQueue<byte[]> queue;
    private final int depth;
    private final Wrapper wrapper;

    public RecursiveTask(BlockingQueue<byte[]> queue, int depth) {
      this.queue = queue;
      this.depth = depth;
      this.wrapper = new Wrapper();
    }

    @Override
    public Wrapper call() {
      return recursive_run(depth, wrapper);
    }

    private Wrapper recursive_run(int depth, Wrapper wrapper) {
      final byte[] result = take();
      wrapper.array = result;

      if (depth == 0) {
        return wrapper;
      } else {
        return recursive_run(depth - 1, wrapper);
      }
    }

    private byte[] take() {
      try {
        // The blocking API may unmount (in the case of virtual threads) the carrier thread
        return queue.take();
      } catch (InterruptedException ignore) {
        return null;
      }
    }
  }

  private static class Wrapper {
    public byte[] array;
  }
}
