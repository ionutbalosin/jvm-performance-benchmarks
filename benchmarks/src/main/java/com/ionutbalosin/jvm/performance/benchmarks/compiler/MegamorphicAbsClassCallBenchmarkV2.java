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

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MegamorphicAbsClassCallBenchmarkV2 {
  private CMath[] instances;

  @Param private Mode mode;

  @Param("144000")
  private int size;

  @Setup
  public void setup() {
    instances = new CMath[size];

    switch (mode) {
      case MONOMORPHIC:
        for (int i = 0; i < size; i++) {
          instances[i] = new Alg1();
        }
        break;
      case BIMORPHIC:
        for (int i = 0; i < size; i += 2) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
        }
        break;
      case MEGAMORPHIC_3:
        for (int i = 0; i < size; i += 3) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
        }
        break;
      case MEGAMORPHIC_4:
        for (int i = 0; i < size; i += 4) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
        }
        break;
      case MEGAMORPHIC_5:
        for (int i = 0; i < size; i += 5) {
          instances[i] = new Alg1();
          instances[i + 1] = new Alg2();
          instances[i + 2] = new Alg3();
          instances[i + 3] = new Alg4();
          instances[i + 4] = new Alg5();
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
        }
        break;
      default:
        throw new UnsupportedOperationException("Unsupported mode type " + mode);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*MegamorphicAbsClassCallBenchmarkV2.*" -prof
  // perfasm:intelSyntax=true > MegamorphicAbsClassCallBenchmarkV2_asm.out
  // java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -jar
  // benchmarks/target/benchmarks.jar ".*MegamorphicAbsClassCallBenchmarkV2.*" -prof
  // perfasm:intelSyntax=true > MegamorphicAbsClassCallBenchmarkV2_asm.out

  @Benchmark
  @OperationsPerInvocation(144000)
  public void test() {
    for (CMath instance : instances) {
      instance.compute();
    }
  }

  public enum Mode {
    MONOMORPHIC,
    BIMORPHIC,
    MEGAMORPHIC_3,
    MEGAMORPHIC_4,
    MEGAMORPHIC_5,
    MEGAMORPHIC_6
  }

  abstract static class CMath {
    int c1, c2, c3, c4, c5, c6;

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
}
