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
import org.openjdk.jmh.infra.BenchmarkParams;
import org.openjdk.jol.info.GraphLayout;

/*
 * (c) 2020 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * This benchmark initially allocates (during setup) chunks of chained objects (i.e. ballast), until it fills up
 * a certain percent of Heap (e.g. 0%, 25%, 50%) and keeps strong references to them from an array.
 * Such a chain looks like Object 1 -> Object 2 -> … -> Object 32 where an object consist of pointer to the next object
 * and an array of longs.
 * Note: the chaining might have an impact on the GC roots traversal (for example during the “parallel” marking phase),
 * since the degree of pointer indirection (i.e. reference processing) is not negligible, while traversing the object graph dependencies.
 *
 * Then, in the benchmark test() method, similar object chains are concurrently allocated (by multiple threads) and immediately released,
 * so they become eligible for Garbage Collector.
 *
 * Note: some objects within the chain are potentially considered big, so they would normally follow the slow path allocation,
 * residing directly in the Tenured Generation (in case of generational collectors), increasing the likelihood of full GCs.
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class ConstantRetrainedHeapMemoryBenchmarkV2 {

  @Param private PercentageOfRetainedHeap percentageOfRetainedHeap;

  private final long MAX_MEMORY = Runtime.getRuntime().maxMemory();
  private final int CHAIN_REFERENCE_DEPTH = 32;
  private final int ARRAY_LENGTH_INCREMENT = 4;
  private final int ARRAY_LENGTH_MULTIPLIER = 1;

  private int numberOfBenchThreads;
  private int numberOfObjectsPerThread;
  private int retainedArraySize;
  private ChainObject[] retainedArray;

  @Setup()
  public void setup(BenchmarkParams params) {
    long objectSizeInBytes = GraphLayout.parseInstance(createChainedObjects()).totalSize();
    long maxNumberOfObjects = MAX_MEMORY / objectSizeInBytes;
    numberOfBenchThreads = params.getThreads();

    switch (percentageOfRetainedHeap) {
      case P_0:
        retainedArraySize = 0;
        numberOfObjectsPerThread = (int) (maxNumberOfObjects / numberOfBenchThreads);
        break;
      case P_25:
        retainedArraySize = (int) (maxNumberOfObjects * 0.25);
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.75) / numberOfBenchThreads);
        break;
      case P_50:
        retainedArraySize = (int) (maxNumberOfObjects * 0.50);
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.50) / numberOfBenchThreads);
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported percentage of allocated instances " + percentageOfRetainedHeap);
    }

    retainedArray = allocate(retainedArraySize);
  }

  // JMH Opts: -t1,2 -prof gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ChainObject[] serialGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ChainObject[] parallelGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ChainObject[] g1GC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ChainObject[] shenandoahGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ChainObject[] zGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private ChainObject[] allocate(int numberOfObjects) {
    ChainObject[] array = new ChainObject[numberOfObjects];

    for (int i = 0; i < numberOfObjects; i++) {
      array[i] = createChainedObjects();
    }

    return array;
  }

  private ChainObject createChainedObjects() {
    int arrayLength = 0;
    ChainObject head = new ChainObject(arrayLength);

    ChainObject cursor = head;
    for (int i = 0; i < CHAIN_REFERENCE_DEPTH; i++) {
      arrayLength *= ARRAY_LENGTH_MULTIPLIER;
      arrayLength += ARRAY_LENGTH_INCREMENT;

      ChainObject nextObj = new ChainObject(arrayLength);
      cursor.refObj = nextObj;
      cursor = nextObj;
    }

    return head;
  }

  public enum PercentageOfRetainedHeap {
    P_0,
    P_25,
    P_50
  }

  //   ChainObject internals:
  //         OFFSET  SIZE               TYPE DESCRIPTION
  //            0      4                    (object header)
  //            4      4                    (object header)
  //            8      4                    (object header)
  //            12     4   java.lang.Object ChainObject.refObj
  //            16     4             long[] ChainObject.longArray
  //            20     4                    (loss due to the next object alignment)
  //    Instance size: 24 bytes
  //    Space losses: 0 bytes internal + 4 bytes external = 4 bytes total

  public class ChainObject {
    Object refObj;
    long array[];

    ChainObject(int arrayLength) {
      if (arrayLength > 0) this.array = new long[arrayLength];
    }
  }
}
