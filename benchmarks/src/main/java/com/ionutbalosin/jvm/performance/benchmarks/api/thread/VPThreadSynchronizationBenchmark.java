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
package com.ionutbalosin.jvm.performance.benchmarks.api.thread;

import static java.lang.Thread.ofPlatform;
import static java.lang.Thread.ofVirtual;
import static java.util.concurrent.Executors.newFixedThreadPool;

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
 * This benchmark assesses the performance of synchronized blocks in the context of virtual threads,
 * comparing them with platform threads. The synchronization mechanism is implemented using lock
 * objects, reentrant locks, and no locks at all. Within the synchronized execution block, different
 * backoff strategies (such as thread parking, sleeping, or none) are triggered.
 *
 * The benchmark method submits a configurable number of tasks to an executor (i.e., a burst
 * approach) and waits for all of them to complete. The executor is cached in the JMH state. The
 * concurrency level for both platform and virtual threads is restricted to evaluate their
 * performance under comparable conditions. The cost of tasks submission to the (initially idle)
 * executor is included in the benchmark method, which we consider negligible for this particular
 * use case.
 *
 * Note: A virtual thread cannot be preempted during a synchronized block because it is pinned to
 * its carrier.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class VPThreadSynchronizationBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VPThreadSynchronizationBenchmark.*"

  private static final int CPUs = Runtime.getRuntime().availableProcessors();

  private final Object objectLock = new Object();
  private final ReentrantLock reentrantLock = new ReentrantLock();
  private int tasks;

  @Param({"256"})
  private int cpuLoadFactor;

  @Param private LockType lockType;
  @Param private BackoffType backoffType;

  @Setup(Level.Trial)
  public void up() {
    tasks = CPUs * cpuLoadFactor;
  }

  @Benchmark
  public void synchronized_calls(ExecutorState executor) throws InterruptedException {
    final CountDownLatch latch = new CountDownLatch(tasks);
    IntStream.range(0, tasks).forEach(i -> executor.service.submit(synchronizedWork(latch)));
    latch.await();
  }

  private Runnable synchronizedWork(CountDownLatch latch) {
    return switch (lockType) {
      case OBJECT_LOCK -> () -> {
        synchronized (objectLock) {
          try {
            backoff();
          } finally {
            latch.countDown();
          }
        }
      };
      case REENTRANT_LOCK -> () -> {
        reentrantLock.lock();
        try {
          backoff();
        } finally {
          reentrantLock.unlock();
          latch.countDown();
        }
      };
      case NO_LOCK -> () -> {
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
        case VIRTUAL -> newFixedThreadPool(CPUs, ofVirtual().factory());
        case PLATFORM -> newFixedThreadPool(CPUs, ofPlatform().factory());
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
