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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Benchmark measuring the cost of stack spilling. Instruction ordering is done through a read on a volatile
 * after all loads but before any stores. This could also be achieved using Unsafe.loadFence().
 *
 * 1) If the read from the volatile is absent (load_store_no_spill), the optimizer is allowed to group load and
 * stores together. In this case no spilling occurs.
 *
 * 2) When a read from the volatile is used (load_store_spill_*), all reads before the volatile read must be performed
 * before any store after the volatile read (a LoadStore barrier is inserted).
 *
 * 3) -XX:-UseFPUForSpilling is used to disable spilling on FPU registers.
 *
 * References:
 *  - https://shipilev.net/jvm/anatomy-quarks/20-fpu-spills/
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StackSpillingBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StackSpillingBenchmark.*"

  int load0, load1, load2, load3, load4, load5, load6, load7, load8, load9;
  int load10, load11, load12, load13, load14, load15, load16, load17, load18, load19;
  int load20, load21, load22, load23, load24;
  int store0, store1, store2, store3, store4, store5, store6, store7, store8, store9;
  int store10, store11, store12, store13, store14, store15, store16, store17, store18, store19;
  int store20, store21, store22, store23, store24;

  volatile int volatile_value;
  int non_volatile_value;

  @Benchmark
  public void load_store_no_spill() {
    /*
    Load and stores are grouped together and no spill occurs.
    0x00007f8ae508e4f1:   mov    0x64(%rbx),%r10d  --> load from field loadXX
    0x00007f8ae508e4f5:   mov    %r10d,0xc8(%rbx)  --> store to field storeXX
    */

    // Pay the cost of the volatile read at the beginning.
    non_volatile_value = volatile_value;

    int v00 = load0;
    int v01 = load1;
    int v02 = load2;
    int v03 = load3;
    int v04 = load4;
    int v05 = load5;
    int v06 = load6;
    int v07 = load7;
    int v08 = load8;
    int v09 = load9;
    int v10 = load10;
    int v11 = load11;
    int v12 = load12;
    int v13 = load13;
    int v14 = load14;
    int v15 = load15;
    int v16 = load16;
    int v17 = load17;
    int v18 = load18;
    int v19 = load19;
    int v20 = load20;
    int v21 = load21;
    int v22 = load22;
    int v23 = load23;
    int v24 = load24;

    store0 = v00;
    store1 = v01;
    store2 = v02;
    store3 = v03;
    store4 = v04;
    store5 = v05;
    store6 = v06;
    store7 = v07;
    store8 = v08;
    store9 = v09;
    store10 = v10;
    store11 = v11;
    store12 = v12;
    store13 = v13;
    store14 = v14;
    store15 = v15;
    store16 = v16;
    store17 = v17;
    store18 = v18;
    store19 = v19;
    store20 = v20;
    store21 = v21;
    store22 = v22;
    store23 = v23;
    store24 = v24;
  }

  @Benchmark
  public void load_store_spill_use_fpu() {
    load_store_spill();
  }

  @Benchmark
  @Fork(jvmArgsAppend = "-XX:-UseFPUForSpilling")
  public void load_store_spill_no_fpu() {
    load_store_spill();
  }

  private void load_store_spill() {
    /*
    Loads are performed first and the stores occur only after. Some values end up being spilled to the stack.
    0x00007f2af908eb69:   mov    0x40(%rbx),%r10d  --> load field loadXX
    0x00007f2af908eb6d:   mov    %r10d,0x3c(%rsp)  --> store field on the stack
    ...
    ...
    0x00007f2af908ebe0:   mov    0x3c(%rsp),%r10d  --> load value from stack
    0x00007f2af908ebe5:   mov    %r10d,0xa4(%rbx)  --> store to field storeXX

    This ordering is forced with the load from a volatile variable below. An alternative would be
    to manually insert a load fence with Unsafe.loadFence().
    */

    int v00 = load0;
    int v01 = load1;
    int v02 = load2;
    int v03 = load3;
    int v04 = load4;
    int v05 = load5;
    int v06 = load6;
    int v07 = load7;
    int v08 = load8;
    int v09 = load9;
    int v10 = load10;
    int v11 = load11;
    int v12 = load12;
    int v13 = load13;
    int v14 = load14;
    int v15 = load15;
    int v16 = load16;
    int v17 = load17;
    int v18 = load18;
    int v19 = load19;
    int v20 = load20;
    int v21 = load21;
    int v22 = load22;
    int v23 = load23;
    int v24 = load24;

    non_volatile_value = volatile_value;

    store0 = v00;
    store1 = v01;
    store2 = v02;
    store3 = v03;
    store4 = v04;
    store5 = v05;
    store6 = v06;
    store7 = v07;
    store8 = v08;
    store9 = v09;
    store10 = v10;
    store11 = v11;
    store12 = v12;
    store13 = v13;
    store14 = v14;
    store15 = v15;
    store16 = v16;
    store17 = v17;
    store18 = v18;
    store19 = v19;
    store20 = v20;
    store21 = v21;
    store22 = v22;
    store23 = v23;
    store24 = v24;
  }
}
