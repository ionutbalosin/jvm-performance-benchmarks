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
package com.ionutbalosin.jvm.performance.benchmarks.api.string;

import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateCharArray;
import static com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.generateWhiteSpaceCharArray;

import com.ionutbalosin.jvm.performance.benchmarks.api.string.utils.StringUtils.Coder;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
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
 * The benchmark evaluates the efficiency of Java string methods 'trim', 'strip', 'stripLeading',
 * and 'stripTrailing' when applied to strings constructed with various whitespace allocations,
 * encompassing balanced head-tail distribution or strings consisting entirely of whitespace.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringWhitespaceBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringWhitespaceBenchmark.*"

  private final int TARGET_COUNT = 3;
  private String sourceStr;

  @Param private Coder coder;
  @Param private WhiteSpaceDistribution distribution;

  @Param({"1024"})
  private int length = 1024;

  @Setup
  public void setup() {
    sourceStr =
        switch (distribution) {
          case BALANCED_HEAD_TAIL -> generateBalancedHeadTailWhiteSpaceStr();
          case FULL -> generateFullWhiteSpaceStr();
        };
  }

  @Benchmark
  public String trim() {
    return sourceStr.trim();
  }

  @Benchmark
  public String strip() {
    return sourceStr.strip();
  }

  @Benchmark
  public String strip_leading() {
    return sourceStr.stripLeading();
  }

  @Benchmark
  public String strip_trailing() {
    return sourceStr.stripTrailing();
  }

  private String generateBalancedHeadTailWhiteSpaceStr() {
    final String leadingStr = new String(generateWhiteSpaceCharArray(length / TARGET_COUNT));
    final String middleStr = new String(generateCharArray(length / TARGET_COUNT, coder));
    final String trailingStr = new String(generateWhiteSpaceCharArray(length / TARGET_COUNT));
    return leadingStr + middleStr + trailingStr;
  }

  private String generateFullWhiteSpaceStr() {
    return new String(generateWhiteSpaceCharArray(length));
  }

  public enum WhiteSpaceDistribution {
    BALANCED_HEAD_TAIL,
    FULL
  }
}
