package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.EnumSet;
import java.util.List;
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
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests the cost of calling values() method on an Enum versus caching the values into a list and using the cached version.
 *
 * As a side note, the enum's method values() returns a new copy of an array representing its values every time it is called.
 *
 * Resources:
 * - see https://dzone.com/articles/memory-hogging-enumvalues-method
 */

//  Pattern:
//
//    // declare an ENUM with 31 values
//    enum ENUM {Value1, Value2, Value3, ... Value 31}
//
//    values {
//        return ENUM.values();
//    }
//
//    cached_enum_set_values {
//        return cachedEnumSetValues;
//    }
//
//    where
//    - cachedEnumSetValues = EnumSet.allOf(ENUM.class)
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class EnumValuesBenchmark {

  @Param({"1000000"})
  private int iterations;

  // java -jar benchmarks/target/benchmarks.jar ".*EnumValuesBenchmark.*" -prof gc

  @Benchmark
  @OperationsPerInvocation(1000000)
  public void cached_enum_set_values(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume(Car.cachedEnumSetValues());
    }
  }

  // @Benchmark
  // @OperationsPerInvocation(1000000)
  public void cached_array_values(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume(Car.cachedArrayValues());
    }
  }

  // @Benchmark
  // @OperationsPerInvocation(1000000)
  public void cached_list_values(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume(Car.cachedListValues());
    }
  }

  @Benchmark
  @OperationsPerInvocation(1000000)
  public void values(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume(Car.values());
    }
  }

  public enum Car {
    ACURA("Acura"),
    ALFA_ROMEO("Alfa Romeo"),
    ASTON_MARTIN("Aston Martin"),
    AUDI("Audi"),
    BENTLEY("Bentley"),
    BMW("BMW"),
    BUGATTI("Bugatti"),
    CADILLAC("Cadillac"),
    CHEVROLET("Chevrolet"),
    CHRYSLER("Chrysler"),
    CITROEN("Citroen"),
    DODGE("Dodge"),
    FERRARI("Ferrari"),
    FIAT("Fiat"),
    FORD("Ford"),
    HONDA("Honda"),
    HYUNDAI("Hyundai"),
    INFINITI("Infiniti"),
    JAGUAR("Jaguar"),
    JEEP("Jeep"),
    KIA("Kia"),
    KOENIGSEGG("Koenigsegg"),
    LAMBORGHINI("Lamborghini"),
    LAND_ROVER("Land Rover"),
    LEXUS("Lexus"),
    MASERATI("Maserati"),
    MAZDA("Mazda"),
    MERCEDES_BENZ("Mercedes-Benz"),
    MITSUBISHI("Mitsubishi"),
    NISSAN("Nissan"),
    PEUGEOT("Peugeot"),
    PORSCHE("Porsche"),
    RENAULT("Renault"),
    SAAB("Saab"),
    SUBARU("Subaru"),
    SUZUKI("Suzuki"),
    ROLLS_ROYCE("Rolls Royce"),
    TATA_MOTORS("Tata Motors"),
    TOYOTA("Toyota"),
    VOLKSWAGEN("Volkswagen"),
    VOLVO("Volvo");

    /** Cached Cars in immutable list. */
    private static final List<Car> cachedCarsList = List.of(Car.values());

    /** Cached Cars in EnumSet. */
    private static final EnumSet<Car> cachedCarsEnumSet = EnumSet.allOf(Car.class);

    /** Cached Cars in original array form. */
    private static final Car[] cachedCars = Car.values();

    private String carName;

    Car(final String carName) {
      this.carName = carName;
    }

    public static List<Car> cachedListValues() {
      return cachedCarsList;
    }

    public static EnumSet<Car> cachedEnumSetValues() {
      return cachedCarsEnumSet;
    }

    public static Car[] cachedArrayValues() {
      return cachedCars;
    }
  }
}
