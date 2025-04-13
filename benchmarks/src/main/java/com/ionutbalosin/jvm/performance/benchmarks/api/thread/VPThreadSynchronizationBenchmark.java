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
import static java.util.Optional.ofNullable;
import static java.util.concurrent.Executors.newFixedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.concurrent.locks.ReentrantLock;
import java.util.stream.IntStream;
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
 * This benchmark evaluates the performance of running synchronized blocks in the context of virtual
 * threads, comparing them with platform threads. The synchronization mechanism is implemented using
 * lock objects, reentrant locks, and no locks at all. Additionally, various backoff strategies
 * (e.g., thread parking, sleeping, or none) are triggered within the synchronized execution block.
 * These strategies may (or may not) unpin the virtual thread from its carrier.
 *
 * A configurable number of tasks are submitted to an executor using a burst approach, and the
 * benchmark awaits the completion of all these tasks. The executor is cached within the JMH state.
 * The parallelism level for both platform and virtual threads is restricted the same value to
 * evaluate their performance under comparable conditions. The benchmark method includes the cost of
 * task submission to the initially idle executor, which, for this specific use case, is considered
 * negligible.
 *
 * Note: When a virtual thread executes code inside a synchronized block or method it cannot be
 * unmounted during the blocking operation because it is pinned to its carrier (i.e., the platform
 * thread).
 *
 * To simulate a realistic CPU load, the number of tasks is directly proportional to the
 * available processors multiplied by a load factor. The total tasks for virtual or platform threads
 * are determined by multiplying the available CPUs by a load factor.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VPThreadSynchronizationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VPThreadSynchronizationBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof {Linux: perfnorm, Mac OS X: dtraceasm, Windows: xperfasm}

  // For a more accurate comparison between virtual threads and platform threads, set the
  // parallelism count to match the level of parallelism used for scheduling virtual threads (if
  // explicitly specified in the command line) or to the default number of available processors
  // (otherwise). This parallelism count is further utilized to define the core pool size of
  // platform threads but also to determine the tasks' load factor.
  private static final int PARALLELISM_COUNT =
      ofNullable(System.getProperty("jdk.virtualThreadScheduler.parallelism"))
          .map(Integer::parseInt)
          .orElse(Runtime.getRuntime().availableProcessors());

  private final Object objectLock = new Object();
  private final ReentrantLock reentrantLock = new ReentrantLock();
  private int tasks;

  @Param({"384"})
  private int loadFactor;

  @Param private LockType lockType;
  @Param private BackoffType backoffType;

  @Setup(Level.Trial)
  public void setup() {
    tasks = PARALLELISM_COUNT * loadFactor;
  }

  @Benchmark
  public void synchronized_calls(ExecutorState executor) throws InterruptedException {
    final CountDownLatch latch = new CountDownLatch(tasks);
    IntStream.range(0, tasks).forEach(i -> executor.service.submit(synchronizedWork(latch)));
    latch.await();
  }

  private Runnable synchronizedWork(CountDownLatch latch) {
    return switch (lockType) {
      case OBJECT_LOCK ->
          () -> {
            synchronized (objectLock) {
              try {
                backoff();
              } finally {
                latch.countDown();
              }
            }
          };
      case REENTRANT_LOCK ->
          () -> {
            reentrantLock.lock();
            try {
              backoff();
            } finally {
              reentrantLock.unlock();
              latch.countDown();
            }
          };
      case NO_LOCK ->
          () -> {
            try {
              backoff();
            } finally {
              latch.countDown();
            }
          };
    };
  }

  private void backoff() {
    switch (backoffType) {
      case NONE:
        break;
      case SLEEP:
        try {
          Thread.sleep(0, 1);
        } catch (InterruptedException e) {
          throw new RuntimeException(e);
        }
        break;
      case PARK:
        LockSupport.parkNanos(1);
        break;
      default:
        throw new UnsupportedOperationException("Unsupported backoff type " + backoffType);
    }
  }

  @State(Scope.Benchmark)
  public static class ExecutorState {

    private ExecutorService service;

    @Param private ThreadType threadType;

    @Setup(Level.Trial)
    public void up() {
      service = getExecutorService();
    }

    @TearDown(Level.Trial)
    public void down() {
      service.shutdown();
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

  public enum ThreadType {
    VIRTUAL,
    PLATFORM;
  }

  public enum LockType {
    OBJECT_LOCK,
    REENTRANT_LOCK,
    NO_LOCK
  }

  public enum BackoffType {
    NONE,
    SLEEP,
    PARK
  }
}
