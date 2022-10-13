package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * A strength reduction is a compiler optimization where expensive operations are replaced with equivalent but less expensive operations.
 * This benchmark tests how well the Compiler strengthens some arithmetic operations, as for example multiple additions, a multiplication in comparison to a bitwise shift operation.
 *
 * Resources:
 * - see https://en.wikipedia.org/wiki/Strength_reduction
 */

//  Pattern:
//
//    addition() {
//        return
//            predicate ? val + val + ... + val : val;
//    }
//
//    multiplication() {
//        return
//            predicate ? val * 64 : val;
//    }
//
//    shift() {
//        return
//            predicate ? val << 6 : val;
//    }
//
//    where predicate is always evaluated to TRUE, at runtime.
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class StrengthReductionBenchmark {

  @Param({"true"})
  private boolean heavyComputation;

  @Param({"179426549"}) // big prime number
  private long value;

  // java -jar benchmarks/target/benchmarks.jar ".*Strength0Reduction0Benchmark.*"

  @Benchmark
  public void shift() {
    doShift();
  }

  @Benchmark
  public void addition() {
    doAddition();
  }

  @Benchmark
  public void multiplication() {
    doMultiplication();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doMultiplication() {
    long val = this.value;
    return heavyComputation ? val * 64 : val;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private long doAddition() {
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
