package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.Random;
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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Test the overhead of read/write barriers while iterating through an array of Integers and
 * exchanging the values between two array entries (i.e. array[i] <-> array[j]).
 *
 * Read/Write barriers in the existing HotSpot Garbage Collectors. Special thanks to Jean-Philippe Bempel (Twitter: @jpbempel) for updating below description.
 * 1. Write Barriers:
 *  - one write barrier (to track the references from Tenured Generation to Young Generation – e.g. card table) for:
 *      - SerialGC
 *      - ParallelGC (note that ParallelGC in the same as ParallelGC)
 *      - ConcMarkSweepGC
 *  - one write barrier (in case of concurrent marking – e.g. Snapshot-At-The-Beginning (SATB)) for:
 *      - Shenandoah
 *  - two write barriers: first (i.e. PreWrite barrier) in case of concurrent marking (e.g. SATB), and second (i.e. PostWrite barrier) to tracking the references across regions for:
 *      - G1GC
 *
 * 2. Read Barriers
 *  - Shenandoah (when accessing fields of an object through a reference for <= OpenJDK 12, when references are loaded from the heap for >= OpenJDK 13)
 *  - ZGC  (when references are loaded from the Heap)
 *
 * 3. No Barriers:
 *  - Epsilon GC does not use any barrier at all, it might be the baseline for all the others.
 *
 */

//  Pattern:
//
//    void test() {
//        int lSize = size;
//        int mask = lSize - 1;
//
//        for (int i = 0; i < lSize; i++) {
//            Integer aux = array[i];
//            array[i] = array[(i + index) & mask];
//            array[(i + index) & mask] = aux;
//        }
//
//        index++;
//    }
//
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class ReadWriteBarriersBenchmark {

  @Param({"262144"})
  private int size;

  private Integer[] array;
  private int index;

  @Setup()
  public void setup() {
    array = new Integer[size];

    final Random random = new Random(16384);
    for (int i = 0; i < size; i++) {
      array[i] = random.nextInt();
    }
    index = 0;
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ReadWriteBarriersBenchmark.*" -prof gc

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
    int mask = lSize - 1;

    for (int i = 0; i < lSize; i++) {
      Integer aux = array[i];
      array[i] = array[(i + index) & mask];
      array[(i + index) & mask] = aux;
    }

    index++;
  }
}
