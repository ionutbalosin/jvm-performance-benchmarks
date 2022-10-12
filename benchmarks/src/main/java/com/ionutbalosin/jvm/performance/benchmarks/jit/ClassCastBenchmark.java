package com.ionutbalosin.jvm.performance.benchmarks.jit;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * Resources:
 * - see https://stackoverflow.com/questions/47146917/are-class-cast-and-class-isinstance-methods-in-java-9-actually-intrinsic-when-in
 */
/*
 * Tests different cast types using:
 * - TYPE.cast(object)
 * - A.class.cast(object)
 * - (A)object
 */
//  Pattern:
//
//    array_of_class_instances = {}
//
//    type_cast() {
//        for (instance : array_of_class_instances) {
//            TYPE.cast(instance)
//        }
//    }
//
//    explicit_class_cast() {
//        for (instance : array_of_class_instances) {
//            A.class.cast(instance)
//        }
//    }
//
//    implicit_class_cast() {
//        for (instance : array_of_class_instances) {
//            (A)instance
//        }
//    }
//
//    where TYPE is:
//        - Class<A>
//

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OperationsPerInvocation;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ClassCastBenchmark {

  public Class<A> type;

  public Object[] array;

  @Param({"32768"})
  private int size;

  @Setup
  public void setup() {
    type = A.class;

    array = new Object[size];
    for (int i = 0; i < size; i++) {
      array[i] = new A();
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ClassCastBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(32768)
  public void type_cast() {
    Object[] localArray = array;
    for (int i = 0; i < localArray.length; i++) {
      sink(type.cast(localArray[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void explicit_class_cast() {
    Object[] localArray = array;
    for (int i = 0; i < localArray.length; i++) {
      sink(A.class.cast(localArray[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void implicit_class_cast() {
    Object[] localArray = array;
    for (int i = 0; i < localArray.length; i++) {
      // this adds CHECKCAST ClassCastBenchmark$A
      sink((A) localArray[i]);
    }
  }

  interface AInterf {}

  abstract class AClass {}

  class A extends AClass implements AInterf {}

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public static void sink(final A v) {
    // IT IS VERY IMPORTANT TO MATCH THE SIGNATURE TO AVOID AUTOBOXING.
    // The method intentionally does nothing.
  }
}
