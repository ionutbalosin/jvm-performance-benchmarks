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
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Test the overhead of read barriers while iterating through a chain of pre-allocated classes (e.g., class1 -> class2 -> ... -> class1024) and returns
 * the sum of all their fields properties (e.g., class1.field + class2.field + class1024.field)
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
public class ReadBarriersChainOfReferencesBenchmark {

  // $ java -jar **/benchmarks.jar ".*ReadBarriersChainOfReferencesBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC
  //    -XX:+UnlockExperimentalVMOptions -XX:+UseEpsilonGC}
  // - JMH options: -prof gc

  private final int CHAIN_REFERENCE_DEPTH = 1024;
  private ObjectChain baseRef;

  @Setup()
  public void setup() {
    int i = 0;
    baseRef = new ObjectChain(i);

    ObjectChain cursor = baseRef;
    for (; i < CHAIN_REFERENCE_DEPTH; i++) {

      ObjectChain nextObj = new ObjectChain(i);
      cursor.refObj = nextObj;

      cursor = nextObj;
    }
  }

  @Benchmark
  public int gc() {
    return test();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int test() {
    int sum = 0;

    ObjectChain cursor = baseRef;
    while (cursor != null) {
      sum += cursor.aValue;
      cursor = cursor.refObj;
    }

    return sum;
  }

  public class ObjectChain {
    ObjectChain refObj;
    int aValue;

    public ObjectChain(int aValue) {
      this.aValue = aValue;
    }
  }
}
