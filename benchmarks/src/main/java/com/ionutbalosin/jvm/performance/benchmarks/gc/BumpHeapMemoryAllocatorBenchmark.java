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
 * This benchmark initially allocates (during setup) a lot of objects, as a pre-allocated part of the Heap (i.e. ballast),
 * and keeps strong references to them until it fills up a certain percent of Heap (e.g. 0%, 25%, 50%, 75%).
 * The pre-allocated objects consist of a big chain of composite objects (e.g. Object 1 -> Object 2 -> … -> Object 32).
 * Note: the chaining might have an impact on the GC roots traversal (for example during the “parallel” marking phase),
 * since the degree of pointer indirection (i.e. reference processing) is not negligible, while traversing the object graph dependencies.
 *
 * Then, in the benchmark test method, temporary objects are further allocated until the full heap is occupied
 * (i.e. bumping the memory footprint from the initial pre-allocated threshold until it reaches the full capacity).
 * Once all of these temporary objects are allocated, they are immediately released so they become eligible for Garbage Collector.
 * Note: some objects are potentially considered big, so they would normally follow the slow path allocation,
 * residing directly in the Tenured Generation (in case of generational collectors), increasing the likelihood of full GCs.
 *
 * Note: the benchmark could be run using multiple concurrent threads.
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class BumpHeapMemoryAllocatorBenchmark {

  @Param private PercentageOfPreAllocatedHeap percentageOfPreAllocatedHeap;

  private final long MAX_MEMORY = Runtime.getRuntime().maxMemory();
  private final int CHAIN_REFERENCE_DEPTH = 32;
  private final int ARRAY_LENGTH_INCREMENT = 4;
  private final int ARRAY_LENGTH_MULTIPLIER = 1;

  private int numberOfBenchThreads;
  private int numberOfObjectsPerThread;
  private int preAllocatedArraySize;
  private ObjWrapper[] preAllocatedArray;

  @Setup()
  public void setup(BenchmarkParams params) {
    long objectSizeInBytes = GraphLayout.parseInstance(createInstance()).totalSize();
    long maxNumberOfObjects = MAX_MEMORY / objectSizeInBytes;
    numberOfBenchThreads = params.getThreads();

    switch (percentageOfPreAllocatedHeap) {
      case P_0:
        preAllocatedArraySize = 0;
        numberOfObjectsPerThread = (int) (maxNumberOfObjects / numberOfBenchThreads);
        break;
      case P_25:
        preAllocatedArraySize = (int) (maxNumberOfObjects * 0.25);
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.75) / numberOfBenchThreads);
        break;
      case P_50:
        preAllocatedArraySize = (int) (maxNumberOfObjects * 0.50);
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.50) / numberOfBenchThreads);
        break;
      case P_75:
        preAllocatedArraySize = (int) (maxNumberOfObjects * 0.75);
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.25) / numberOfBenchThreads);
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported percentage of allocated instances " + percentageOfPreAllocatedHeap);
    }

    preAllocatedArray = allocate(preAllocatedArraySize);
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ConstantHeapMemoryOccupancyBenchmark.*" -t1,2,4
  // -prof gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ObjWrapper[] serialGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ObjWrapper[] parallelGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ObjWrapper[] g1GC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ObjWrapper[] shenandoahGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public ObjWrapper[] zGC() {
    return allocate(numberOfObjectsPerThread);
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private ObjWrapper[] allocate(int numberOfObjects) {
    ObjWrapper[] array = new ObjWrapper[numberOfObjects];

    for (int i = 0; i < numberOfObjects; i++) {
      array[i] = createInstance();
    }

    return array;
  }

  private ObjWrapper createInstance() {
    int arrayLength = 0;
    ObjWrapper head = new ObjWrapper(arrayLength);

    ObjWrapper cursor = head;
    for (int i = 0; i < CHAIN_REFERENCE_DEPTH; i++) {
      arrayLength *= ARRAY_LENGTH_MULTIPLIER;
      arrayLength += ARRAY_LENGTH_INCREMENT;

      ObjWrapper nextObj = new ObjWrapper(arrayLength);
      cursor.refObj = nextObj;
      cursor = nextObj;
    }

    return head;
  }

  public enum PercentageOfPreAllocatedHeap {
    P_0,
    P_25,
    P_50,
    P_75
  }

  //   ObjWrapper internals:
  //         OFFSET  SIZE               TYPE DESCRIPTION
  //            0      4                    (object header)
  //            4      4                    (object header)
  //            8      4                    (object header)
  //            12     4   java.lang.Object ObjWrapper.refObj
  //            16     4             long[] ObjWrapper.longArray
  //            20     4                    (loss due to the next object alignment)
  //    Instance size: 24 bytes
  //    Space losses: 0 bytes internal + 4 bytes external = 4 bytes total

  public class ObjWrapper {
    Object refObj;
    long array[];

    ObjWrapper(int objArrayLength) {
      if (objArrayLength > 0) this.array = new long[objArrayLength];
    }
  }
}
