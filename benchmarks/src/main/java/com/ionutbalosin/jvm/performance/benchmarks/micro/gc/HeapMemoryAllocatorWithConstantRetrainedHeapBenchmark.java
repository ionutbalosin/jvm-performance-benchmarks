/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.micro.gc;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
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
import org.openjdk.jol.info.GraphLayout;

/*
 * This benchmark initially allocates (during setup) lists of chained objects (e.g., Object 1 -> Object 2 -> … ),
 * until it fills up a certain percent of the heap (e.g., 25%, 50%, 75%). Each object list (i.e., the list header) is stored
 * in an array-based structure that keeps strong references to each chain.
 * Such a chain looks like (head) Object 1 -> Object 2 -> … -> Object 32 where every object consists of a pointer to the next object and,
 * in addition, an array of allocated longs.
 * Some objects within the chain are potentially considered big, so they would normally follow the slow path allocation,
 * residing directly in the Tenured Generation (in the case of generational collectors), increasing the likelihood of full GCs.
 *
 * Note: The chaining might have an impact on the GC roots traversal, since the degree of pointer indirection (i.e., reference processing)
 * is not negligible, while traversing the object graph dependencies.
 *
 * Then, in the benchmark method, similar object chains are allocated, and they replace, one by one (i.e., incrementally),
 * the ones from the initial array so that the former ones become eligible for garbage collection.
 *
 * Note: During the lifecycle of the benchmark, the footprint of live memory is (trying to be) kept constant.
 *
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC}
  // - JMH options: -t {1, 2} -prof gc

  private final long MAX_MEMORY = Runtime.getRuntime().maxMemory();
  private final int CHAIN_REFERENCE_DEPTH = 32;
  private final int ARRAY_LENGTH_INCREMENT = 4;
  private final int ARRAY_LENGTH_MULTIPLIER = 1;

  private int retainedArraySize;
  private ObjectChain[] retainedArray;
  private AtomicInteger index;

  @Param private PercentageOfRetainedHeap percentageOfRetainedHeap;

  @Setup()
  public void setup() {
    long objectSizeInBytes = GraphLayout.parseInstance(createChainedObjects()).totalSize();
    long maxNumberOfObjects = MAX_MEMORY / objectSizeInBytes;
    index = new AtomicInteger(0);

    switch (percentageOfRetainedHeap) {
      case P_25:
        retainedArraySize = (int) (maxNumberOfObjects * 0.25);
        break;
      case P_50:
        retainedArraySize = (int) (maxNumberOfObjects * 0.50);
        break;
      case P_75:
        retainedArraySize = (int) (maxNumberOfObjects * 0.75);
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported percentage of allocated instances " + percentageOfRetainedHeap);
    }

    retainedArray = new ObjectChain[retainedArraySize];
    for (int i = 0; i < retainedArraySize; i++) {
      retainedArray[i] = createChainedObjects();
    }
  }

  @Benchmark
  public void gc() {
    allocate();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private void allocate() {
    ObjectChain chainHead = createChainedObjects();
    retainedArray[index.getAndIncrement() % retainedArraySize] = chainHead;
  }

  private ObjectChain createChainedObjects() {
    int arrayLength = 0;
    ObjectChain head = new ObjectChain(arrayLength);

    ObjectChain cursor = head;
    for (int i = 0; i < CHAIN_REFERENCE_DEPTH; i++) {
      arrayLength *= ARRAY_LENGTH_MULTIPLIER;
      arrayLength += ARRAY_LENGTH_INCREMENT;

      ObjectChain nextObj = new ObjectChain(arrayLength);
      cursor.refObj = nextObj;
      cursor = nextObj;
    }

    return head;
  }

  public enum PercentageOfRetainedHeap {
    P_25,
    P_50,
    P_75
  }

  //   ObjectChain internals:
  //         OFFSET  SIZE               TYPE DESCRIPTION
  //            0      4                    (object header)
  //            4      4                    (object header)
  //            8      4                    (object header)
  //            12     4   java.lang.Object ObjectChain.refObj
  //            16     4             long[] ObjectChain.longArray
  //            20     4                    (loss due to the next object alignment)
  //    Instance size: 24 bytes
  //    Space losses: 0 bytes internal + 4 bytes external = 4 bytes total

  public class ObjectChain {
    Object refObj;
    long array[];

    ObjectChain(int arrayLength) {
      if (arrayLength > 0) this.array = new long[arrayLength];
    }
  }
}
