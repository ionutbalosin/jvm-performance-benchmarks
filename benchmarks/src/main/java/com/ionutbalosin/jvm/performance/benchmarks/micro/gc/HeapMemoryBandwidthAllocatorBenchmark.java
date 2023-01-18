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
 * This benchmark tests the allocation rate for chunks of byte arrays having different sizes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 2)
@State(Scope.Benchmark)
public class HeapMemoryBandwidthAllocatorBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HeapMemoryBandwidthAllocatorBenchmark.*"
  // Recommended command line options:
  // - JVM options:
  //   {-XX:+UseSerialGC, -XX:+UseParallelGC, -XX:+UseG1GC, -XX:+UseShenandoahGC, -XX:+UseZGC}
  // - JMH options: -t {1, 2} -prof gc

  private int sizeInBytes;

  @Param private ObjectsSize size;

  @Setup()
  public void setup() {
    switch (size) {
      case _32_B:
        sizeInBytes = 32;
        break;
      case _16_KB:
        sizeInBytes = 16 * 1024;
        break;
      case _8_MB:
        sizeInBytes = 8 * 1024 * 1024;
        break;
      default:
        throw new UnsupportedOperationException("Unsupported object size " + size);
    }
  }

  @Benchmark
  public byte[] gc() {
    return allocate();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private byte[] allocate() {
    return new byte[sizeInBytes];
  }

  public enum ObjectsSize {
    _32_B,
    _16_KB,
    _8_MB
  }
}
