package com.ionutbalosin.jvm.performance.benchmarks.jit;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class BoxingBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*BoxingBenchmark.*"

  @Benchmark
  public Integer cached_valueOf(IntState state) {
    return Integer.valueOf(state.aValue);
  }

  @Benchmark
  public Integer un_cached_valueOf(IntState state) {
    // does not fit anymore the cached range -128 to 127 hence should be equivalent to new
    // Integer(state.anotherValue)
    return Integer.valueOf(state.anotherValue);
  }

  @Benchmark
  public Integer auto_boxing(IntState state) {
    return state.aValue;
  }

  @Benchmark
  public int un_boxing(IntState state) {
    return state.objValue;
  }

  @Benchmark
  public Integer new_instance(IntState state) {
    return new Integer(state.aValue);
  }

  @Benchmark
  public int baseline(IntState state) {
    return state.aValue;
  }

  @State(Scope.Thread)
  public static class IntState {
    int aValue = 42;
    int anotherValue = 42 << 2;
    Integer objValue = 42;
  }
}
