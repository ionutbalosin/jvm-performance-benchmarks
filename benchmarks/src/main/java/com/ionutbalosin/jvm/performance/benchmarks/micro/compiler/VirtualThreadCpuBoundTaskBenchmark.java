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

import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import java.util.stream.IntStream;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark evaluates the performance of running CPU-bound (or CPU-intensive) tasks, which are submitted
 * to either a virtual thread executor service or a cached thread pool.
 *
 * When a virtual thread executes CPU-bound code without involving any blocking I/O
 * or other blocking JDK methods, the virtual thread cannot be unmounted.
 * Consequently, it will not yield and may continue to occupy its carrier thread until it completes its computation.
 * To address this, the CPU-bound tasks include explicit various backoff strategies (such as yielding, or parking)
 * in an attempt to de-schedule the running thread and permit other threads to execute on the CPU, thereby facilitating
 * the unmounting of the virtual thread from its carrier.
 *
 * Note: When the workload is CPU-bound, virtual threads may not offer a substantial improvement
 * in application throughput compared to traditional platform threads.
 * Additionally, using virtual threads just for in-memory processing is not their intended use case.
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VirtualThreadCpuBoundTaskBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VirtualThreadCpuBoundTaskBenchmark.*"

  private static final int CPUs = Runtime.getRuntime().availableProcessors();

  private volatile boolean preventUnrolling = true;

  @Param private static CPU_LOAD_FACTOR cpuLoadFactor;
  @Param private THREAD_TYPE threadType;
  @Param private BACKOFF_TYPE backoffType;
  @Param private CPU_TOKENS cpuTokens;

  @Benchmark
  public void cpu_bound_tasks() {
    // Set the number of total tasks based on the number of CPUs (scaled by a CPU load factor)
    final int tasks = CPUs * cpuLoadFactor.get();
    try (ExecutorService executor = getExecutorService()) {
      IntStream.range(0, tasks).forEach(i -> executor.submit(() -> heavyWork()));
    }
  }

  private ExecutorService getExecutorService() {
    return switch (threadType) {
      case VIRTUAL -> newVirtualThreadPerTaskExecutor();
      case PLATFORM -> newCachedThreadPool();
    };
  }

  private void heavyWork() {
    // Process each chunk of tokens sequentially with potential back-off in between each chunk
    Blackhole.consumeCPU(cpuTokens.getTokens());
    for (int chunks = 1; chunks < cpuTokens.getChunks() && preventUnrolling; chunks++) {
      backoff();
      Blackhole.consumeCPU(cpuTokens.getTokens());
    }
  }

  private void backoff() {
    switch (backoffType) {
      case NONE:
        break;
      case YIELD:
        Thread.yield();
        break;
      case PARK:
        LockSupport.parkNanos(1L);
        break;
      default:
        throw new UnsupportedOperationException("Unsupported backoff type " + backoffType);
    }
  }

  public enum THREAD_TYPE {
    VIRTUAL,
    PLATFORM;
  }

  public enum CPU_LOAD_FACTOR {
    _16(16);

    private int value;

    CPU_LOAD_FACTOR(int value) {
      this.value = value;
    }

    public int get() {
      return value;
    }
  }

  public enum BACKOFF_TYPE {
    NONE,
    YIELD,
    PARK;
  }

  public enum CPU_TOKENS {
    _1_M(1_000_000, 100);

    private long tokens;
    private int chunks;

    CPU_TOKENS(int tokens, int chunks) {
      this.tokens = tokens;
      this.chunks = chunks;
    }

    public long getTokens() {
      return tokens;
    }

    public int getChunks() {
      return chunks;
    }
  }
}
