package com.ionutbalosin.jvm.performance.benchmarks.gc;

import static org.openjdk.jmh.annotations.Level.Iteration;

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
 * Test the overhead of read barriers while iterating through an array of not null elements and checking the reference equality against null.
 * In the case of ZGC the results are influenced by the color pointers.
 *
 * Note: the tests results are influenced by the hardware branch prediction (i.e. the spike in the results)
 *
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class NullRefComparisonBenchmark {

  @Param({"262140"})
  private int size;

  private Object[] array;

  @Setup(Iteration)
  public void setup() {
    array = new Object[size];

    for (int i = 0; i < size; i++) {
      array[i] = new Object();
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*NullRefComparisonBenchmark.*" -prof gc

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
    final int lSize = size;
    final Object[] lArray = this.array;

    for (int i = 0; i < lSize; i++) {
      compareRef(lArray[i]);
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private boolean compareRef(Object obj1) {
    return null == obj1;
  }
}
