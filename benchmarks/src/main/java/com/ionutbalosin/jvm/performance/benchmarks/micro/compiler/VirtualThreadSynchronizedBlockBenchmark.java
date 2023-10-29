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

import static java.util.concurrent.Executors.newCachedThreadPool;
import static java.util.concurrent.Executors.newVirtualThreadPerTaskExecutor;

import java.io.IOException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
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
 * This benchmark assesses the performance of synchronized block operations in the context of
 * virtual threads, comparing them with platform threads. The synchronization mechanism is
 * implemented using lock objects, reentrant locks, and no locks at all. In each case within the
 * execution block, an atomic counter variable is incremented to simulate work.
 *
 * A virtual thread cannot be unmounted during blocking operations because it is
 * pinned to its carrier, which occurs in the following scenarios:
 * - when it executes code inside a synchronized block or method
 * - when it executes a native method
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VirtualThreadSynchronizedBlockBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VirtualThreadSynchronizedBlockBenchmark.*"

  private final int CPUs = Runtime.getRuntime().availableProcessors();

  private final Object objectLock = new Object();
  private final ReentrantLock reentrantLock = new ReentrantLock();
  private final AtomicInteger counter = new AtomicInteger();

  @Param private CPU_LOAD_FACTOR cpuLoadFactor;
  @Param private THREAD_TYPE threadType;
  @Param private LOCK_TYPE lockType;

  private int tasks;

  @Setup()
  public void setup() {
    // Set the number of total tasks based on the number of CPUs (scaled by a CPU load factor)
    tasks = CPUs * cpuLoadFactor.get();
  }

  @Setup(Level.Invocation)
  public void setupInvocation() {
    counter.set(0);
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() throws IOException, ExecutionException, InterruptedException {
    if (counter.get() != tasks) {
      throw new AssertionError("Unexpected count. Expected " + tasks + ", actual " + counter.get());
    }
  }

  @Benchmark
  public void synchronized_method_calls() {
    try (ExecutorService executor = getExecutorService()) {
      IntStream.range(0, tasks).forEach(i -> executor.submit(getRunnable()));
    }
  }

  private ExecutorService getExecutorService() {
    return switch (threadType) {
      case VIRTUAL -> newVirtualThreadPerTaskExecutor();
      case PLATFORM -> newCachedThreadPool();
    };
  }

  private Runnable getRunnable() {
    return switch (lockType) {
      case OBJECT_LOCK -> () -> {
        synchronized (objectLock) {
          counter.incrementAndGet();
        }
      };
      case REENTRANT_LOCK -> () -> {
        try {
          reentrantLock.lock();
          counter.incrementAndGet();
        } finally {
          reentrantLock.unlock();
        }
      };
      case NO_LOCK -> () -> counter.incrementAndGet();
    };
  }

  public enum THREAD_TYPE {
    VIRTUAL,
    PLATFORM;
  }

  public enum LOCK_TYPE {
    OBJECT_LOCK,
    REENTRANT_LOCK,
    NO_LOCK;
  }

  public enum CPU_LOAD_FACTOR {
    _4(4);

    private int value;

    CPU_LOAD_FACTOR(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }
}
