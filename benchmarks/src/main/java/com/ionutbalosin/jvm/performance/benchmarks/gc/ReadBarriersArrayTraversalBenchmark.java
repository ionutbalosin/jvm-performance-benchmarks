package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * (c) 2020 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * Test the overhead of read barriers while iterating through the elements of an array of Objects and reading every element of it.
 *
 * Note: looping over an array favors algorithms that can hoist the barrier without accounting really on the cost of the barrier itself.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 *
 */
//  Pattern:
//
//    public void test() {
//        int lSize = size;
//
//        for (int i = 0; i < lSize; i++) {
//            sink(array[i]);
//        }
//
//    }
//
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class ReadBarriersArrayTraversalBenchmark {

  @Param({"262144"})
  private int size;

  private Object[] array;

  @Setup()
  public void setup() {
    array = new Object[size];

    for (int i = 0; i < size; i++) {
      array[i] = new Object();
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ReadBarriersArrayTraversalBenchmark.*" -prof gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC"})
  public void serialGC() {
    test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC"})
  public void parallelGC() {
    test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC"})
  public void g1GC() {
    test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC"})
  public void zGC() {
    test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC"})
  public void shenandoahGC() {
    test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UnlockExperimentalVMOptions", "-XX:+UseEpsilonGC"})
  public void epsilonGC() {
    test();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public void test() {
    int lSize = size;

    for (int i = 0; i < lSize; i++) {
      sink(array[i]);
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(Object anObject) {
    // IT IS VERY IMPORTANT TO MATCH THE SIGNATURE TO AVOID AUTOBOXING.
    // The method intentionally does nothing.
  }
}
