package com.ionutbalosin.jvm.performance.benchmarks.jit;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;
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
/*
 * Tests the add() and contains() Set methods using different Set implementations (e.g. HashSet, LinkedHashSet, TreeSet), under following conditions:
 * - the Set is already pre-filled with 32,768 randomly generated Integers with values between [0, THRESHOLD)
 * - every addition and contains operation uses different Integer elements, in comparison to the ones already pre-filled, having values between [THRESHOLD, 2 x THRESHOLD)
 *
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 3, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 3, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class SetBenchmark {

  private final int THRESHOLD = 16384;

  @Param({"32768"})
  int dummyData;

  @Param({"512"})
  int realData;

  private Set<Integer> set;
  @Param private SetType mapType;

  private Integer[] keys;
  Random random;

  @Setup(Level.Trial)
  public void setup() {
    switch (mapType) {
      case HASH_SET:
        set = new HashSet<>();
        break;
      case LINKED_HASH_SET:
        set = new LinkedHashSet<>();
        break;
      case TREE_SET:
        set = new TreeSet<>();
        break;
      default:
        throw new UnsupportedOperationException("Unsupported map type " + mapType);
    }

    random = new Random(THRESHOLD);

    // generate the real Set entries, with values between [THRESHOLD, 2 x THRESHOLD)
    keys = new Integer[realData];
    for (int i = 0; i < realData; i++) {
      keys[i] = THRESHOLD + random.nextInt(THRESHOLD);
    }
  }

  @Setup(Level.Invocation)
  public void beforeInvocation() {
    // pre-fill the Set with dummy entries, having values between [0, THRESHOLD)
    for (int i = 0; i < dummyData; i++) {
      Integer key = random.nextInt(THRESHOLD);
      set.add(key);
    }
  }

  @TearDown(Level.Invocation)
  public void afterInvocation() {
    set.clear();
  }

  // java -jar benchmarks/target/benchmarks.jar ".*SetBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(512)
  public void add(Blackhole blackhole) {
    for (int i = 0; i < realData; i++) {
      blackhole.consume(set.add(keys[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(512)
  public void contains(Blackhole blackhole) {
    for (int i = 0; i < realData; i++) {
      blackhole.consume(set.contains(keys[i]));
    }
  }

  public enum SetType {
    HASH_SET,
    LINKED_HASH_SET,
    TREE_SET
  }
}
