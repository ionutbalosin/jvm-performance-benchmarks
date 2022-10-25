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

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MegamorphicInterfaceCallBenchmark {

  private static final int SIZE = 7200;
  private I[] instances;
  private byte[] instanceIndex;

  @Param private TargetType targetType;

  // java -jar benchmarks/target/benchmarks.jar ".*MegamorphicInterfaceCallBenchmark.*"

  @Setup()
  public void setup() {
    instances = new I[SIZE];
    instanceIndex = new byte[SIZE];

    switch (targetType) {
      case MONOMORPHIC:
        for (int i = 0; i < SIZE; i += 1) {
          instances[i] = new C1();
          setInstanceIndex(i, 1);
        }
        break;
      case BIMORPHIC:
        for (int i = 0; i < SIZE; i += 2) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          setInstanceIndex(i, 2);
        }
        break;
      case MEGAMORPHIC_3:
        for (int i = 0; i < SIZE; i += 3) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          instances[i + 2] = new C3();
          setInstanceIndex(i, 3);
        }
        break;

      case MEGAMORPHIC_4:
        for (int i = 0; i < SIZE; i += 4) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          instances[i + 2] = new C3();
          instances[i + 3] = new C4();
          setInstanceIndex(i, 4);
        }
        break;
      case MEGAMORPHIC_5:
        for (int i = 0; i < SIZE; i += 5) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          instances[i + 2] = new C3();
          instances[i + 3] = new C4();
          instances[i + 4] = new C5();
          setInstanceIndex(i, 5);
        }
        break;
      case MEGAMORPHIC_6:
        for (int i = 0; i < SIZE; i += 6) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          instances[i + 2] = new C3();
          instances[i + 3] = new C4();
          instances[i + 4] = new C5();
          instances[i + 5] = new C6();
          setInstanceIndex(i, 6);
        }
        break;
      case MEGAMORPHIC_6_DOMINANT_TARGET:
        int i = 0;
        // Set a small percentage of all calls (e.g., ~ 10%) as megamorphic
        for (; i < SIZE * 0.1; i += 6) {
          instances[i] = new C1();
          instances[i + 1] = new C2();
          instances[i + 2] = new C3();
          instances[i + 3] = new C4();
          instances[i + 4] = new C5();
          instances[i + 5] = new C6();
          setInstanceIndex(i, 6);
        }
        // Set a dominant target (e.g., ~ 90%)
        for (; i < SIZE; i++) {
          instances[i] = new C1();
          setInstanceIndex(i, 1);
        }
        break;
      default:
        throw new UnsupportedOperationException("Unsupported type " + targetType);
    }
  }
  // java -jar benchmarks/target/benchmarks.jar ".*InterfaceCallBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void virtual_calls_chain() {
    I[] instances = this.instances;
    for (I instance : instances) {
      instance.foo();
    }
  }

  // Manually split the call site to receive only one target -> monomorphic
  // Note: this is a trick trying to bypass some specific JVM limitations
  @Benchmark
  @OperationsPerInvocation(SIZE)
  public void devirtualize_to_monomorphic() {
    byte[] instanceIndex = this.instanceIndex;
    I[] instances = this.instances;
    for (int i = 0; i < SIZE; i++) {
      I instance = instances[i];
      switch (instanceIndex[i]) {
        case 0:
          instance.foo();
          break;
        case 1:
          instance.foo();
          break;
        case 2:
          instance.foo();
          break;
        case 3:
          instance.foo();
          break;
        case 4:
          instance.foo();
          break;
        case 5:
          instance.foo();
          break;
        default:
          throw new RuntimeException("Should not reach here.");
      }
    }
  }

  private void setInstanceIndex(int offset, int step) {
    for (int i = 0; i < step; i++) {
      instanceIndex[offset + i] = (byte) (i);
    }
  }

  public enum TargetType {
    MONOMORPHIC,
    BIMORPHIC,
    MEGAMORPHIC_3,
    MEGAMORPHIC_4,
    MEGAMORPHIC_5,
    MEGAMORPHIC_6,
    MEGAMORPHIC_6_DOMINANT_TARGET
  }

  private static class Wrapper {
    public int x = 0;
  }

  interface I1 {
    Wrapper wrapper = new Wrapper();

    private void baz_1() {
      wrapper.x++;
    }

    default void foo_1() {
      baz_1();
    }
  }

  interface I2 extends I1 {
    private void baz_2() {
      foo_1();
    }

    default void foo_2() {
      baz_2();
    }
  }

  interface I3 extends I2 {
    private void baz_3() {
      foo_2();
    }

    default void foo_3() {
      baz_3();
    }
  }

  interface I4 extends I3 {
    private void baz_4() {
      foo_3();
    }

    default void foo_4() {
      baz_4();
    }
  }

  interface I5 extends I4 {
    private void baz_5() {
      foo_4();
    }

    default void foo_5() {
      baz_5();
    }
  }

  interface I extends I5 {
    private void baz() {
      foo_5();
    }

    default void foo() {
      baz();
    }
  }

  private static class C1 implements I {}

  private static class C2 implements I {}

  private static class C3 implements I {}

  private static class C4 implements I {}

  private static class C5 implements I {}

  private static class C6 implements I {}
}
