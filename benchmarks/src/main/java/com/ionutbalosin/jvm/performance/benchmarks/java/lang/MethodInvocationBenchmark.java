package com.ionutbalosin.jvm.performance.benchmarks.java.lang;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;
import java.util.function.Supplier;
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
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class MethodInvocationBenchmark {

  public static final MethodHandle fmh = getMethodHandle();
  public static final MethodHandle fmh_staticTarget = getMethodHandleStaticTarget();
  // final reflection method reference static vs. non-static
  public static final Method mReflection = getMethod();
  public static final Method mReflection_staticTarget = getMethodStaticTarget();

  @Param({"42"})
  public static int param;

  public static ArithmeticOperation numInstance = new ArithmeticOperation();
  // method handle non-final vs. final reference
  public static MethodHandle mh = getMethodHandle();
  // method handle non-final vs. final reference w/ static target call
  public static MethodHandle mh_staticTarget = getMethodHandleStaticTarget();

  static Method getMethod() {
    try {
      Class<?> clazz = Class.forName(ArithmeticOperation.class.getName());
      return clazz.getDeclaredMethod("multiply", Integer.class);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  static Method getMethodStaticTarget() {
    try {
      Class<?> clazz = Class.forName(ArithmeticOperation.class.getName());
      return clazz.getDeclaredMethod("multiply_static", Integer.class);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  static MethodHandle getMethodHandle() {
    try {
      MethodHandles.Lookup lookup = MethodHandles.lookup();
      MethodType type = MethodType.methodType(Integer.class, Integer.class);
      return lookup.findVirtual(ArithmeticOperation.class, "multiply", type);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  static MethodHandle getMethodHandleStaticTarget() {
    try {
      MethodHandles.Lookup lookup = MethodHandles.lookup();
      MethodType type = MethodType.methodType(Integer.class, Integer.class);
      return lookup.findStatic(ArithmeticOperation.class, "multiply_static", type);
    } catch (Exception e) {
      throw new RuntimeException(e);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*MethodInvocationBenchmark.*"

  @Benchmark
  public Integer methodHandle_invoke() throws Throwable {
    return (Integer) mh.invoke(numInstance, param);
  }

  @Benchmark
  public Integer methodHandle_invokeExact() throws Throwable {
    return (Integer) mh.invokeExact(numInstance, param);
  }

  @Benchmark
  public Integer final_methodHandle_invoke() throws Throwable {
    return (Integer) fmh.invoke(numInstance, param);
  }

  @Benchmark
  public Integer final_methodHandle_invokeExact() throws Throwable {
    return (Integer) fmh.invokeExact(numInstance, param);
  }

  @Benchmark
  public Integer methodHandle_invoke_staticTarget() throws Throwable {
    return (Integer) mh_staticTarget.invoke(param);
  }

  @Benchmark
  public Integer methodHandle_invokeExact_staticTarget() throws Throwable {
    return (Integer) mh_staticTarget.invokeExact(param);
  }

  @Benchmark
  public Integer final_methodHandle_invoke_staticTarget() throws Throwable {
    return (Integer) fmh_staticTarget.invoke(param);
  }

  @Benchmark
  public Integer final_methodHandle_invokeExact_staticTarget() throws Throwable {
    return (Integer) fmh_staticTarget.invokeExact(param);
  }

  @Benchmark
  public Integer functional_method_reference() {
    Supplier<ArithmeticOperation> supplier = ArithmeticOperation::new;
    ArithmeticOperation ar = supplier.get();
    Function<Integer, Integer> function = numInstance::multiply;
    return function.apply(param);
  }

  @Benchmark
  public Integer functional_method_reference_static_target() {
    Function<Integer, Integer> function = ArithmeticOperation::multiply_static;
    return function.apply(param);
  }

  @Benchmark
  public Integer invoke_static() {
    return ArithmeticOperation.multiply_static(param);
  }

  @Benchmark
  public Integer invoke_virtual() {
    return numInstance.multiply(param);
  }

  @Benchmark
  public Integer reflection_methodInvoke()
      throws InvocationTargetException, IllegalAccessException {
    return (Integer) mReflection.invoke(numInstance, param);
  }

  @Benchmark
  public Integer reflection_methodInvoke_staticTarget()
      throws InvocationTargetException, IllegalAccessException {
    return (Integer) mReflection_staticTarget.invoke(ArithmeticOperation.class, param);
  }
}

class ArithmeticOperation {

  private final int N = 42;

  public static Integer multiply_static(Integer n) {
    return n << 2;
  }

  public Integer multiply(Integer n) {
    return n << 2;
  }

  public Integer division() {
    return N / 2;
  }
}
