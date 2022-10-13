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
 * This benchmark allocates arrays of temporary objects until they fill up a certain percent of Heap (e.g. 25%, 50%, 75%)
 * and then releases them all, so they become eligible for Garbage Collector.
 *
 * Note: the benchmark could be run using multiple concurrent threads.
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.SECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class BurstHeapMemoryAllocatorBenchmark {

  @Param private PercentageOfHeapToAllocate percentageOfHeapToAllocate;

  private final long MAX_MEMORY = Runtime.getRuntime().maxMemory();

  private int numberOfBenchThreads;
  private int numberOfObjectsPerThread;

  @Setup()
  public void setup(BenchmarkParams params) {
    long objectSizeInBytes = GraphLayout.parseInstance(createInstance()).totalSize();
    long maxNumberOfObjects = MAX_MEMORY / objectSizeInBytes;
    numberOfBenchThreads = params.getThreads();

    switch (percentageOfHeapToAllocate) {
      case P_25:
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.25) / numberOfBenchThreads);
        break;
      case P_50:
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.50) / numberOfBenchThreads);
        break;
      case P_75:
        numberOfObjectsPerThread = (int) ((maxNumberOfObjects * 0.75) / numberOfBenchThreads);
        break;
      default:
        throw new UnsupportedOperationException(
            "Unsupported percentage of allocated instances " + percentageOfHeapToAllocate);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*BurstHeapMemoryAllocatorBenchmark.*" -t1,2,4
  // -prof gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public Object[] serialGC() {
    return allocate();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public Object[] parallelGC() {
    return allocate();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public Object[] g1GC() {
    return allocate();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public Object[] shenandoahGC() {
    return allocate();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC", "-Xms4g", "-Xmx4g", "-XX:+AlwaysPreTouch"})
  public Object[] zGC() {
    return allocate();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private Object[] allocate() {
    int numberOfObjects = this.numberOfObjectsPerThread;
    Object[] array = new Object[numberOfObjects];

    for (int i = 0; i < numberOfObjects; i++) {
      array[i] = createInstance();
    }

    return array;
  }

  private Object createInstance() {
    return new Object();
  }

  public enum PercentageOfHeapToAllocate {
    P_25,
    P_50,
    P_75
  }
}
