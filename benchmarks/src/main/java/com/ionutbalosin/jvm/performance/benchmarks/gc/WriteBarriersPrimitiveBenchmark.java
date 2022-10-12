package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.concurrent.ThreadLocalRandom;
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
 * Test the overhead of write barrier while updating a primitive belonging to a wrapper object.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class WriteBarriersPrimitiveBenchmark {

  private ObjWrapper objWrapper;
  private int intValue;

  // java -jar benchmarks/target/benchmarks.jar ".*WriteBarriersPrimitiveBenchmark.*" -prof gc

  @Setup()
  public void setup() {
    objWrapper = new ObjWrapper();
    intValue = ThreadLocalRandom.current().nextInt();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC"})
  public void serialGC() {
    test(intValue);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC"})
  public void parallelGC() {
    test(intValue);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC"})
  public void g1GC() {
    test(intValue);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC"})
  public void zGC() {
    test(intValue);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC"})
  public void shenandoahGC() {
    test(intValue);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UnlockExperimentalVMOptions", "-XX:+UseEpsilonGC"})
  public void epsilonGC() {
    test(intValue);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public void test(int intValue) {
    objWrapper.intValue = intValue;
  }

  class ObjWrapper {
    int intValue;
  }
}
