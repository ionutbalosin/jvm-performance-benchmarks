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
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 *
 * Compiler analyses the scope of a new object and decides whether it might be allocated or not on the heap.
 * The method is called Escape Analysis (EA), which identifies if the newly created object is escaping or not into the heap.
 * To not be confused, EA is not an optimization but rather an analysis phase for the optimizer.
 * There are few escape states:
 * - NoEscape - the object cannot be visible outside the current method and thread.
 * - ArgEscape - the object is passed as an argument to a method but cannot otherwise be visible outside the method or by other threads.
 * - GlobalEscape - the object can escape the method or the thread. It means that an object with GlobalEscape state is visible outside method/thread.
 * For NoEscape objects, the Compiler can remap accesses to the object fields to accesses to synthetic local operands: which leads to so-called Scalar Replacement optimization. If stack allocation was really done, it would allocate the entire object storage on the stack, including the header and the fields, and reference it in the generated code.
 *
 * References:
 * - https://shipilev.net/jvm/anatomy-quarks/18-scalar-replacement/
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ScalarReplacementBenchmark {

  @Param({"3"})
  private int param;

  @Param({"128"})
  private int size;

  @Param(value = {"false"})
  private boolean objectEscapes;

  private final HeavyWrapper CACHED_WRAPPER = new HeavyWrapper(param, size);

  @Benchmark
  public int no_escape() {
    LightWrapper w = new LightWrapper(param);
    return w.f1 + w.f2;
  }

  // @Benchmark
  public int no_escape_baseline() {
    return param + (param << 1);
  }

  @Benchmark
  public int no_escape_array_obj() {
    HeavyWrapper w = new HeavyWrapper(param, size);
    return w.f1 + w.f2 + w.z.length;
  }

  // @Benchmark
  public int no_escape_array_obj_baseline() {
    return param + (param << 1) + size;
  }

  @Benchmark
  public HeavyWrapper branch_escape_obj() {
    HeavyWrapper wrapper = new HeavyWrapper(param, size);
    HeavyWrapper result;

    // wrapper is NoEscape, because "objectEscapes" is always false, hence branch is never executed
    if (objectEscapes) {
      result = wrapper;
    } else {
      result = CACHED_WRAPPER;
    }

    return result;
  }

  @Benchmark
  public boolean arg_escape_obj() {
    HeavyWrapper wrapper1 = new HeavyWrapper(param, size);
    HeavyWrapper wrapper2 = new HeavyWrapper(param, size);
    boolean match = false;

    // wrapper1 is NoEscape
    // wrapper2 is:
    //  - NoEscape if inlining of equals() succeeds
    //  - ArgEscape if inlining fails or disabled
    if (wrapper1.equals(wrapper2)) match = true;

    return match;
  }

  private static class HeavyWrapper {
    public int f1;
    public int f2;
    public byte[] z;

    public HeavyWrapper(int value, int size) {
      f1 = value;
      f2 = value << 1;
      z = new byte[size];
    }

    @Override
    public boolean equals(Object o) {
      HeavyWrapper that = (HeavyWrapper) o;
      return (f1 == that.f1) && (f2 == that.f2);
    }
  }

  private static class LightWrapper {
    public int f1;
    public int f2;

    public LightWrapper(int value) {
      f1 = value;
      f2 = value << 1;
    }
  }
}
