package com.ionutbalosin.jvm.performance.benchmarks.jit;

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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Test how the Compiler deals with implicit versus explicit null pointer exception while accessing the elements of an array list.
 * The values inside the array are generated, as follows:
 * - all are different than null, hence none throws NPE
 * - all of them are null, hence all throw NPE
 * - only a part of them are null, hence only a part of them throw NPE
 */
//  Pattern:
//    method() {
//        for (Object object : elements) {
//            try {
//                // mode is {explicit, implicit}
//                <mode>_null_check(object);
//            } catch(NullPointerException e) {
//                // swallow exception
//            }
//        }
//    }
//
//    explicit_null_check(object) {
//        if (object == null) {
//            throw new NullPointerException("Oops!");
//        }
//        return object.field;
//    }
//
//    implicit_null_check(object) {
//        return object.field; // might throw NullPointerException
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class NullChecksBenchmark {

  @Param({"1024"})
  private int size;

  @Param({"0.0", "0.5", "1.0"})
  private double upperNullThreshold;

  private Wrapper[] A;

  // java -jar benchmarks/target/benchmarks.jar ".*NullChecksBenchmark.*"

  @Setup
  public void setup() {
    A = new Wrapper[size];

    for (int i = 0; i < size; i++) {
      if (Math.random() < upperNullThreshold) {
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
        testImplicit(object);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @Benchmark
  public void explicit_null_check() {
    for (Wrapper o : A) {
      try {
        testExplicit(o);
      } catch (NullPointerException e) {
        // swallow exception
      }
    }
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int testExplicit(Wrapper o) {
    if (o == null) {
      throw new NullPointerException("Oops!");
    }
    return o.x;
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public int testImplicit(Wrapper o) {
    return o.x;
  }

  private static class Wrapper {
    public int x;
  }
}
