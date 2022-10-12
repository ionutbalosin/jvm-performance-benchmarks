package com.ionutbalosin.jvm.performance.benchmarks.jit;

import java.util.ArrayList;
import java.util.Iterator;
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
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ListLoopIteratorBenchmark {

  @Param({"262144"})
  private int size;

  private List<Integer> list;

  @Setup
  public void setup() {
    list = new ArrayList<>();

    for (int i = 0; i < size; i++) {
      list.add(i);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ListLoopIteratorBenchmark.*"

  @Benchmark
  public void for_each(Blackhole blackhole) {
    for (Integer integer : list) {
      blackhole.consume(integer);
    }
  }

  @Benchmark
  public void for_each_with_consumer(Blackhole blackhole) {
    list.forEach(integer -> blackhole.consume(integer));
  }

  @Benchmark
  public void loop_iterator(Blackhole blackhole) {
    for (Iterator iterator = list.iterator(); iterator.hasNext(); ) {
      blackhole.consume(iterator.next());
    }
  }

  @Benchmark
  public void counted_loop(Blackhole blackhole) {
    for (int i = 0; i < list.size(); i++) {
      blackhole.consume(list.get(i));
    }
  }

  @Benchmark
  public void while_loop(Blackhole blackhole) {
    int i = 0;
    while (i < list.size()) {
      blackhole.consume(list.get(i));
      i++;
    }
  }

  @Benchmark
  public void do_while_loop(Blackhole blackhole) {
    int i = 0;
    do {
      blackhole.consume(list.get(i));
      i++;
    } while (i < list.size());
  }
}
