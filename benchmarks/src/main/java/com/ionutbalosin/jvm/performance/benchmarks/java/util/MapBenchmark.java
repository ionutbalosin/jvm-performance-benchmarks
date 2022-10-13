package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OperationsPerInvocation;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.TearDown;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class MapBenchmark {

  private final int THRESHOLD = 16384;

  @Param({"32768"})
  int dummyData;

  @Param({"512"})
  int realData;

  private Map<Integer, Integer> map;
  @Param private MapType mapType;

  private Integer[] keys;
  private Integer[] values;
  Random random;

  @Setup(Level.Trial)
  public void setup() {
    switch (mapType) {
      case HASH_MAP:
        map = new HashMap<>();
        break;
      case LINKED_HASH_MAP:
        map = new LinkedHashMap<>();
        break;
      case TREE_MAP:
        map = new TreeMap<>();
        break;
      case IDENTITY_HASH_MAP:
        map = new IdentityHashMap<>();
        break;
      case CONCURRENT_SKIP_LIST_MAP:
        map = new ConcurrentSkipListMap<>();
        break;
      default:
        throw new UnsupportedOperationException("Unsupported map type " + mapType);
    }

    random = new Random(THRESHOLD);

    // generate the real Map keys and values, with values between [THRESHOLD, 2 x THRESHOLD)
    keys = new Integer[realData];
    values = new Integer[realData];
    for (int i = 0; i < realData; i++) {
      keys[i] = THRESHOLD + random.nextInt(THRESHOLD);
      values[i] = THRESHOLD + random.nextInt(THRESHOLD);
    }
  }

  @Setup(Level.Invocation)
  public void beforeInvocation() {
    // pre-fill the Map with dummy entries, having values between [0, THRESHOLD)
    for (int i = 0; i < dummyData; i++) {
      Integer key = random.nextInt(THRESHOLD);
      Integer value = random.nextInt(THRESHOLD);
      map.put(key, value);
    }
  }

  @TearDown(Level.Invocation)
  public void afterInvocation() {
    map.clear();
  }

  // java -jar benchmarks/target/benchmarks.jar ".*MapBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(512)
  public void put(Blackhole blackhole) {
    for (int i = 0; i < realData; i++) {
      blackhole.consume(map.put(keys[i], values[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(512)
  public void putIfAbsent(Blackhole blackhole) {
    for (int i = 0; i < realData; i++) {
      blackhole.consume(map.putIfAbsent(keys[i], values[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(512)
  public void get(Blackhole blackhole) {
    for (int i = 0; i < realData; i++) {
      blackhole.consume(map.get(keys[i]));
    }
  }

  @Benchmark
  public void keySet_full_iteration(Blackhole blackhole) {
    for (Integer key : map.keySet()) {
      blackhole.consume(map.get(key));
    }
  }

  @Benchmark
  public void entrySet_full_iteration(Blackhole blackhole) {
    for (Map.Entry<Integer, Integer> entry : map.entrySet()) {
      blackhole.consume(entry);
    }
  }

  public enum MapType {
    HASH_MAP,
    LINKED_HASH_MAP,
    TREE_MAP,
    IDENTITY_HASH_MAP,
    CONCURRENT_SKIP_LIST_MAP
  }
}
