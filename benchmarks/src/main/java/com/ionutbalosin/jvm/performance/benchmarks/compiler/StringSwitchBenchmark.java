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
 * Test the performance of String matching using different approaches:
 * - Switch statements
 * - Switch expressions
 * - If-else statements
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class StringSwitchBenchmark {

  // $ java -jar */*/benchmarks.jar ".*StringSwitchBenchmark.*"

  private final int SIZE = 1024;
  private final String[] VEHICLES =
      new String[] {
        "MOPED",
        "BICYCLE",
        "ELECTRIC_SCOOTER",
        "MOTORCYCLE",
        "CAR",
        "SUV",
        "VAN",
        "MOTOR_HOME",
        "TRUCK",
        "BUS",
        "TRACTOR",
        "MONORAIL",
        "TRAIN",
        "JET_SKI",
        "SKATEBOARD",
        "HOVERBOARD",
        "BOAT",
        "CATAMARAN",
        "SUBMARINE",
        "HOT_AIR_BALLOON",
        "AIRPLANE",
        "HELICOPTER",
        "SPACE_SHUTTLE",
        "ROCKET"
      };

  @Param({"3", "6", "12", "24"})
  private int branches;

  private String[] vehicles;

  @Setup()
  public void setup() {
    vehicles = new String[SIZE];

    for (int i = 0; i < SIZE; i += 1) {
      vehicles[i] = VEHICLES[i % branches];
    }
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_statements() {
    int sum = 0;
    for (String vehicle : vehicles) {
      sum += switchStatements(vehicle);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_expressions() {
    int sum = 0;
    for (String vehicle : vehicles) {
      sum += switchExpressions(vehicle);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int chained_ifs() {
    int sum = 0;
    for (String vehicle : vehicles) {
      sum += chainedIfs(vehicle);
    }
    return sum;
  }

  private int switchStatements(String vehicle) {
    int result = 0;

    switch (vehicle) {
      case "MOPED":
        result = 1;
        break;
      case "BICYCLE":
        result = 2;
        break;
      case "ELECTRIC_SCOOTER":
        result = 3;
        break;
      case "MOTORCYCLE":
        result = 4;
        break;
      case "CAR":
        result = 5;
        break;
      case "SUV":
        result = 6;
        break;
      case "VAN":
        result = 7;
        break;
      case "MOTOR_HOME":
        result = 8;
        break;
      case "TRUCK":
        result = 9;
        break;
      case "BUS":
        result = 10;
        break;
      case "TRACTOR":
        result = 11;
        break;
      case "MONORAIL":
        result = 12;
        break;
      case "TRAIN":
        result = 13;
        break;
      case "JET_SKI":
        result = 14;
        break;
      case "SKATEBOARD":
        result = 15;
        break;
      case "HOVERBOARD":
        result = 16;
        break;
      case "BOAT":
        result = 17;
        break;
      case "CATAMARAN":
        result = 18;
        break;
      case "SUBMARINE":
        result = 19;
        break;
      case "HOT_AIR_BALLOON":
        result = 20;
        break;
      case "AIRPLANE":
        result = 21;
        break;
      case "HELICOPTER":
        result = 22;
        break;
      case "SPACE_SHUTTLE":
        result = 23;
        break;
      case "ROCKET":
        result = 24;
        break;
    }

    return result;
  }

  private int switchExpressions(String vehicle) {
    return switch (vehicle) {
      case "MOPED" -> 1;
      case "BICYCLE" -> 2;
      case "ELECTRIC_SCOOTER" -> 3;
      case "MOTORCYCLE" -> 4;
      case "CAR" -> 5;
      case "SUV" -> 6;
      case "VAN" -> 7;
      case "MOTOR_HOME" -> 8;
      case "TRUCK" -> 9;
      case "BUS" -> 10;
      case "TRACTOR" -> 11;
      case "MONORAIL" -> 12;
      case "TRAIN" -> 13;
      case "JET_SKI" -> 14;
      case "SKATEBOARD" -> 15;
      case "HOVERBOARD" -> 16;
      case "BOAT" -> 17;
      case "CATAMARAN" -> 18;
      case "SUBMARINE" -> 19;
      case "HOT_AIR_BALLOON" -> 20;
      case "AIRPLANE" -> 21;
      case "HELICOPTER" -> 22;
      case "SPACE_SHUTTLE" -> 23;
      case "ROCKET" -> 24;
      default -> 0;
    };
  }

  private int chainedIfs(String vehicle) {
    int result = 0;

    if ("MOPED".equals(vehicle)) {
      return 1;
    } else if ("BICYCLE".equals(vehicle)) {
      return 2;
    } else if ("ELECTRIC_SCOOTER".equals(vehicle)) {
      return 3;
    } else if ("MOTORCYCLE".equals(vehicle)) {
      return 4;
    } else if ("CAR".equals(vehicle)) {
      return 5;
    } else if ("SUV".equals(vehicle)) {
      return 6;
    } else if ("VAN".equals(vehicle)) {
      return 7;
    } else if ("MOTOR_HOME".equals(vehicle)) {
      return 8;
    } else if ("TRUCK".equals(vehicle)) {
      return 9;
    } else if ("BUS".equals(vehicle)) {
      return 10;
    } else if ("TRACTOR".equals(vehicle)) {
      return 11;
    } else if ("MONORAIL".equals(vehicle)) {
      return 12;
    } else if ("TRAIN".equals(vehicle)) {
      return 13;
    } else if ("JET_SKI".equals(vehicle)) {
      return 14;
    } else if ("SKATEBOARD".equals(vehicle)) {
      return 15;
    } else if ("HOVERBOARD".equals(vehicle)) {
      return 16;
    } else if ("BOAT".equals(vehicle)) {
      return 17;
    } else if ("CATAMARAN".equals(vehicle)) {
      return 18;
    } else if ("SUBMARINE".equals(vehicle)) {
      return 19;
    } else if ("HOT_AIR_BALLOON".equals(vehicle)) {
      return 20;
    } else if ("AIRPLANE".equals(vehicle)) {
      return 21;
    } else if ("HELICOPTER".equals(vehicle)) {
      return 22;
    } else if ("SPACE_SHUTTLE".equals(vehicle)) {
      return 23;
    } else if ("ROCKET".equals(vehicle)) {
      return 24;
    }

    return result;
  }
}
