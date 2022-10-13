package com.ionutbalosin.jvm.performance.benchmarks.compiler;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * Tests different comparisons between class type instances using:
 * - class instance type reference equality (e.g. INSTANCE.getClass() == TYPE.class). Note this way alternative does not work to compare the instance type against its superclasses or interfaces, at runtime.
 * - instanceOf
 * - isInstance
 */
//  Pattern:
//
//    array_of_class_instances = {}
//
//    class_type_ref_equality() {
//        for (instance : array_of_class_instances) {
//            check_if (instance.getClass() == TYPE.class)
//        }
//    }
//
//    instanceOf_TYPE() {
//        for (instance : array_of_class_instances) {
//            check_if (instance instanceOf TYPE.class)
//        }
//    }
//
//    TYPE_isInstance() {
//        for (instance : array_of_class_instances) {
//            check_if (TYPE.class.isInstance(instance))
//        }
//    }
//
//    where TYPE is:
//        - an instance class type
//        - a interface
//        - an array of classes
//

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
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
import org.openjdk.jmh.infra.Blackhole;

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ClassInstanceOfBenchmark {

  @Param({"32768"})
  private int size;

  private Base[] cls;
  private Base[][] arr_cls;

  @Setup
  public void setup() {
    cls = new Base[size];
    arr_cls = new Base[size][0];
    for (int i = 0; i < size - 3; i += 4) {
      // instantiate the array of class instances
      cls[i] = new A();
      cls[i + 1] = new B();
      cls[i + 2] = new C();
      cls[i + 3] = new D();
      // instantiate the array of arrays
      arr_cls[i] = new A[0];
      arr_cls[i + 1] = new B[0];
      arr_cls[i + 2] = new C[0];
      arr_cls[i + 3] = new D[0];
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ClassInstanceOfBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(32768)
  public void class_type_ref_equality(Blackhole blackhole) {
    Base[] lCls = cls;
    int lSize = cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(lCls[i].getClass() == A.class);
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void instanceOf_class(Blackhole blackhole) {
    Base[] lCls = cls;
    int lSize = cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(lCls[i] instanceof A);
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void instanceOf_interface(Blackhole blackhole) {
    Base[] lCls = cls;
    int lSize = cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(lCls[i] instanceof AInterf);
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void instanceOf_array_class(Blackhole blackhole) {
    Base[][] lCls = arr_cls;
    int lSize = arr_cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(lCls[i] instanceof A[]);
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void class_isInstance(Blackhole blackhole) {
    Base[] lCls = cls;
    int lSize = cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(A.class.isInstance(lCls[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void interface_isInstance(Blackhole blackhole) {
    Base[] lCls = cls;
    int lSize = cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(AInterf.class.isInstance(lCls[i]));
    }
  }

  @Benchmark
  @OperationsPerInvocation(32768)
  public void array_class_isInstance(Blackhole blackhole) {
    Base[][] lCls = arr_cls;
    int lSize = arr_cls.length;
    for (int i = 0; i < lSize; i++) {
      blackhole.consume(A[].class.isInstance(lCls[i]));
    }
  }

  interface AInterf {}

  interface BInterf {}

  interface CInterf {}

  interface DInterf {}

  interface Interf1 {}

  interface Interf2 {}

  interface Interf3 {}

  interface Interf4 {}

  abstract class Base implements Interf1, Interf2, Interf3, Interf4 {}

  class A extends Base implements AInterf {}

  class B extends Base implements BInterf {}

  class C extends Base implements CInterf {}

  class D extends Base implements DInterf {}
}
