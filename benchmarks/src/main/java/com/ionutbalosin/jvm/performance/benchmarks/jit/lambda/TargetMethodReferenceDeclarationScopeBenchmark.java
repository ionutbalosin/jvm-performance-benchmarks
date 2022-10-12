package com.ionutbalosin.jvm.performance.benchmarks.jit.lambda;

import java.util.concurrent.TimeUnit;
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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class TargetMethodReferenceDeclarationScopeBenchmark {

  @Param({"1000", "10000", "100000", "1000000", "10000000"})
  int size;

  @Param({"1"})
  int factor;

  private int[] array;
  private int shiftResult;

  ComputeFunctionalInterface globalFInterface = this::getValue;

  // java -jar benchmarks/target/benchmarks.jar ".*LinkToTargetMethodVsLambdaReferenceBenchmark.*"

  // Resources:
  //  - see https://mobile.twitter.com/mesirii/status/1047048557000314882 post regarding performance
  // drop of non-static method-ref in hot loop vs. pulling it out
  // Solution: using a variable for method-ref or going back to impl. interface and passing this
  // fixes the performance

  @Setup
  public void setupList() {
    array = new int[size];
    for (int i = 0; i < size; i++) {
      array[i] = i;
    }
  }

  @Benchmark
  public long method_local_reference_to_target_method() {
    ComputeFunctionalInterface fInterface = this::getValue;
    long result = 0;
    for (int i = 0; i < size; i++) {
      shiftResult = array[i] >> factor;
      result += doCompute(i, fInterface);
    }
    return result;
  }

  @Benchmark
  public long class_global_reference_to_target_method() {
    long result = 0;
    for (int i = 0; i < size; i++) {
      shiftResult = array[i] >> factor;
      result += doCompute(i, globalFInterface);
    }
    return result;
  }

  @Benchmark
  public long argument_reference_to_target_method() {
    long result = 0;
    for (int i = 0; i < size; i++) {
      shiftResult = array[i] >> factor;
      result += doCompute(i, this::getValue);
    }
    return result;
  }

  public int doCompute(int i, ComputeFunctionalInterface fInterface) {
    return i * fInterface.compute(i);
  }

  private int getValue(int value) {
    return (shiftResult % 3 == 0 || shiftResult % 5 == 0) ? value : 1;
  }
}
