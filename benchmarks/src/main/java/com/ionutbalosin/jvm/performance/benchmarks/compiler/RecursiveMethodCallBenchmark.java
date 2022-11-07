/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import static com.ionutbalosin.jvm.performance.benchmarks.compiler.RecursiveMethodCallBenchmark.RInterface.itf_static;

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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Recursive method calls benchmark where inlining heuristics play a fundamental role.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RecursiveMethodCallBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*RecursiveMethodCallBenchmark.*"

  private static final Object OBJECT = new Object();

  private RInterface itf;
  private Wrapper wrapper;

  @Param({"256"})
  int depth;

  @Setup
  public void setup() {
    wrapper = new Wrapper(depth);
    itf = new RInterface() {};
  }

  @Benchmark
  public Object interface_non_static_method() {
    return itf.itf_non_static(depth);
  }

  @Benchmark
  public Object interface_static_method() {
    return itf_static(depth);
  }

  @Benchmark
  public Object class_non_static_method() {
    return cls_non_static(depth);
  }

  @Benchmark
  public Object class_static_method() {
    return cls_static(depth);
  }

  @Benchmark
  public Object lambda_non_static() {
    return LAMBDA_NON_STATIC.apply(wrapper);
  }

  @Benchmark
  public Object lambda_static() {
    return LAMBDA_STATIC.apply(wrapper);
  }

  private Object cls_non_static(int depth) {
    if (depth == 0) {
      return OBJECT;
    }
    return cls_non_static(depth - 1);
  }

  private static Object cls_static(int depth) {
    if (depth == 0) {
      return OBJECT;
    }
    return cls_static(depth - 1);
  }

  interface RInterface {

    default Object itf_non_static(int depth) {
      if (depth == 0) {
        return OBJECT;
      }
      return itf_non_static(depth - 1);
    }

    static Object itf_static(int depth) {
      if (depth == 0) {
        return OBJECT;
      }
      return itf_static(depth - 1);
    }
  }

  private final Function<Wrapper, Object> LAMBDA_NON_STATIC =
      (wrapper) -> {
        if (wrapper.depth == 0) {
          return OBJECT;
        }
        return this.LAMBDA_NON_STATIC.apply(wrapper.decrementAndGet());
      };

  private static final Function<Wrapper, Object> LAMBDA_STATIC =
      (wrapper) -> {
        if (wrapper.depth == 0) {
          return OBJECT;
        }
        return RecursiveMethodCallBenchmark.LAMBDA_STATIC.apply(wrapper.decrementAndGet());
      };

  private static class Wrapper {
    private int depth;

    public Wrapper(int depth) {
      this.depth = depth;
    }

    public Wrapper decrementAndGet() {
      this.depth = this.depth - 1;
      return this;
    }
  }
}
