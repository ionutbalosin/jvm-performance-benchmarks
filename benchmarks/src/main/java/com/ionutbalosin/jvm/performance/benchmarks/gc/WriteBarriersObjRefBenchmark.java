package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
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
 * Test the overhead of write barrier while updating a reference belonging to a wrapper object.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class WriteBarriersObjRefBenchmark {

  private ObjWrapper objWrapper;
  private Integer intRef;

  // java -jar benchmarks/target/benchmarks.jar ".*WriteBarriersObjRefBenchmark.*" -prof gc

  @Setup()
  public void setup() {
    objWrapper = new ObjWrapper();
    intRef = ThreadLocalRandom.current().nextInt();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC"})
  public void serialGC() {
    test(intRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC"})
  public void parallelGC() {
    test(intRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC"})
  public void g1GC() {
    test(intRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC"})
  public void zGC() {
    test(intRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC"})
  public void shenandoahGC() {
    test(intRef);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UnlockExperimentalVMOptions", "-XX:+UseEpsilonGC"})
  public void epsilonGC() {
    test(intRef);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public void test(Integer intRef) {
    objWrapper.intRef = intRef;
  }

  class ObjWrapper {
    Integer intRef;
  }
}
