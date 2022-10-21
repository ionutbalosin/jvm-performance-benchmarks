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
 * This transformation analyzes and transforms the induction variables (and computations derived from them) into
 * simpler forms suitable for subsequent analysis and transformation.
 * This optimization is a special case of strength reduction where all loop iterations are strengthened
 * to a mathematical formula.
 *
 * References:
 * - https://llvm.org/docs/Passes.html#indvars-canonicalize-induction-variables
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Thread)
public class CanonicalizeInductionVariableBenchmark {

  // Make sure the multiplication uses longs but not ints
  private final long length = 4202496L * 4202496L;
  private final long reducedLength = 4194304L;

  // java -jar benchmarks/target/benchmarks.jar ".*CanonicalizeInductionVariableBenchmark.*"

  @Benchmark
  public void canonicalize() {
    auto_canonicalize(length);
  }

  @Benchmark
  public void baseline() {
    baseline(reducedLength);
  }

  private long auto_canonicalize(final long iterations) {
    long result = 0;
    for (long l = 8192; l * l < iterations; ++l) {
      result++;
    }
    return result;
  }

  private long baseline(final long iterations) {
    long result;
    for (result = 0; result != iterations; ++result) {}
    return result;
  }
}
