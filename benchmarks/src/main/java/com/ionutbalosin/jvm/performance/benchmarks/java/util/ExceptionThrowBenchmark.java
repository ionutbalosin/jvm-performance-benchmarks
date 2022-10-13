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
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Test the cost of creation of an Exception instance with different cases:
 * - create a new fresh instance with and without explicit overriding fillInStackTrace() method
 * - using a lambda function to create a new instance
 * - using a predefined (constant) exception
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ExceptionThrowBenchmark {

  private static final Function<String, RuntimeException> LAMBDA_PROVIDER_EXCEPTION =
      (message) -> new RuntimeException(message);
  private static final RuntimeException CONSTANT_EXCEPTION =
      new RuntimeException("Something wrong happened.");

  @Param({"Something wrong happened."})
  private String message;

  // java -jar benchmarks/target/benchmarks.jar ".*ExceptionThrowBenchmark.*"

  @Benchmark
  public void constant_exc(Blackhole blackhole) {
    try {
      throw CONSTANT_EXCEPTION;
    } catch (RuntimeException ignored) {
      blackhole.consume(ignored);
    }
  }

  @Benchmark
  public void lambda_function_exc(Blackhole blackhole) {
    try {
      throw LAMBDA_PROVIDER_EXCEPTION.apply(message);
    } catch (RuntimeException ignored) {
      blackhole.consume(ignored);
    }
  }

  @Benchmark
  public void new_exc(Blackhole blackhole) {
    try {
      throw new RuntimeException(message);
    } catch (RuntimeException ignored) {
      blackhole.consume(ignored);
    }
  }

  @Benchmark
  public void new_exc_override_fillInStackTrace(Blackhole blackhole) {
    try {
      throw new RuntimeException(message) {

        @Override
        public synchronized Throwable fillInStackTrace() {
          return this;
        }
      };
    } catch (RuntimeException ignored) {
      blackhole.consume(ignored);
    }
  }
}
