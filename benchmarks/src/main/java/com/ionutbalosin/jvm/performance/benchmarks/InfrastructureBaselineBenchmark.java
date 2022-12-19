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
package com.ionutbalosin.jvm.performance.benchmarks;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark is used as a baseline (i.e., a preliminary check) to assess the infrastructure overhead for the code to measure.
 * Since no magical infrastructures are incurring no overhead, it is essential to know what default overheads might occur in our setup.
 * It measures the calls performance of empty methods (w/ and w/o explicit inlining) but also the performance of
 * returning an object versus consuming it via black holes. All of these mechanisms are used inside the real suite of tests.
 *
 * This benchmark is particularly useful in case of a comparison between different types of JVMs, and it should be run
 * before any other real benchmark to check the default costs.
 *
 * Note: A comparison between different JVMs might not be further relevant unless, at least, the baseline is the same.
 *
 * References:
 * - https://github.com/openjdk/jmh/blob/master/jmh-samples/src/main/java/org/openjdk/jmh/samples/JMHSample_01_HelloWorld.java
 * - https://github.com/openjdk/jmh/blob/master/jmh-samples/src/main/java/org/openjdk/jmh/samples/JMHSample_16_CompilerControl.java
 * - https://shipilev.net/jvm/anatomy-quarks/27-compiler-blackholes
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class InfrastructureBaselineBenchmark {

  // $ java -jar */*/benchmarks.jar ".*InfrastructureBaselineBenchmark.*"
  // Recommended command line options:
  // - JMH options: -prof {Linux: perfnorm, Mac OS X: dtraceasm, Windows: xperfasm}

  /*
   * The performance of below methods should be the same:
   * - method_baseline()
   * - method_blank()
   * - method_inline()
   *
   * The cost of method_dont_inline() is slightly higher.
   */

  public Object object;

  @Benchmark
  public void method_baseline() {
    // this method was intentionally left blank
  }

  @Benchmark
  public void method_blank() {
    target_blank();
  }

  @Benchmark
  public void method_inline() {
    target_inline();
  }

  @Benchmark
  public void method_dont_inline() {
    target_dont_inline();
  }

  /*
   * The performance of below methods should be the same:
   * - obj_return()
   * - obj_blackhole_consume()
   *
   * The cost of obj_sink() is slightly higher.
   */

  @Benchmark
  public Object obj_return() {
    return object;
  }

  @Benchmark
  public void obj_blackhole_consume(Blackhole bh) {
    bh.consume(object);
  }

  @Benchmark
  public void obj_sink() {
    sink(object);
  }

  private void target_blank() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void target_dont_inline() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.INLINE)
  private void target_inline() {
    // this method was intentionally left blank
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(Object object) {
    // this method was intentionally left blank
  }
}
