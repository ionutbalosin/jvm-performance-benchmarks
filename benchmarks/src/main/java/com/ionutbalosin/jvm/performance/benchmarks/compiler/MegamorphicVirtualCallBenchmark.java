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
import org.openjdk.jmh.annotations.CompilerControl;
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

/* References:
 * - https://shipilev.net/jvm/anatomy-quarks/16-megamorphic-virtual-calls
 */
//
// Note: A side effect of testing monomorphic calls is that you'll be testing inliner as well since
// methods can be "sharpened" after a speculative type check and then inlined.
// So if you want to keep inliner out of equation, make the target methods large and adjust
// time accordingly to only measure virtual call overhead.
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MegamorphicVirtualCallBenchmark {

  private CMath[] instances;
  private byte[] classIndex;

  @Param private Mode mode;

  @Param("120960")
  private int size;

  @Setup
  public void setup() {
    instances = new CMath[size];
    classIndex = new byte[size];

    switch (mode) {
      case MONOMORPHIC:
        for (int i = 0; i < size; i++) {
          instances[i] = new Alg1();
          setClassIndex(i, 1);
        }
        break;
      case BIMORPHIC:
        for (int i = 0; i < size; i += 2) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          setClassIndex(i, 2);
        }
        break;
      case MEGAMORPHIC_3:
        for (int i = 0; i < size; i += 3) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          setClassIndex(i, 3);
        }
        break;
      case MEGAMORPHIC_4:
        for (int i = 0; i < size; i += 4) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          setClassIndex(i, 4);
        }
        break;
      case MEGAMORPHIC_5:
        for (int i = 0; i < size; i += 5) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
          setClassIndex(i, 5);
        }
        break;
      case MEGAMORPHIC_6:
        for (int i = 0; i < size; i += 6) {
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
        for (int i = 0; i < size; i += 7) {
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
        for (int i = 0; i < size; i += 8) {
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
        throw new UnsupportedOperationException("Unsupported mode type " + mode);
    }
  }

  @Benchmark
  @OperationsPerInvocation(144000)
  public void test() {
    for (CMath instance : instances) {
      instance.compute();
    }
  }

  @Benchmark
  @OperationsPerInvocation(144000)
  public void test_switch_monomorphic() {
    byte[] classIndex = this.classIndex;
    CMath[] instances = this.instances;
    for (int i = 0; i < instances.length; i++) {
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

  @Benchmark
  @OperationsPerInvocation(144000)
  public void test_if_monomorphic() {
    CMath[] instances = this.instances;
    for (int i = 0; i < instances.length; i++) {
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

  public enum Mode {
    MONOMORPHIC,
    BIMORPHIC,
    MEGAMORPHIC_3,
    MEGAMORPHIC_4,
    MEGAMORPHIC_5,
    MEGAMORPHIC_6,
    MEGAMORPHIC_7,
    MEGAMORPHIC_8
  }

  abstract static class CMath {
    // All fields of this class should be on the same cache line.
    int c1, c2, c3, c4, c5, c6, c7, c8;

    @CompilerControl(CompilerControl.Mode.DONT_INLINE)
    public abstract int compute();
  }

  static class Alg1 extends CMath {
    public int compute() {
      return ++c1;
    }
  }

  static class Alg2 extends CMath {
    public int compute() {
      return ++c2;
    }
  }

  static class Alg3 extends CMath {
    public int compute() {
      return ++c3;
    }
  }

  static class Alg4 extends CMath {
    public int compute() {
      return ++c4;
    }
  }

  static class Alg5 extends CMath {
    public int compute() {
      return ++c5;
    }
  }

  static class Alg6 extends CMath {
    public int compute() {
      return ++c6;
    }
  }

  static class Alg7 extends CMath {
    public int compute() {
      return ++c7;
    }
  }

  static class Alg8 extends CMath {
    public int compute() {
      return ++c8;
    }
  }
}
