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
 * Tests lambdas chaining optimizations (capture + invocation) for different depth levels.
 */
// Pattern:
//
//    generic pattern
//    () -> () -> () -> ... -> () -> capturedValue
//
//    // depth_1
//    () ->  capturedValue
//
//    // depth_2
//    () -> () -> capturedValue
//
//    // depth_3
//    () -> () -> () -> capturedValue
//

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class ChainingLambdaBenchmark {

  @Param({"42"})
  public static int value;

  // java -jar benchmarks/target/benchmarks.jar ".*ChainingLambdaBenchmark.*"

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

  private TailLevel l24() {
    return () -> value;
  }

  private Level23 l23() {
    return () -> l24();
  }

  private Level22 l22() {
    return () -> l23();
  }

  private Level21 l21() {
    return () -> l22();
  }

  private Level20 l20() {
    return () -> l21();
  }

  private Level19 l19() {
    return () -> l20();
  }

  private Level18 l18() {
    return () -> l19();
  }

  private Level17 l17() {
    return () -> l18();
  }

  private Level16 l16() {
    return () -> l17();
  }

  private Level15 l15() {
    return () -> l16();
  }

  private Level14 l14() {
    return () -> l15();
  }

  private Level13 l13() {
    return () -> l14();
  }

  private Level12 l12() {
    return () -> l13();
  }

  private Level11 l11() {
    return () -> l12();
  }

  private Level10 l10() {
    return () -> l11();
  }

  private Level9 l9() {
    return () -> l10();
  }

  private Level8 l8() {
    return () -> l9();
  }

  private Level7 l7() {
    return () -> l8();
  }

  private Level6 l6() {
    return () -> l7();
  }

  private Level5 l5() {
    return () -> l6();
  }

  private Level4 l4() {
    return () -> l5();
  }

  private Level3 l3() {
    return () -> l4();
  }

  private Level2 l2() {
    return () -> l3();
  }

  private Level1 l1() {
    return () -> l2();
  }

  private Level0 l0() {
    return () -> l1();
  }
}
