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

import java.util.Random;
import java.util.concurrent.TimeUnit;

import org.openjdk.jmh.annotations.*;

/*
 * Test the performance of:
 * - instanceof checks
 * - switch expressions using when, yield and lambda syntax.
 *
 * References:
 * - code examples by Remi Forax
 * - https://github.com/forax/switch-perf/blob/master/src/main/java/com/github/forax/switchperf/Bench.java
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class TypeSwitchBenchmark {

  private final int SIZE = 100_000;
  private I[] interfaceArray;
  private AsIs[] asIsArray;

  @Setup
  public void init() {
    interfaceArray = new I[SIZE];
    asIsArray = new AsIs[SIZE];
    Random random = new Random(16384);
    for (int i = 0; i < SIZE; i++) {
      interfaceArray[i] = switch (random.nextInt(0, Integer.MAX_VALUE) % 8) {
        case 0 -> new AsIs(i);
        case 1 -> new LongToInt(i);
        case 2 -> new ShortToInt((short) i);
        case 3 -> new ByteToInt((byte) i);
        case 4 -> new CharToInt((char) i);
        case 5 -> new DoubleToInt(i);
        case 6 -> new FloatToInt(i);
        case 7 -> new StringLength("" + i);
        default -> throw new AssertionError();
      };

      asIsArray[i] = new AsIs(i);
    }
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int if_instanceof_interface_array() {
    var sum = 0;
    for (var element : interfaceArray) {
      sum += if_instanceof(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int if_instanceof_concrete_array() {
    var sum = 0;
    for (var element : asIsArray) {
      sum += if_instanceof(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_interface_array() {
    var sum = 0;
    for (var element : interfaceArray) {
      sum += switchMethod(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_concrete_array() {
    var sum = 0;
    for (var element : asIsArray) {
      sum += switchMethod(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_if_interface_array() {
    var sum = 0;
    for (var element : interfaceArray) {
      sum += switchIfMethod(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_when_interface_array() {
    var sum = 0;
    for (var element : interfaceArray) {
      sum += switchWhenMethod(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_if_concrete_array() {
    var sum = 0;
    for (var element : asIsArray) {
      sum += switchIfMethod(element);
    }
    return sum;
  }

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public int switch_when_concrete_array() {
    var sum = 0;
    for (var element : asIsArray) {
      sum += switchWhenMethod(element);
    }
    return sum;
  }

  private sealed interface I {}

  record AsIs(int value) implements I {}

  record LongToInt(long value) implements I {}

  record ShortToInt(short value) implements I {}

  record ByteToInt(byte value) implements I {}

  record CharToInt(char value) implements I {}

  record DoubleToInt(double value) implements I {}

  record FloatToInt(float value) implements I {}

  record StringLength(String value) implements I {}

  static int switchMethod(I i) {
    return switch (i) {
      case AsIs a -> a.value;
      case LongToInt b -> (int) b.value;
      case ShortToInt b -> b.value;
      case ByteToInt b -> b.value;
      case CharToInt b -> b.value;
      case DoubleToInt b -> (int) b.value;
      case FloatToInt b -> (int) b.value;
      case StringLength c -> c.value.length();
    };
  }

  static int switchIfMethod(I i) {
    return switch (i) {
      case AsIs a -> {
        if ((a.value & 1) == 0) {
          yield 2 * a.value;
        }
        yield a.value;
      }
      case LongToInt b -> {
        if ((b.value & 1) == 0) {
          yield 2 * (int) b.value;
        }
        yield (int) b.value;
      }
      case ShortToInt b -> {
        if ((b.value & 1) == 0) {
          yield 2 * b.value;
        }
        yield b.value;
      }
      case ByteToInt b -> {
        if ((b.value & 1) == 0) {
          yield 2 * b.value;
        }
        yield b.value;
      }
      case CharToInt b -> {
        if ((b.value & 1) == 0) {
          yield 2 * b.value;
        }
        yield b.value;
      }
      case DoubleToInt b -> {
        if (((int) b.value & 1) == 0) {
          yield 2 * (int) b.value;
        }
        yield (int) b.value;
      }
      case FloatToInt b -> {
        if (((int) b.value & 1) == 0) {
          yield 2 * (int) b.value;
        }
        yield (int) b.value;
      }
      case StringLength c -> {
        if ((c.value.length() & 1) == 0) {
          yield 2 * c.value.length();
        }
        yield c.value.length();
      }
    };
  }

  static int switchWhenMethod(I i) {
    return switch (i) {
      case AsIs a when (a.value & 1) == 0 -> 2 * a.value;
      case AsIs a -> a.value;
      case LongToInt b when (b.value & 1) == 0 -> 2 * (int) b.value;
      case LongToInt b -> (int) b.value;
      case ShortToInt b when (b.value & 1) == 0 -> 2 * b.value;
      case ShortToInt b -> b.value;
      case ByteToInt b when (b.value & 1) == 0 -> 2 * b.value;
      case ByteToInt b -> b.value;
      case CharToInt b when (b.value & 1) == 0 -> 2 * b.value;
      case CharToInt b -> b.value;
      case DoubleToInt b when (((int) b.value & 1) == 0) -> 2 * (int) b.value;
      case DoubleToInt b -> (int) b.value;
      case FloatToInt b when (((int) b.value & 1) == 0) -> 2 * (int) b.value;
      case FloatToInt b -> (int) b.value;
      case StringLength c when (c.value.length() & 1) == 0 -> 2 * c.value.length();
      case StringLength c -> c.value.length();
    };
  }

  static int if_instanceof(I i) {
    if (i instanceof AsIs) {
      return ((AsIs) i).value;
    } else if (i instanceof LongToInt) {
      return (int) ((LongToInt) i).value;
    } else if (i instanceof ShortToInt) {
      return ((ShortToInt) i).value;
    } else if (i instanceof ByteToInt) {
      return ((ByteToInt) i).value;
    } else if (i instanceof CharToInt) {
      return ((CharToInt) i).value;
    } else if (i instanceof DoubleToInt) {
      return (int) ((DoubleToInt) i).value;
    } else if (i instanceof FloatToInt) {
      return (int) ((FloatToInt) i).value;
    } else if (i instanceof StringLength) {
      return ((StringLength) i).value.length();
    } else {
      throw new AssertionError();
    }
  }
}