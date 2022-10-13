package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.LinkedList;
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
 * Test the overhead of read barriers while iterating through the elements of a list of Objects and reading every element of it.
 *
 * Note: looping over an array favors algorithms that can hoist the barrier without accounting really on the cost of the barrier itself.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 *
 */
//  Pattern:
//
//    public void test() {
//
//        for (Object object : list) {
//            sink(object);
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
public class ReadBarriersLinkedListTraversalBenchmark {

  @Param({"262144"})
  private int size;

  private LinkedList<Object> list;

  @Setup()
  public void setup() {
    list = new LinkedList<>();

    for (int i = 0; i < size; i++) {
      list.add(new Object());
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ReadBarriersLinkedListTraversalBenchmark.*" -prof
  // gc

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

    for (Object object : list) {
      sink(object);
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void sink(Object anObject) {
    // IT IS VERY IMPORTANT TO MATCH THE SIGNATURE TO AVOID AUTOBOXING.
    // The method intentionally does nothing.
  }
}
