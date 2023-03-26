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
package com.ionutbalosin.jvm.performance.benchmarks.micro.gc;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.BenchmarkParams;
import org.openjdk.jol.info.GraphLayout;

/*
 * This benchmark allocates arrays of temporary objects until it fills up a certain percent of the heap (e.g., 30%, 60%)
 *  and then releases them so that they all become eligible for Garbage Collector.
 *
 * Note: the benchmark could be run using multiple concurrent threads.
 *
 * Deprecated: using micro-benchmarks to gauge the performance of the Garbage Collectors might result in misleading conclusions.
 */
@Deprecated
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class BurstHeapMemoryAllocatorBenchmark {

  // $ java -jar */*/benchmarks.jar ".*BurstHeapMemoryAllocatorBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC}
  // - JMH options: -t {1, 2} -prof gc

  private final long MAX_MEMORY = Runtime.getRuntime().maxMemory();

  private int numberOfBenchThreads;
  private int numberOfObjectsPerThread;

  @Param private PercentageOfHeapToAllocate percentageOfHeapToAllocate;

  @Setup()
  public void setup(BenchmarkParams params) {
    long objectSizeInBytes = GraphLayout.parseInstance(createInstance()).totalSize();
    long maxNumberOfObjects = MAX_MEMORY / objectSizeInBytes;
    numberOfBenchThreads = params.getThreads();

    switch (percentageOfHeapToAllocate) {
      case P_30:
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.30) / numberOfBenchThreads);
        break;
      case P_60:
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.60) / numberOfBenchThreads);
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported percentage of allocated instances " + percentageOfHeapToAllocate);
    }
  }

  @Benchmark
  public Object[] gc() {
    return allocate();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private Object[] allocate() {
    int numberOfObjects = this.numberOfObjectsPerThread;
    Object[] array = new Object[numberOfObjects];

    for (int i = 0; i < numberOfObjects; i++) {
      array[i] = createInstance();
    }

    return array;
  }

  private Object createInstance() {
    return new Object();
  }

  public enum PercentageOfHeapToAllocate {
    P_30,
    P_60
  }
}
