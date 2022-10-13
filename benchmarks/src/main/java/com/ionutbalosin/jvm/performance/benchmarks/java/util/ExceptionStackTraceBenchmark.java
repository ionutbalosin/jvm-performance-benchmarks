package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.concurrent.TimeUnit;
import java.util.function.Function;
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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Test the cost of returning the stack trace and the creation of an Exception instance (with and without explicit overriding fillInStackTrace() method) for different stack depths.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
// @Fork(value = 3, jvmArgsAppend = {"-XX:-OmitStackTraceInFastThrow",
// "-XX:-StackTraceInThrowable"})
@Fork(value = 3)
@State(Scope.Benchmark)
public class ExceptionStackTraceBenchmark {

  private static final Function<String, RuntimeException> LAMBDA_PROVIDER_EXCEPTION =
      (message) -> new RuntimeException(message);
  private static final RuntimeException CONSTANT_EXCEPTION =
      new RuntimeException("Something wrong happened.");

  @Param({"1", "64", "128"})
  int stackDepth;

  @Param({"Something wrong happened."})
  private String message;

  // java -jar benchmarks/target/benchmarks.jar ".*ExceptionStackTraceBenchmark.*"

  // https://shipilev.net/blog/2014/exceptional-performance/
  // -XX:-StackTraceInThrowable - removes stack traces from exceptions

  // java -XX:+UnlockDiagnosticVMOptions -XX:+PrintFlagsFinal -version | grep
  // OmitStackTraceInFastThrow
  // bool OmitStackTraceInFastThrow                = true
  // {product} {default}

  // java -XX:+UnlockDiagnosticVMOptions -XX:+PrintFlagsFinal -version | grep StackTraceInThrowable
  // bool StackTraceInThrowable                    = true
  // {product} {default}

  // -XX:-OmitStackTraceInFastThrow
  //     The compiler in the server VM now provides correct stack backtraces for all "cold" built-in
  // exceptions.
  //     For performance purposes, when such an exception is thrown a few times, the method may be
  // recompiled.
  //     After recompilation, the compiler may choose a faster tactic using pre-allocated exceptions
  // that do not provide a stack trace.
  //     To disable completely the use of pre-allocated exceptions.

  // -XX:-StackTraceInThrowable
  //     While stack traces are included in exceptions by default, recording them can have a
  // negative impact on performance.
  //     Use this option if you want to remove stack traces (i.e. it skips the filling in of stack
  // trace information),
  //     although this might cause difficulties with problem determination.

  @Benchmark
  public Exception constant_exc() {
    return recursive_constant_exc(stackDepth);
  }

  @Benchmark
  public Exception lambda_function_exc() {
    return recursive_lambda_function_exc(stackDepth);
  }

  @Benchmark
  public Exception new_exc() {
    return recursive_new_exc(stackDepth);
  }

  @Benchmark
  public Exception new_exc_override_fillInStackTrace() {
    return recursive_new_exc_override_fillInStackTrace(stackDepth);
  }

  @Benchmark
  public StackTraceElement[] get_stack_trace() {
    return recursive_getStackTrace(stackDepth);
  }

  private Exception recursive_constant_exc(int depth) {
    if (depth == 0) {
      return CONSTANT_EXCEPTION;
    }
    return recursive_constant_exc(depth - 1);
  }

  private Exception recursive_lambda_function_exc(int depth) {
    if (depth == 0) {
      return LAMBDA_PROVIDER_EXCEPTION.apply(message);
    }
    return recursive_lambda_function_exc(depth - 1);
  }

  private Exception recursive_new_exc(int depth) {
    if (depth == 0) {
      return new RuntimeException();
    }
    return recursive_new_exc(depth - 1);
  }

  private Exception recursive_new_exc_override_fillInStackTrace(int depth) {
    if (depth == 0) {
      return new RuntimeException() {
        @Override
        public Throwable fillInStackTrace() {
          return this;
        }
      };
    }
    return recursive_new_exc_override_fillInStackTrace(depth - 1);
  }

  private StackTraceElement[] recursive_getStackTrace(int depth) {
    if (depth == 0) {
      return Thread.currentThread().getStackTrace();
    }
    return recursive_getStackTrace(depth - 1);
  }
}
