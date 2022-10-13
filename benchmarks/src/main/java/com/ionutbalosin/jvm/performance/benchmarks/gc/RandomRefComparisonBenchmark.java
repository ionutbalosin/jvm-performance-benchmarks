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
 * Test the overhead of read barriers while iterating through an array of elements and checks the reference equality between every array element and a specific reference.
 * The array contains a certain degree of equal elements (e.g. 0%, 25%, 50%, 75%, 100%)
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
public class RandomRefComparisonBenchmark {

  @Param({"262140"})
  private int size;

  @Param private PercentageOfEqualReferences percentageOfEqualRefs;

  private Object[] array;
  private Object objRef;

  @Setup(Iteration)
  public void setup() {
    array = new Object[size];
    Object ref1, ref2, ref3, ref4;

    switch (percentageOfEqualRefs) {
      case P_0:
        for (int i = 0; i < size; i++) {
          array[i] = new Object();
        }
        objRef = new Object();
        break;
      case P_25:
        ref1 = new Object();
        ref2 = new Object();
        ref3 = new Object();
        ref4 = new Object();
        for (int i = 0; i < size; i += 4) {
          array[i] = ref1;
          array[i + 1] = ref2;
          array[i + 2] = ref3;
          array[i + 3] = ref4;
        }
        objRef = ref1;
        break;
      case P_50:
        ref1 = new Object();
        ref2 = new Object();
        for (int i = 0; i < size; i += 2) {
          array[i] = ref1;
          array[i + 1] = ref2;
        }
        objRef = ref1;
        break;
      case P_75:
        ref1 = new Object();
        ref2 = new Object();
        for (int i = 0; i < size; i += 4) {
          array[i] = ref1;
          array[i + 1] = ref1;
          array[i + 2] = ref1;
          array[i + 3] = ref2;
        }
        objRef = ref1;
        break;
      case P_100:
        ref1 = new Object();
        for (int i = 0; i < size; i++) {
          array[i] = ref1;
        }
        objRef = ref1;
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported number of elements " + percentageOfEqualRefs);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*RandomRefComparisonBenchmark.*" -prof gc

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
    final Object lObjRef = objRef;
    final Object[] lArray = this.array;

    for (int i = 0; i < lSize; i++) {
      compareRef(lObjRef, lArray[i]);
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private boolean compareRef(Object obj1, Object obj2) {
    return obj1 == obj2;
  }

  public enum PercentageOfEqualReferences {
    P_0,
    P_25,
    P_50,
    P_75,
    P_100
  }
}
