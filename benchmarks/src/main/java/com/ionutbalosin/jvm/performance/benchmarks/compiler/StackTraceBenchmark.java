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
import java.util.function.Supplier;
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

/*
 * Assess the cost of producing an array of stack trace elements, each representing stack frame information printed by the printStackTrace() method.
 * As a known fact, the costs of constructing a stack trace are proportional to the depth of the Java stack at the moment of exception instantiation.
 * The stack traces pertain to exception object instances created using different approaches:
 * - A global constant exception instance declared and initialized at the beginning of the program execution.
 * - A global constant lambda supplier exception declared and initialized also at the beginning of the program execution.
 * - A method-scoped exception declared and initialized when the execution reaches a certain stack depth within the running method.
 * - A method-scoped exception (with the fillInStackTrace() method overridden) declared and initialized when the execution reaches a certain stack depth within the running method.
 * - The Thread.currentThread() API when the execution reaches a certain stack depth within the running method.
 *
 * HotSpot-specific optimization flags:
 * - -XX:±OmitStackTraceInFastThrow - By default, for 'hot' exceptions in the optimized code, the compiler may choose a faster approach using
 * pre-allocated exceptions that do not include a stack trace.
 * - -XX:±StackTraceInThrowable - By default, stack traces are included in exceptions; however, recording them might have a negative impact on performance.
 *  This option allows the removal of stack traces from the throwable when an exception occurs.
 *
 * Note: some virtual machines may, under some circumstances, omit one or more stack frames from the stack trace.
 * In the extreme case, a virtual machine that has no stack trace information concerning this throwable is permitted to return a zero-length array of stack trace elements.
 *
 * References:
 * - https://github.com/openjdk/jdk/blob/master/src/hotspot/share/runtime/globals.hpp#L652-L656
 * - https://shipilev.net/blog/2014/exceptional-performance
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StackTraceBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StackTraceBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //     default: {-XX:+OmitStackTraceInFastThrow -XX:+StackTraceInThrowable}
  //     omit stack traces: {-XX:-OmitStackTraceInFastThrow -XX:-StackTraceInThrowable}

  private final Exception CONSTANT_EXCEPTION = new Exception();
  private final Supplier<Exception> LAMBDA_EXCEPTION = () -> new Exception();

  @Param({"1", "10", "100", "1000"})
  int stackDepth;

  @Benchmark
  public StackTraceElement[] constant_exception() {
    return constantException(stackDepth);
  }

  @Benchmark
  public StackTraceElement[] lambda_exception() {
    return lambdaException(stackDepth);
  }

  @Benchmark
  public StackTraceElement[] new_exception() {
    return newException(stackDepth);
  }

  @Benchmark
  public StackTraceElement[] new_exception_override_fillInStackTrace() {
    return newExceptionOverrideFillInStackTrace(stackDepth);
  }

  @Benchmark
  public StackTraceElement[] current_thread() {
    return currentThread(stackDepth);
  }

  private StackTraceElement[] constantException(int depth) {
    if (depth == 0) {
      return CONSTANT_EXCEPTION.getStackTrace();
    }
    return constantException(depth - 1);
  }

  private StackTraceElement[] lambdaException(int depth) {
    if (depth == 0) {
      return LAMBDA_EXCEPTION.get().getStackTrace();
    }
    return lambdaException(depth - 1);
  }

  private StackTraceElement[] newException(int depth) {
    if (depth == 0) {
      return new Exception().getStackTrace();
    }
    return newException(depth - 1);
  }

  private StackTraceElement[] newExceptionOverrideFillInStackTrace(int depth) {
    if (depth == 0) {
      return (new Exception() {
            @Override
            public Throwable fillInStackTrace() {
              return this;
            }
          })
          .getStackTrace();
    }
    return newExceptionOverrideFillInStackTrace(depth - 1);
  }

  private StackTraceElement[] currentThread(int depth) {
    if (depth == 0) {
      return Thread.currentThread().getStackTrace();
    }
    return currentThread(depth - 1);
  }
}
