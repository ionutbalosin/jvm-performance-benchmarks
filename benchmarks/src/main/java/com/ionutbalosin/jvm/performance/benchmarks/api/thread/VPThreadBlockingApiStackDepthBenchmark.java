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
package com.ionutbalosin.jvm.performance.benchmarks.api.thread;

import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;

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
 * This benchmark aims to measure the efficiency of mounting and unmounting virtual threads by
 * comparing this behavior with that of platform threads (OS-level threads) when they interact with
 * blocking APIs at varying thread stack depths.
 *
 * The stack frames of unmounted virtual threads are stored in the heap as a list of stack-chunk
 * objects (i.e., StackChunk OOP). Each stack-chunk object contains a blob that holds a stack
 * segment, including several integral numbers of stack frames. A stack-chunk is entirely mutable
 * during freeze and thaw (i.e., stack frames can be moved in and out via memcpy) as long as the
 * garbage collector (GC) has not seen it yet. For some GCs, this typically occurs during the entire
 * young generation phase.
 *
 * Note: Typically, a virtual thread will unmount when it blocks on I/O or some other blocking
 * operation in the JDK, such as BlockingQueue.take(). When the blocking operation is ready to
 * complete (e.g., bytes have been received on a socket), it submits the virtual thread back to the
 * scheduler, which will mount the virtual thread on a carrier to resume execution.
 *
 * Note: It is less expensive to block a virtual thread than a platform thread, since the latter
 * will involve context switching. Using virtual threads in the context of blocking API calls
 * provides a noticeable benefit over traditional platform threads.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VPThreadBlockingApiStackDepthBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VPThreadBlockingApiStackDepthBenchmark.*"

  private final Random random = new Random(16384);

  private Thread producerThread;
  private Thread consumerThread;
  private FutureTask<Wrapper> consumerFuture;
  private BlockingQueue<byte[]> queue;
  private byte[] data;

  @Param private ThreadType threadType;

  @Param({"64"})
  private int dataSize;

  @Param({"1", "10", "100", "1000"})
  private int stackDepth;

  @Setup(Level.Trial)
  public void setupTrial() {
    queue = new SynchronousQueue<>();
    data = new byte[dataSize];
    random.nextBytes(data);

    producerThread =
        new Thread(
            () -> {
              boolean interrupted = false;
              while (!interrupted) {
                try {
                  // If necessary, a backoff strategy can be employed to lower the producer rate
                  queue.put(data);
                } catch (InterruptedException ignore) {
                  interrupted = true;
                }
              }
            });

    producerThread.start();
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
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
  public void tearDownInvocation() throws ExecutionException, InterruptedException {
    if (!Arrays.equals(data, consumerFuture.get().array)) {
      throw new AssertionError("The byte arrays have different content.");
    }
  }

  @Benchmark
  public Wrapper blocking_calls() throws InterruptedException, ExecutionException {
    consumerThread.start();
    return consumerFuture.get();
  }

  public enum ThreadType {
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
        // In the case of virtual threads, the blocking API unmounts from the carrier thread
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
