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
 * Dead Store Elimination (DSE) intends to remove all the assignments of a variable that are not read by any subsequent instructions.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DeadAllocationStoreEliminationBenchmark {

  @Param({"64"})
  private int size;

  // java -jar benchmarks/target/benchmarks.jar ".*DeadAllocationStoreEliminationBenchmark.*"
  // JMH Opts: -prof gc

  // allocates 16 bytes
  @Benchmark
  public Object obj_alloc_baseline() {
    return new Object();
  }

  // DSE: optimized method should allocate 16 bytes per instance
  @Benchmark
  public Object obj_alloc_dse() {
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

  // DSE: optimized method should allocate 16 bytes per instance
  @Benchmark
  public Object obj_alloc_dse_inter_procedural() {
    Object obj;
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    sink();
    obj = new Object();
    return obj;
  }

  // allocates 64 bytes
  @Benchmark
  public byte[] arr_alloc_baseline() {
    return new byte[size];
  }

  // DSE: optimized method should allocate 64 bytes per array
  @Benchmark
  public byte[] arr_alloc_dse() {
    byte[] array;
    array = new byte[size];
    array = new byte[size];
    array = new byte[size];
    array = new byte[size];
    return array;
  }

  // DSE: optimized method should allocate 64 bytes per array
  @Benchmark
  public Object arr_alloc_dse_inter_procedural() {
    byte[] array;
    array = new byte[size];
    sink();
    array = new byte[size];
    sink();
    array = new byte[size];
    sink();
    array = new byte[size];
    return array;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public static void sink() {
    // Intentionally empty method
  }
}
