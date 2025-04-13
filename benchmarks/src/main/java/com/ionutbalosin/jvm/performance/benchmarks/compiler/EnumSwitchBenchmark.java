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
package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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

/*
 * Test the performance of enum matching using different approaches:
 * - Switch statements
 * - Switch expressions
 * - If-else statements
 *
 * Switch-case statements are internally implemented using either the tableswitch or lookupswitch bytecode instructions:
 * - The tableswitch instruction is employed for a narrow, contiguous range of values.
 * It involves branching with a jump over a jump-table defined by sorted, continuous integer values.
 * - The lookupswitch instruction is employed for a wider range of values. It facilitates branching based on a map of key-offset pairs.
 * While not as efficient as the tableswitch instruction, it enables branching on individual values, rather than continuous ranges.
 *
 * The choice between emitting a tableswitch or a lookupswitch instruction depends on the trade-off between time and space complexity costs for each instruction.
 * The compiler will opt for the tableswitch instruction if the associated space and time costs are lower or equal to those of the lookupswitch.
 * The overall space/time cost for a specific instruction is calculated using the formula: spaceCost + timeCost * 3.
 *
 *  +---------------+---------------------+-------------+
 *  |  Opcode       |  Space cost         |  Time cost  |
 *  +---------------+---------------------+-------------+
 *  |  tableswitch  |  4 + (hi - lo + 1)  |  3          |
 *  +---------------+---------------------+-------------+
 *  |  lookupswitch |  3 + 2 * nlabels    |  nlabels    |
 *  +---------------+---------------------+-------------+
 * where:
 * - hi and lo parameters are the highest and lowest value switch keys used in the switch statement
 * - nlabels is the number of switch keys
 *
 *  References:
 * - https://github.com/openjdk/jdk/blob/master/src/jdk.compiler/share/classes/com/sun/tools/javac/jvm/Gen.java#L1347
 * - https://github.com/ndru83/desugaring-java/blob/master/switch-case-internals.adoc
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class EnumSwitchBenchmark {

  // $ java -jar */*/benchmarks.jar ".*EnumSwitchBenchmark.*"

  private final int SIZE = 1024;
  private final Vehicle[] CACHED_VEHICLES = Vehicle.values();

  @Param({"3", "6", "12", "24"})
  private int branches;

  private Vehicle[] vehicles;

  @Setup()
  public void setup() {
    vehicles = new Vehicle[SIZE];

    for (int i = 0; i < SIZE; i += 1) {
      vehicles[i] = CACHED_VEHICLES[i % branches];
    }
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_statements() {
    int sum = 0;
    for (Vehicle vehicle : vehicles) {
      sum += switchStatements(vehicle);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_expressions() {
    int sum = 0;
    for (Vehicle vehicle : vehicles) {
      sum += switchExpressions(vehicle);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int chained_ifs() {
    int sum = 0;
    for (Vehicle vehicle : vehicles) {
      sum += chainedIfs(vehicle);
    }
    return sum;
  }

  private int switchStatements(Vehicle vehicle) {
    int result = 0;

    switch (vehicle) {
      case MOPED:
        result = 1;
        break;
      case BICYCLE:
        result = 2;
        break;
      case ELECTRIC_SCOOTER:
        result = 3;
        break;
      case MOTORCYCLE:
        result = 4;
        break;
      case CAR:
        result = 5;
        break;
      case SUV:
        result = 6;
        break;
      case VAN:
        result = 7;
        break;
      case MOTOR_HOME:
        result = 8;
        break;
      case TRUCK:
        result = 9;
        break;
      case BUS:
        result = 10;
        break;
      case TRACTOR:
        result = 11;
        break;
      case MONORAIL:
        result = 12;
        break;
      case TRAIN:
        result = 13;
        break;
      case JET_SKI:
        result = 14;
        break;
      case SKATEBOARD:
        result = 15;
        break;
      case HOVERBOARD:
        result = 16;
        break;
      case BOAT:
        result = 17;
        break;
      case CATAMARAN:
        result = 18;
        break;
      case SUBMARINE:
        result = 19;
        break;
      case HOT_AIR_BALLOON:
        result = 20;
        break;
      case AIRPLANE:
        result = 21;
        break;
      case HELICOPTER:
        result = 22;
        break;
      case SPACE_SHUTTLE:
        result = 23;
        break;
      case ROCKET:
        result = 24;
        break;
    }

    return result;
  }

  private int switchExpressions(Vehicle vehicle) {
    return switch (vehicle) {
      case MOPED -> 1;
      case BICYCLE -> 2;
      case ELECTRIC_SCOOTER -> 3;
      case MOTORCYCLE -> 4;
      case CAR -> 5;
      case SUV -> 6;
      case VAN -> 7;
      case MOTOR_HOME -> 8;
      case TRUCK -> 9;
      case BUS -> 10;
      case TRACTOR -> 11;
      case MONORAIL -> 12;
      case TRAIN -> 13;
      case JET_SKI -> 14;
      case SKATEBOARD -> 15;
      case HOVERBOARD -> 16;
      case BOAT -> 17;
      case CATAMARAN -> 18;
      case SUBMARINE -> 19;
      case HOT_AIR_BALLOON -> 20;
      case AIRPLANE -> 21;
      case HELICOPTER -> 22;
      case SPACE_SHUTTLE -> 23;
      case ROCKET -> 24;
    };
  }

  private int chainedIfs(Vehicle vehicle) {
    int result = 0;

    if (vehicle == Vehicle.MOPED) {
      result = 1;
    } else if (vehicle == Vehicle.BICYCLE) {
      result = 2;
    } else if (vehicle == Vehicle.ELECTRIC_SCOOTER) {
      result = 3;
    } else if (vehicle == Vehicle.MOTORCYCLE) {
      result = 4;
    } else if (vehicle == Vehicle.CAR) {
      result = 5;
    } else if (vehicle == Vehicle.SUV) {
      result = 6;
    } else if (vehicle == Vehicle.VAN) {
      result = 7;
    } else if (vehicle == Vehicle.MOTOR_HOME) {
      result = 8;
    } else if (vehicle == Vehicle.TRUCK) {
      result = 9;
    } else if (vehicle == Vehicle.BUS) {
      result = 10;
    } else if (vehicle == Vehicle.TRACTOR) {
      result = 11;
    } else if (vehicle == Vehicle.MONORAIL) {
      result = 12;
    } else if (vehicle == Vehicle.TRAIN) {
      result = 13;
    } else if (vehicle == Vehicle.JET_SKI) {
      result = 14;
    } else if (vehicle == Vehicle.SKATEBOARD) {
      result = 15;
    } else if (vehicle == Vehicle.HOVERBOARD) {
      result = 16;
    } else if (vehicle == Vehicle.BOAT) {
      result = 17;
    } else if (vehicle == Vehicle.CATAMARAN) {
      result = 18;
    } else if (vehicle == Vehicle.SUBMARINE) {
      result = 19;
    } else if (vehicle == Vehicle.HOT_AIR_BALLOON) {
      result = 20;
    } else if (vehicle == Vehicle.AIRPLANE) {
      result = 21;
    } else if (vehicle == Vehicle.HELICOPTER) {
      result = 22;
    } else if (vehicle == Vehicle.SPACE_SHUTTLE) {
      result = 23;
    } else if (vehicle == Vehicle.ROCKET) {
      result = 24;
    }

    return result;
  }

  public enum Vehicle {
    MOPED,
    BICYCLE,
    ELECTRIC_SCOOTER,
    MOTORCYCLE,
    CAR,
    SUV,
    VAN,
    MOTOR_HOME,
    TRUCK,
    BUS,
    TRACTOR,
    MONORAIL,
    TRAIN,
    JET_SKI,
    SKATEBOARD,
    HOVERBOARD,
    BOAT,
    CATAMARAN,
    SUBMARINE,
    HOT_AIR_BALLOON,
    AIRPLANE,
    HELICOPTER,
    SPACE_SHUTTLE,
    ROCKET
  }
}
