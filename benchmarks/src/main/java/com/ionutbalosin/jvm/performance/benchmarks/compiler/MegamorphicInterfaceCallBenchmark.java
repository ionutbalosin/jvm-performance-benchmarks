package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Group;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OperationsPerInvocation;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests how well the Compiler could optimize the monomorphic, bimorphic and megamorphic interface call-sites.
 * Benchmark use cases are similar to the ones from MegamorphicAbsClassCallBenchmark, hence no need to duplicate them anymore.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MegamorphicInterfaceCallBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*MegamorphicInterfaceCallBenchmark.*" -prof
  // perfasm:intelSyntax=true > MegamorphicInterfaceCallBenchmark_perfasm.out
  // java -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCI -XX:+UseJVMCICompiler -jar
  // benchmarks/target/benchmarks.jar ".*MegamorphicInterfaceCallBenchmark.*" -prof
  // perfasm:intelSyntax=true > MegamorphicInterfaceCallBenchmark_perfasm.out

  // NOTE:
  //    A side effect of testing monomorphic calls is that you'll be testing inliner as well since
  // methods can be "sharpened" after a speculative type check and then inlined.
  //    So if you want to keep inliner out of equation, make the target methods large and adjust
  // time accordingly to only measure virtual call overhead.

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public static int execute(IMath cmath, int i) {
    return cmath.compute(i);
  }

  @Benchmark
  @Group("monomorphic")
  @OperationsPerInvocation(1)
  public int monomorphic(MonomorphicState state) {
    return state.monomorphicCall();
  }

  @Benchmark
  @Group("bimorphic")
  @OperationsPerInvocation(2)
  public int bimorphic(BimorphicState state) {
    return state.bimorphicCall();
  }

  @Benchmark
  @Group("megamorphic_3")
  @OperationsPerInvocation(3)
  public int megamorphic_3(Megamorphic3State state) {
    return state.megamorphic3Call();
  }

  @Benchmark
  @Group("megamorphic_4")
  @OperationsPerInvocation(4)
  public int megamorphic_4(Megamorphic4State state) {
    return state.megamorphic4Call();
  }

  @Benchmark
  @Group("megamorphic_5")
  @OperationsPerInvocation(5)
  public int megamorphic_5(Megamorphic5State state) {
    return state.megamorphic5Call();
  }

  @Benchmark
  @Group("megamorphic_6")
  @OperationsPerInvocation(6)
  public int megamorphic_6(Megamorphic6State state) {
    return state.megamorphic6Call();
  }

  interface IMath {
    int compute(int i);
  }

  @State(Scope.Thread)
  public static class MonomorphicState {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();

    int monomorphicCall() {
      return execute(alg1, param);
    }
  }

  @State(Scope.Thread)
  public static class BimorphicState {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();
    IMath alg2 = new Alg2();

    int bimorphicCall() {
      return execute(alg1, param) + execute(alg2, param);
    }
  }

  @State(Scope.Thread)
  public static class Megamorphic3State {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();
    IMath alg2 = new Alg2();
    IMath alg3 = new Alg3();

    int megamorphic3Call() {
      return execute(alg1, param) + execute(alg2, param) + execute(alg3, param);
    }
  }

  @State(Scope.Thread)
  public static class Megamorphic4State {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();
    IMath alg2 = new Alg2();
    IMath alg3 = new Alg3();
    IMath alg4 = new Alg4();

    int megamorphic4Call() {
      return execute(alg1, param)
          + execute(alg2, param)
          + execute(alg3, param)
          + execute(alg4, param);
    }
  }

  @State(Scope.Thread)
  public static class Megamorphic5State {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();
    IMath alg2 = new Alg2();
    IMath alg3 = new Alg3();
    IMath alg4 = new Alg4();
    IMath alg5 = new Alg5();

    int megamorphic5Call() {
      return execute(alg1, param)
          + execute(alg2, param)
          + execute(alg3, param)
          + execute(alg4, param)
          + execute(alg5, param);
    }
  }

  @State(Scope.Thread)
  public static class Megamorphic6State {
    @Param({"3"})
    public static int param;

    IMath alg1 = new Alg1();
    IMath alg2 = new Alg2();
    IMath alg3 = new Alg3();
    IMath alg4 = new Alg4();
    IMath alg5 = new Alg5();
    IMath alg6 = new Alg6();

    int megamorphic6Call() {
      return execute(alg1, param)
          + execute(alg2, param)
          + execute(alg3, param)
          + execute(alg4, param)
          + execute(alg5, param)
          + execute(alg6, param);
    }
  }

  static class Alg1 implements IMath {
    public int compute(int i) {
      return i * 17;
    }
  }

  static class Alg2 implements IMath {
    public int compute(int i) {
      return i * 19;
    }
  }

  static class Alg3 implements IMath {
    public int compute(int i) {
      return i * 23;
    }
  }

  static class Alg4 implements IMath {
    public int compute(int i) {
      return i * 29;
    }
  }

  static class Alg5 implements IMath {
    public int compute(int i) {
      return i * 31;
    }
  }

  static class Alg6 implements IMath {
    public int compute(int i) {
      return i * 37;
    }
  }
}
