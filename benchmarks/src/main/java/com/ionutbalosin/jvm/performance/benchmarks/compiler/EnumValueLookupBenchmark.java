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

import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 *
 * This benchmark iterates through the enum values list and returns the enum constant corresponding to a (e.g., a String) value.
 * It emphasizes the cost of calling values() method on an Enum versus caching the values and using the cached version.
 * Note: the enum's method values() returns a new copy of an array representing its values every time it is called.
 *
 * This pattern is met in real business applications where, for example, the microservices RESTful APIs defined in OpenAPI/Swagger uses enums.
 * The input request parameters are deserialized and wrapped to enum values.
 *
 * References:
 * - https://dzone.com/articles/memory-hogging-enumvalues-method
 *
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class EnumValueLookupBenchmark {

  private Car[] enumValues = Car.cachedValues();
  private Random random = new Random(16384);
  private String lookUpValue;

  @Setup
  public void setup() {
    lookUpValue = enumValues[random.nextInt(enumValues.length)].value;
  }

  @Benchmark
  public Car cached_enum_values() {
    return Car.fromCachedValues(lookUpValue);
  }

  @Benchmark
  public Car enum_values() {
    return Car.fromValues(lookUpValue);
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

    private String value;

    Car(final String value) {
      this.value = value;
    }

    private static final Car[] cachedCars = Car.values();

    public static Car[] cachedValues() {
      return cachedCars;
    }

    public static Car fromValues(String value) {
      for (Car b : Car.values()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }

    public static Car fromCachedValues(String value) {
      for (Car b : Car.cachedValues()) {
        if (b.value.equals(value)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + value + "'");
    }
  }
}
