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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * Test how the Compiler deals with implicit versus explicit null pointer exception while accessing the elements of an array list.
 * The values inside the array are generated, as follows:
 * - all are different than null, hence none throws NPE
 * - all of them are null, hence all throw NPE
 * - only a part of them are null, hence only a part of them throw NPE
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class NullChecksBenchmark {

  @Param({"1024"})
  private int size;

  @Param({"0.0", "0.5", "1.0"})
  private double threshold;

  private Wrapper[] A;

  @Setup
  public void setup() {
    A = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      if (Math.random() < threshold) {
        A[i] = null;
      } else {
        A[i] = new Wrapper();
      }
    }
  }

  @Benchmark
  public void implicit_null_check() {
    for (Wrapper object : A) {
      try {
        implicitThrowNpe(object);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @Benchmark
  public void explicit_null_check() {
    for (Wrapper o : A) {
      try {
        explicitThrowNpe(o);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int explicitThrowNpe(Wrapper o) {
    if (o == null) {
      throw new NullPointerException("Oops!");
    }
    return o.x;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  private int implicitThrowNpe(Wrapper o) {
    return o.x;
  }

  private static class Wrapper {
    public int x;
  }
}
