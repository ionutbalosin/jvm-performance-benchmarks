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
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark evaluates the performance of running CPU-bound (or CPU-intensive) tasks, which are
 * submitted to either a virtual thread executor service or a cached thread pool. Additionally,
 * various backoff strategies (e.g., thread parking, yield, or none) are triggered while running
 * CPU-bound tasks. These strategies may (or may not) unpin the virtual thread from its carrier.
 *
 * A configurable number of tasks are submitted to an executor using a burst approach, and the
 * benchmark awaits the completion of all these tasks. The executor is cached within the JMH state.
 * The level of parallelism for both platform and virtual threads is set to the same value to
 * facilitate an evaluation of their performance under comparable conditions. The benchmark method
 * accounts for the task submission cost to the initially idle executor, which, within the scope of
 * this specific use case, is deemed negligible.
 *
 * When a virtual thread executes CPU-bound code without involving any blocking I/O or other
 * blocking JDK methods, the virtual thread cannot be unmounted. Consequently, it will not yield and
 * may continue to occupy its carrier thread until it completes its computation. To address this,
 * the CPU-bound tasks include explicit various backoff strategies (such as yielding, or parking) in
 * an attempt to de-schedule the running thread and permit other threads to execute on the CPU,
 * thereby facilitating the unmounting of the virtual thread from its carrier.
 *
 * Note: When the workload is CPU-bound, virtual threads may not offer a substantial improvement
 * in application throughput compared to traditional platform threads. Additionally, in scenarios of
 * CPU-bound workloads, having significantly more threads than processor cores does not necessarily
 * enhance throughput. As a side note, using virtual threads solely for heavy in-memory processing
 * may not align with their intended use case.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class VPThreadCpuBoundBenchmark {

  // $ java -jar */*/benchmarks.jar ".*VPThreadCpuBoundBenchmark.*"

  // For a more accurate comparison between virtual threads and platform threads, set the
  // parallelism count to match the level of parallelism used for scheduling virtual threads (if
  // explicitly specified in the command line) or to the default number of available processors
  // (otherwise). This parallelism count is further utilized to define the core pool size of
  // platform threads but also to determine the tasks' load factor.
  private static final int PARALLELISM_COUNT =
      ofNullable(System.getProperty("jdk.virtualThreadScheduler.parallelism"))
          .map(Integer::parseInt)
          .orElse(Runtime.getRuntime().availableProcessors());

  private volatile boolean preventUnrolling = true;

  private int tasks;

  @Param({"16"})
  private int loadFactor;

  @Param private ThreadType threadType;
  @Param private BackoffType backoffType;
  @Param private CpuTokens cpuTokens;

  @Setup(Level.Trial)
  public void up() {
    tasks = PARALLELISM_COUNT * loadFactor;
  }

  @Benchmark
  public void cpu_bound_tasks(ExecutorState executor) throws InterruptedException {
    final CountDownLatch latch = new CountDownLatch(tasks);
    IntStream.range(0, tasks).forEach(i -> executor.service.submit(() -> cpuBoundWork(latch)));
    latch.await();
  }

  private void cpuBoundWork(CountDownLatch latch) {
    // Consume each chunk of tokens sequentially with potential back-off in between each chunk.
    Blackhole.consumeCPU(cpuTokens.getTokens());
    for (int chunks = 1; chunks < cpuTokens.getChunks() && preventUnrolling; chunks++) {
      backoff();
      Blackhole.consumeCPU(cpuTokens.getTokens());
    }
    latch.countDown();
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

  public enum BackoffType {
    NONE,
    YIELD,
    PARK;
  }

  public enum CpuTokens {
    _500_K(500_000, 5);

    private long tokens;
    private int chunks;

    CpuTokens(int tokens, int chunks) {
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
