package com.ionutbalosin.jvm.performance.benchmarks.compiler.lambda;

import java.util.Comparator;
import java.util.concurrent.TimeUnit;
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

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class LambdaAllocationBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*LambdaAllocationBenchmark.*" -prof gc

  @Benchmark()
  public Comparator<Integer> anonymous_class() {
    return new Comparator<Integer>() {
      @Override
      public int compare(Integer x, Integer y) {
        return (x < y) ? -1 : ((x == y) ? 0 : 1);
      }
    };
  }

  @Benchmark()
  public Comparator<Integer> inner_class() {
    return new InstanceInner();
  }

  @Benchmark()
  public Comparator<Integer> lambda() {
    return (x, y) -> (x < y) ? -1 : ((x == y) ? 0 : 1);
  }

  @Benchmark()
  public Comparator<Integer> capturing_lambda(IntWrapper wrapper) {
    return (x, y) -> (x < y) ? -1 : ((x == y) ? wrapper.param : 1);
  }

  @Benchmark()
  public Comparator<Integer> static_method_ref() {
    return Integer::compare;
  }

  @Benchmark()
  public Comparator<Integer> unbound_method_ref() {
    return Integer::compareTo;
  }

  @Benchmark()
  public Comparator<Integer> bound_method_ref() {
    return this::compareInteger;
  }

  public int compareInteger(Integer x, Integer y) {
    return (x < y) ? -1 : ((x == y) ? 0 : 1);
  }

  @State(Scope.Thread)
  public static class IntWrapper {
    @Param({"42"})
    public static int param;
  }

  public class InstanceInner implements Comparator<Integer> {
    @Override
    public int compare(Integer x, Integer y) {
      return (x < y) ? -1 : ((x == y) ? 0 : 1);
    }
  }
}
