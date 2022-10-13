package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
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
 * Resources:
 * - see http://cr.openjdk.java.net/~shade/scratch/ToArrayBench.java
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ListToArrayBenchmark {

  @Param({"128", "8192"})
  private int size;

  private List<Byte> list;

  @Setup
  public void setup() {
    list = new ArrayList<>();
    for (int i = 0; i < size; i++) {
      list.add((byte) i);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ListToArrayBenchmark*"

  @Benchmark
  public ArrayList<Byte> defensive_copy() {
    return new ArrayList<>(list);
  }

  @Benchmark
  public Object[] to_array() {
    return list.toArray();
  }

  @Benchmark
  public Byte[] zero_sized_array() {
    return list.toArray(new Byte[0]);
  }

  @Benchmark
  public Byte[] sized_array_from_list() {
    return list.toArray(new Byte[list.size()]);
  }

  @Benchmark
  public Byte[] sized_array_fixed_size() {
    return list.toArray(new Byte[size]);
  }
}
