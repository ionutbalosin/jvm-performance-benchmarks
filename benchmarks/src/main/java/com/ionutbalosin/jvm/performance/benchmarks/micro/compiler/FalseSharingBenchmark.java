/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
 *
 * Author: Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
 *
 * Co-author: Florin Blanaru
 * Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
 *
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

import java.util.concurrent.TimeUnit;
import jdk.internal.vm.annotation.Contended;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Group;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * This benchmark tests the performance loss when two threads are writing to the same cache line. It also shows ways
 * to circumvent this.
 *
 * In the baseline the two fields l1 and l2 live on the same cache line. The two methods will use the same
 * cache line and therefore create a ping-pong effect where the line is continuously invalidated by the writer. The following
 * benchmarks show three ways to circumvent this and measure performance:
 *    - Using the @Contended annotation that adds the required padding between fields.
 *    - Using manual padding by adding additional fields to the class that are unused. This approach uses
 *      a subclassing trick to ensure the order of the fields.
 *    - Using an array and only writing at certain offsets into it. Note that this benchmark performs and additional
 * field load for the array object.
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsAppend = "-XX:-RestrictContended")
@State(Scope.Benchmark)
public class FalseSharingBenchmark {

  // $ java -jar */*/benchmarks.jar ".*FalseSharingBenchmark.*"

  @State(Scope.Group)
  public static class BaselineState {
    // Both fields of this class will land on the same cache line.
    long l1;
    long l2;
  }

  @Benchmark
  @Group("baseline")
  public long reader(BaselineState baseline) {
    return baseline.l1;
  }

  @Benchmark
  @Group("baseline")
  public long writer(BaselineState baseline) {
    return baseline.l2++;
  }

  @State(Scope.Group)
  public static class ContendedState {
    // The @Contended annotation will introduce the required padding in the object.
    @Contended long l1;
    @Contended long l2;
  }

  @Benchmark
  @Group("contended")
  public long reader(ContendedState contendedState) {
    return contendedState.l1;
  }

  @Benchmark
  @Group("contended")
  public long writer(ContendedState contendedState) {
    return contendedState.l2++;
  }

  public static class ManualPaddingState0 {
    long l1;
  }

  public static class ManualPaddingState1 extends ManualPaddingState0 {
    long l3, l4, l5, l6;
    long l31, l41, l51, l61;
  }

  public static class ManualPaddingState2 extends ManualPaddingState1 {
    long l2;
  }

  public static class ManualPaddingState3 extends ManualPaddingState2 {
    long l7, l8, l9, l10;
    long l71, l81, l91, l101;
  }

  @State(Scope.Group)
  public static class ManualPaddingState extends ManualPaddingState3 {}

  @Benchmark
  @Group("manual_pad")
  public long reader(ManualPaddingState manualPaddingState) {
    return manualPaddingState.l1;
  }

  @Benchmark
  @Group("manual_pad")
  public long writer(ManualPaddingState manualPaddingState) {
    return manualPaddingState.l2++;
  }

  @State(Scope.Group)
  public static class ArrayState {
    // The first 7 elements of the array will live on the same cache line.
    // The 8th element will land on the next line.
    // This benchmark will be slower than the others since it requires an extra load for the array
    // field.
    long[] arr = new long[16];
  }

  @Benchmark
  @Group("array_pad")
  public long reader(ArrayState arrayState) {
    return arrayState.arr[0];
  }

  @Benchmark
  @Group("array_pad")
  public long writer(ArrayState arrayState) {
    return arrayState.arr[7]++;
  }
}
