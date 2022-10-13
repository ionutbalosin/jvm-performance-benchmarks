package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * This transformation analyzes and transforms the induction variables (and computations derived from them) into
 * simpler forms suitable for subsequent analysis and transformation.This optimization is a special case of strength reduction
 * where all loop iterations are strengthened to a mathematical formula.
 *
 * Resources:
 * - see https://llvm.org/docs/Passes.html#indvars-canonicalize-induction-variables
 */

//  Pattern:
//
//    for (i = start; i*i < MAX; ++i) {
//    }
//
//    is equivalent to:
//
//    for (i = 0; i != sqrt(MAX) - start; ++i) {
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Thread)
public class CanonicalizeInductionVariableBenchmark {

  private final long length =
      4194304L * 4194304L; // Make sure the multiplication uses longs but not ints!
  private final long newLength = 4194285L;

  // java -jar benchmarks/target/benchmarks.jar ".*CanonicalizeInductionVariableBenchmark.*"

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public static void sink(final long d) {
    // IT IS VERY IMPORTANT TO MATCH THE SIGNATURE TO AVOID AUTOBOXING.
    // The method intentionally does nothing.
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void doAuto(final long iterations) {
    for (long l = 19; l * l < iterations; ++l) {
      sink(l);
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void baseline(final long iterations) {
    for (long l = 0; l != iterations; ++l) {
      sink(l);
    }
  }

  @Benchmark
  public void canonicalize_induction_var() {
    doAuto(length);
  }

  @Benchmark
  public void baseline() {
    baseline(newLength);
  }
}
