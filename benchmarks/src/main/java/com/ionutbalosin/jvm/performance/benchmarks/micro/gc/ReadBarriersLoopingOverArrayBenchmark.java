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
 * Test the overhead of read barriers while iterating through the elements of an array of Objects and reading every element of it.
 *
 * Note: looping over an array favors algorithms that can hoist the barrier without accounting really on the cost of the barrier itself.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 *
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class ReadBarriersLoopingOverArrayBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ReadBarriersLoopingOverArrayBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC
  //    -XX:+UnlockExperimentalVMOptions -XX:+UseEpsilonGC}
  // - JMH options: -prof gc

  @Param({"1024"})
  private int size;

  private Wrapper[] array;

  @Setup()
  public void setup() {
    array = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      array[i] = new Wrapper(i);
    }
  }

  @Benchmark
  public void gc() {
    test();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int test() {
    int sum = 0;

    int lSize = size;
    for (int i = 0; i < lSize; i++) {
      sum += array[i].aValue;
    }

    return sum;
  }

  public class Wrapper {
    int aValue;

    public Wrapper(int aValue) {
      this.aValue = aValue;
    }
  }
}
