package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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

import java.util.concurrent.TimeUnit;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

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

//  Pattern:
//
//    no_escape_object() {
//        SimpleObject object = new SimpleObject();
//
//        return object.field1 + object.field2;
//    }
//
//    no_escape_object_containing_array() {
//        ObjectWithArray object = new ObjectWithArray();
//
//        return object.field1 + object.field2 + object.array.length;
//    }
//
//    partial_escape_object_containing_array() {
//        ObjectWithArray object1 = new ObjectWithArray();
//
//        if (predicate) // always FALSE
//            result = object;
//        else
//            result = otherGlobalObject;
//
//        return result;
//    }
//
//    Where the predicate is always evaluated to FALSE, at runtime.
//
//    arg_escape_object_containing_array() {
//        ObjectWithArray object1 = new ObjectWithArray();
//        ObjectWithArray object2 = new ObjectWithArray();
//
//        if (object1.equals(object2))  // inlining candidate
//            match = true;
//        else
//            match = false;
//
//        return match;
//    }
//
//    Where:
//    - object1 is NoEscape
//    - object2 is:
//        - NoEscape if inlining of equals() succeeds
//        - ArgEscape if inlining fails or is disabled
//
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

  private HeavyWrapper cachedWrapper = new HeavyWrapper(param, size);

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
  public int no_escape_array_object() {
    HeavyWrapper w = new HeavyWrapper(param, size);
    return w.f1 + w.f2 + w.z.length;
  }

  // @Benchmark
  public int no_escape_array_object_baseline() {
    return param + (param << 1) + size;
  }

  @Benchmark
  public HeavyWrapper branch_escape_object() {
    HeavyWrapper wrapper = new HeavyWrapper(param, size);
    HeavyWrapper result;

    // wrapper is NoEscape, because "objectEscapes" is always false, hence branch is never executed
    if (objectEscapes) {
      result = wrapper;
    } else {
      result = cachedWrapper;
    }

    return result;
  }

  @Benchmark
  public boolean arg_escape_object() {
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

  public static class HeavyWrapper {
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

  public static class LightWrapper {
    public int f1;
    public int f2;

    public LightWrapper(int value) {
      f1 = value;
      f2 = value << 1;
    }
  }
}
