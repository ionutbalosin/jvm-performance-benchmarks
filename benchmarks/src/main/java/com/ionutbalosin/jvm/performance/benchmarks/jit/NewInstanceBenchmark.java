package com.ionutbalosin.jvm.performance.benchmarks.jit;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.TimeUnit;
import java.util.function.Supplier;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import sun.misc.Unsafe;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests different approaches to create class instances.
 */

//  Pattern:
//
//    supplier_new() {
//        Supplier<Object> supplier = Object::new;
//        return supplier.get();
//    }
//
//    new_operator() {
//        return new Object();
//    }
//
//    new_instance() {
//        return Object.class.getDeclaredConstructor().newInstance();
//    }
//
//    unsafe_allocateInstance() {
//        return UNSAFE.allocateInstance(Object.class);
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class NewInstanceBenchmark {

  // ~
  // ----------------------------------------------------------------------------------------------------------------
  // ~ Methods
  // ~
  // ----------------------------------------------------------------------------------------------------------------

  // java -jar benchmarks/target/benchmarks.jar ".*NewInstanceBenchmark.*"

  public static final Unsafe UNSAFE;

  static {
    try {
      Field unsafeField = Unsafe.class.getDeclaredField("theUnsafe");
      unsafeField.setAccessible(true);
      UNSAFE = (Unsafe) unsafeField.get(null);
    } catch (Exception e) {
      throw new AssertionError(e);
    }
  }

  @Benchmark
  public static Object supplier_new() {
    Supplier<Object> supplier = Object::new;
    return supplier.get();
  }

  @Benchmark
  public static Object new_operator() {
    return new Object();
  }

  @Benchmark
  public static Object new_instance()
      throws NoSuchMethodException, IllegalAccessException, InvocationTargetException,
          InstantiationException {
    return Object.class.getConstructor().newInstance();
  }

  @Benchmark
  public Object unsafe_allocateInstance() throws InstantiationException {
    return UNSAFE.allocateInstance(Object.class);
  }
}
