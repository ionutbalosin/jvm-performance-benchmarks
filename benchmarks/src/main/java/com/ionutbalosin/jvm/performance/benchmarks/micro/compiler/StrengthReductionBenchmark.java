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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

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
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * A strength reduction is a compiler optimization where expensive operations are replaced with equivalent but less expensive operations.
 * This benchmark tests how well the Compiler strengthens some arithmetic operations, as for example multiple additions, a multiplication in comparison to a bitwise shift operation.
 *
 * References:
 * - https://en.wikipedia.org/wiki/Strength_reduction
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StrengthReductionBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StrengthReductionBenchmark.*"

  @Param({"true"})
  private boolean heavyComputation;

  // a big prime number
  @Param({"179426549"})
  private long value;

  @Benchmark
  public long shift() {
    return doShift();
  }

  @Benchmark
  public long add() {
    return doAdd();
  }

  @Benchmark
  public long multiply() {
    return doMultiply();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doMultiply() {
    long val = this.value;
    return heavyComputation ? val * 64 : val;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doAdd() {
    long val = this.value;
    return heavyComputation
        ? val + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val + val + val + val + val + val + val + val
            + val + val + val + val + val + val + val
        : val;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doShift() {
    long val = this.value;
    return heavyComputation ? val << 6 : val;
  }
}