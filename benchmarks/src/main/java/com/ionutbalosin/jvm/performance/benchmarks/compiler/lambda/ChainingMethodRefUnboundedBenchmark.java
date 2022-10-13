package com.ionutbalosin.jvm.performance.benchmarks.compiler.lambda;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
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
 * Tests unbounded method reference chaining optimizations (capture + invocation) for different depth levels.
 * Benchmark use cases are similar to the ones from ChainingLambdaBenchmark, however, instead of lambdas, there are unbounded method references.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ChainingMethodRefUnboundedBenchmark {

  @Param({"42"})
  public static int value;

  // java -jar benchmarks/target/benchmarks.jar ".*ChainingMethodRefUnboundedBenchmark.*"

  private static TailLevel l24() {
    return () -> value;
  }

  private static Level23 l23() {
    return ChainingMethodRefUnboundedBenchmark::l24;
  }

  private static Level22 l22() {
    return ChainingMethodRefUnboundedBenchmark::l23;
  }

  private static Level21 l21() {
    return ChainingMethodRefUnboundedBenchmark::l22;
  }

  private static Level20 l20() {
    return ChainingMethodRefUnboundedBenchmark::l21;
  }

  private static Level19 l19() {
    return ChainingMethodRefUnboundedBenchmark::l20;
  }

  private static Level18 l18() {
    return ChainingMethodRefUnboundedBenchmark::l19;
  }

  private static Level17 l17() {
    return ChainingMethodRefUnboundedBenchmark::l18;
  }

  private static Level16 l16() {
    return ChainingMethodRefUnboundedBenchmark::l17;
  }

  private static Level15 l15() {
    return ChainingMethodRefUnboundedBenchmark::l16;
  }

  private static Level14 l14() {
    return ChainingMethodRefUnboundedBenchmark::l15;
  }

  private static Level13 l13() {
    return ChainingMethodRefUnboundedBenchmark::l14;
  }

  private static Level12 l12() {
    return ChainingMethodRefUnboundedBenchmark::l13;
  }

  private static Level11 l11() {
    return ChainingMethodRefUnboundedBenchmark::l12;
  }

  private static Level10 l10() {
    return ChainingMethodRefUnboundedBenchmark::l11;
  }

  private static Level9 l9() {
    return ChainingMethodRefUnboundedBenchmark::l10;
  }

  private static Level8 l8() {
    return ChainingMethodRefUnboundedBenchmark::l9;
  }

  private static Level7 l7() {
    return ChainingMethodRefUnboundedBenchmark::l8;
  }

  private static Level6 l6() {
    return ChainingMethodRefUnboundedBenchmark::l7;
  }

  private static Level5 l5() {
    return ChainingMethodRefUnboundedBenchmark::l6;
  }

  private static Level4 l4() {
    return ChainingMethodRefUnboundedBenchmark::l5;
  }

  private static Level3 l3() {
    return ChainingMethodRefUnboundedBenchmark::l4;
  }

  private static Level2 l2() {
    return ChainingMethodRefUnboundedBenchmark::l3;
  }

  private static Level1 l1() {
    return ChainingMethodRefUnboundedBenchmark::l2;
  }

  private static Level0 l0() {
    return ChainingMethodRefUnboundedBenchmark::l1;
  }

  @Benchmark
  public int baseline() {
    return value;
  }

  @Benchmark
  public int depth_1() {
    return l23().next().get();
  }

  @Benchmark
  public int depth_2() {
    return l22().next().next().get();
  }

  @Benchmark
  public int depth_3() {
    return l21().next().next().next().get();
  }

  @Benchmark
  public int depth_4() {
    return l20().next().next().next().next().get();
  }

  @Benchmark
  public int depth_5() {
    return l19().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_6() {
    return l18().next().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_8() {
    return l16().next().next().next().next().next().next().next().next().get();
  }

  @Benchmark
  public int depth_12() {
    return l12()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }

  @Benchmark
  public int depth_16() {
    return l8().next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }

  @Benchmark
  public int depth_24() {
    return l0().next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .next()
        .get();
  }
}
