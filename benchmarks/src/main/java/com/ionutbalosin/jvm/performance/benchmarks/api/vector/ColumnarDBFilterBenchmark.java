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

/*
 * Copyright (c) 2025, Intel Corporation. All rights reserved.
 *
 * DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
 *
 * This code is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 only, as
 * published by the Free Software Foundation.
 *
 * This code is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
 * version 2 for more details (a copy is included in the LICENSE file that
 * accompanied this code).
 *
 * You should have received a copy of the GNU General Public License version
 * 2 along with this work; if not, write to the Free Software Foundation,
 * Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
 *
 * Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
 * or visit www.oracle.com if you need additional information or have any
 * questions.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.api.vector;

import java.util.stream.IntStream;
import java.util.concurrent.TimeUnit;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;
import org.openjdk.jmh.infra.Blackhole;

/*
 * Columnar Databases filteration benchmark using new Vector.compress API added as part of JDK 19.
 *
 * References:
 *  - JEP 426: Vector API (Fourth Incubator): https://openjdk.org/jeps/426
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsPrepend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class ColumnarDBFilterBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ColumnarDBFilterBenchmark.*"

  @Param({"262144", "1048576"})
  private int size;

  private int[] intArr;
  private int[] resultArr;
  private int pivot;

  private static final VectorSpecies<Integer> INT_VECTOR_SPECIES = IntVector.SPECIES_PREFERRED;

  @Setup
  public void setup() {
    intArr = IntStream.range(0, size).toArray();
    resultArr = new int[size];
    pivot = size / 2;
  }

  @Benchmark
  public void baseline_query_GT_pivot() {
    int[] intArr = this.intArr;
    for (int i = 0, j = 0; i < intArr.length; i++) {
      if (intArr[i] > pivot) {
         resultArr[j++] = intArr[i];
      }
    }
  }

  @Benchmark
  public void vectorized_query_GT_pivot() {
    int i = 0, j = 0;
    int[] intArr = this.intArr;

    IntVector pivot_bcast = IntVector.broadcast(INT_VECTOR_SPECIES, pivot);
    for (; i < INT_VECTOR_SPECIES.loopBound(intArr.length); i += INT_VECTOR_SPECIES.length()) {
      var segment = IntVector.fromArray(INT_VECTOR_SPECIES, intArr, i);
      var filter_mask = segment.compare(VectorOperators.GT, pivot_bcast);
      var res_vec = segment.compress(filter_mask);
      j += filter_mask.trueCount();
      res_vec.intoArray(resultArr, i);
    }
    for (; i < intArr.length; i++) {
      if (intArr[i] > pivot) {
         resultArr[j++] = intArr[i];
      }
    }
  }

  @Benchmark
  public void baseline_query_IS_EVEN_pivot() {
    int[] intArr = this.intArr;
    for (int i = 0, j = 0; i < intArr.length; i++) {
      if ((intArr[i] & 1) == 0) {
         resultArr[j++] = intArr[i];
      }
    }
  }

  @Benchmark
  public void vectorized_query_IS_EVEN_pivot() {
    int i = 0, j = 0;
    int[] intArr = this.intArr;
    IntVector even_bcast = IntVector.broadcast(INT_VECTOR_SPECIES, 0x1);
    for (; i < INT_VECTOR_SPECIES.loopBound(intArr.length); i += INT_VECTOR_SPECIES.length()) {
      var segment = IntVector.fromArray(INT_VECTOR_SPECIES, intArr, i);
      var filter_mask = segment.and(even_bcast).compare(VectorOperators.EQ, 0);
      var res_vec = segment.compress(filter_mask);
      j += filter_mask.trueCount();
      res_vec.intoArray(resultArr, i);
    }
    for (; i < intArr.length; i++) {
      if ((intArr[i] & 1) == 0) {
         resultArr[j++] = intArr[i];
      }
    }
  }
}
