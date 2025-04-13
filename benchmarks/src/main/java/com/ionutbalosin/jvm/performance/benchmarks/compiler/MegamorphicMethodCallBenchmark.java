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
 * JVM collects receiver-type statistics per call site during the execution of profiled code (in the interpreter or C1 JIT).
 * These statistics are further used in the optimizing compiler (e.g., C2 JIT).
 *
 * If, for example, one call site "class.method()" has received only Type1, and another call site "class.method()"
 * has received only Type2, the compiler may benefit from splitting the code into multiple call sites.
 * This will split the type profile, so that each call site can be optimized individually (as monomorphic calls).
 *
 * Note: HotSpot JVM can inline up to two different targets of a virtual call, for more targets there is a vtable/itable call.
 *
 * A side effect of testing monomorphic calls is testing the inliner as well, since methods can be "sharpened" after
 * a speculative type check and then inlined. To keep the inliner out of equation, the target method should be
 * large enough to avoid inlining and only adjust the time to measure the virtual call overhead.
 *
 * References:
 * - https://shipilev.net/blog/2015/black-magic-method-dispatch
 * - https://shipilev.net/jvm/anatomy-quarks/16-megamorphic-virtual-calls
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MegamorphicMethodCallBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MegamorphicMethodCallBenchmark.*"

  private final int SIZE = 40320;
  private CMath[] instances;
  private byte[] classIndex;

  @Param private TargetType targetType;

  @Setup
  public void setup() {
    instances = new CMath[SIZE];
    classIndex = new byte[SIZE];

    switch (targetType) {
      case MONOMORPHIC:
        for (int i = 0; i < SIZE; i++) {
          instances[i] = new Alg1();
          setClassIndex(i, 1);
        }
        break;
      case BIMORPHIC:
        for (int i = 0; i < SIZE; i += 2) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          setClassIndex(i, 2);
        }
        break;
      case MEGAMORPHIC_3:
        for (int i = 0; i < SIZE; i += 3) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          setClassIndex(i, 3);
        }
        break;
      case MEGAMORPHIC_4:
        for (int i = 0; i < SIZE; i += 4) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          setClassIndex(i, 4);
        }
        break;
      case MEGAMORPHIC_5:
        for (int i = 0; i < SIZE; i += 5) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
          setClassIndex(i, 5);
        }
        break;
      case MEGAMORPHIC_6:
        for (int i = 0; i < SIZE; i += 6) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
          instances[i + 5] = new Alg6();
          setClassIndex(i, 6);
        }
        break;
      case MEGAMORPHIC_7:
        for (int i = 0; i < SIZE; i += 7) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
          instances[i + 5] = new Alg6();
          instances[i + 6] = new Alg7();
          setClassIndex(i, 7);
        }
        break;
      case MEGAMORPHIC_8:
        for (int i = 0; i < SIZE; i += 8) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
          instances[i + 5] = new Alg6();
          instances[i + 6] = new Alg7();
          instances[i + 7] = new Alg8();
          setClassIndex(i, 8);
        }
        break;
      default:
        throw new UnsupportedOperationException("Unsupported mode type " + targetType);
    }
  }

  // Call site will receive all possible targets -> megamorphic
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void virtual_call() {
    CMath[] instances = this.instances;
    for (CMath instance : instances) {
      instance.compute();
    }
  }

  // Manually split the call site to receive only one target -> monomorphic
  // Note: this is a trick trying to bypass some specific JVM limitations
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void devirtualize_to_monomorphic() {
    byte[] classIndex = this.classIndex;
    CMath[] instances = this.instances;
    for (int i = 0; i < SIZE; i++) {
      CMath instance = instances[i];
      switch (classIndex[i]) {
        case 0:
          instance.compute();
          break;
        case 1:
          instance.compute();
          break;
        case 2:
          instance.compute();
          break;
        case 3:
          instance.compute();
          break;
        case 4:
          instance.compute();
          break;
        case 5:
          instance.compute();
          break;
        case 6:
          instance.compute();
          break;
        case 7:
          instance.compute();
          break;
        default:
          throw new RuntimeException("Should not reach here.");
      }
    }
  }

  // Manually split the call site to receive only one target -> monomorphic
  // Note: this is a trick trying to bypass some specific JVM limitations
  // Note: disabled since it is very similar to devirtualize_to_monomorphic()
  // @Benchmark
  // @OperationsPerInvocation(SIZE)
  public void devirtualize_if_monomorphic() {
    CMath[] instances = this.instances;
    for (int i = 0; i < SIZE; i++) {
      CMath instance = instances[i];
      if (instance instanceof Alg1) {
        instance.compute();
      } else if (instance instanceof Alg2) {
        instance.compute();
      } else if (instance instanceof Alg3) {
        instance.compute();
      } else if (instance instanceof Alg4) {
        instance.compute();
      } else if (instance instanceof Alg5) {
        instance.compute();
      } else if (instance instanceof Alg6) {
        instance.compute();
      } else if (instance instanceof Alg7) {
        instance.compute();
      } else if (instance instanceof Alg8) {
        instance.compute();
      } else {
        throw new RuntimeException("Should not reach here.");
      }
    }
  }

  private void setClassIndex(int offset, int step) {
    for (int i = 0; i < step; i++) {
      classIndex[offset + i] = (byte) (i);
    }
  }

  public enum TargetType {
    MONOMORPHIC,
    BIMORPHIC,
    MEGAMORPHIC_3,
    MEGAMORPHIC_4,
    MEGAMORPHIC_5,
    MEGAMORPHIC_6,
    MEGAMORPHIC_7,
    MEGAMORPHIC_8
  }

  private abstract static class CMath {
    // All fields of this class should be on the same cache line.
    int c1, c2, c3, c4, c5, c6, c7, c8;

    public abstract int compute();
  }

  private static class Alg1 extends CMath {
    public int compute() {
      return ++c1;
    }
  }

  private static class Alg2 extends CMath {
    public int compute() {
      return ++c2;
    }
  }

  private static class Alg3 extends CMath {
    public int compute() {
      return ++c3;
    }
  }

  private static class Alg4 extends CMath {
    public int compute() {
      return ++c4;
    }
  }

  private static class Alg5 extends CMath {
    public int compute() {
      return ++c5;
    }
  }

  private static class Alg6 extends CMath {
    public int compute() {
      return ++c6;
    }
  }

  private static class Alg7 extends CMath {
    public int compute() {
      return ++c7;
    }
  }

  private static class Alg8 extends CMath {
    public int compute() {
      return ++c8;
    }
  }
}
