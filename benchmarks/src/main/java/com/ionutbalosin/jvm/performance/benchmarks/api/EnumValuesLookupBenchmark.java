/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package com.ionutbalosin.jvm.performance.benchmarks.api;

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
 * This benchmark iterates through the enum values list and returns the enum constant matching a lookup value.
 * It emphasizes the cost of calling the values() method on an Enum versus caching the values and using the cached version.
 * Note: the enum's method values() returns a new copy of an array representing its values every time it is called.
 *
 * This pattern is often seen in real business applications where, for example, the microservices RESTful APIs defined in OpenAPI/Swagger use enums.
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
public class EnumValuesLookupBenchmark {

  // $ java -jar */*/benchmarks.jar ".*EnumValuesLookupBenchmark.*"

  private final Random random = new Random(16384);

  private Car[] enumValues = Car.cachedValues();
  private String lookUpValue;

  @Setup
  public void setup() {
    lookUpValue = enumValues[random.nextInt(enumValues.length)].carValue;
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

    private String carValue;

    Car(final String carValue) {
      this.carValue = carValue;
    }

    private static final Car[] cachedCars = Car.values();

    public static Car[] cachedValues() {
      return cachedCars;
    }

    public static Car fromValues(String targetValue) {
      for (Car b : Car.values()) {
        if (b.carValue.equals(targetValue)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + targetValue + "'");
    }

    public static Car fromCachedValues(String targetValue) {
      for (Car b : Car.cachedValues()) {
        if (b.carValue.equals(targetValue)) {
          return b;
        }
      }
      throw new IllegalArgumentException("Unexpected value '" + targetValue + "'");
    }
  }
}
