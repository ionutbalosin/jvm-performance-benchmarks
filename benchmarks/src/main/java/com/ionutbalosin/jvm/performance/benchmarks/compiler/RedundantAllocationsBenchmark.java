package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
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
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class RedundantAllocationsBenchmark {

  private int size;

  // java -jar benchmarks/target/benchmarks.jar ".*RedundantAllocationsBenchmark.*"

  @Setup()
  public void setup() {
    size = 16;
  }

  @Benchmark
  public Object obj_baseline() {
    Object obj;
    obj = new Object();
    return obj;
  }

  @Benchmark
  public Object obj_x4() {
    Object obj;
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    return obj;
  }

  @Benchmark
  public Object obj_x8() {
    Object obj;
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    return obj;
  }

  @Benchmark
  public Object obj_x16() {
    Object obj;
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    obj = new Object();
    return obj;
  }

  @Benchmark
  public Object arr_baseline() {
    Object obj;
    obj = new Object[size];
    return obj;
  }

  @Benchmark
  public Object arr_x4() {
    Object obj;
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    return obj;
  }

  @Benchmark
  public Object arr_x8() {
    Object obj;
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    return obj;
  }

  @Benchmark
  public Object arr_x16() {
    Object obj;
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    obj = new Object[size];
    return obj;
  }
}
