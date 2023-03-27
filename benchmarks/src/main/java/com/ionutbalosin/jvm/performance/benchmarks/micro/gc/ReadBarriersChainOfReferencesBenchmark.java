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

/*
 * Test the overhead of read barriers while iterating through a chain of pre-allocated objects (e.g., Object 1 -> Object 2 -> ...)
 * and returns the sum of their field properties (e.g., Object1.field + Object2.field + ...)
 *
 * Deprecated: using micro-benchmarks to gauge the performance of the Garbage Collectors might result in misleading conclusions.
 */
@Deprecated
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class ReadBarriersChainOfReferencesBenchmark {

  // $ java -jar **/benchmarks.jar ".*ReadBarriersChainOfReferencesBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC
  //    -XX:+UnlockExperimentalVMOptions -XX:+UseEpsilonGC}
  // - JMH options: -prof gc

  @Param({"1024"})
  private int chain;

  private ObjectChain baseRef;

  @Setup()
  public void setup() {
    int i = 0;
    baseRef = new ObjectChain(i);

    ObjectChain cursor = baseRef;
    for (; i < chain; i++) {

      ObjectChain nextObj = new ObjectChain(i);
      cursor.refObj = nextObj;

      cursor = nextObj;
    }
  }

  @Benchmark
  public int gc() {
    return test();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int test() {
    int sum = 0;

    ObjectChain cursor = baseRef;
    while (cursor != null) {
      sum += cursor.aValue;
      cursor = cursor.refObj;
    }

    return sum;
  }

  public class ObjectChain {
    ObjectChain refObj;
    int aValue;

    public ObjectChain(int aValue) {
      this.aValue = aValue;
    }
  }
}
