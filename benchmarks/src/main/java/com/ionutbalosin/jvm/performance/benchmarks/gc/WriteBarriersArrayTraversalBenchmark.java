package com.ionutbalosin.jvm.performance.benchmarks.gc;

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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (c) 2020 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * Test the overhead of write barriers while iterating through the elements of an array of Objects and updating every element of it.
 * The number of allocations in the benchmark test method is kept to zero.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 *
 */
//  Pattern:
//
//    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
//    public void test(Object lObjRef) {
//        int lSize = size;
//
//        for (int i = 0; i < lSize; i++) {
//            array[i] = lObjRef;
//        }
//    }
//
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class WriteBarriersArrayTraversalBenchmark {

  @Param({"262144"})
  private int size;

  private Object[] array;
  private Object objRef;

  @Setup()
  public void setup() {
    objRef = new Object();
    array = new Object[size];
  }

  // java -jar benchmarks/target/benchmarks.jar ".*WriteBarriersLoopingOverArrayBenchmark.*" -prof
  // gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC"})
  public void serialGC() {
    test(objRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC"})
  public void parallelGC() {
    test(objRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC"})
  public void g1GC() {
    test(objRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC"})
  public void zGC() {
    test(objRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC"})
  public void shenandoahGC() {
    test(objRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UnlockExperimentalVMOptions", "-XX:+UseEpsilonGC"})
  public void epsilonGC() {
    test(objRef);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public void test(Object lObjRef) {
    int lSize = size;

    for (int i = 0; i < lSize; i++) {
      array[i] = lObjRef;
    }
  }
}
