package com.ionutbalosin.jvm.performance.benchmarks.compiler;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (c) 2022 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * References:
 * - https://shipilev.net/jvm/anatomy-quarks/15-just-in-time-constants
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class JustInTimeConstantsBenchmark {

  private static final String staticFinalProperty = System.getProperty("java.home");
  private final String finalProperty = System.getProperty("java.home");
  private static String staticProperty = System.getProperty("java.home");
  private String property = System.getProperty("java.home");

  // java -jar benchmarks/target/benchmarks.jar ".*JustInTimeConstantsBenchmark.*"

  @Benchmark
  public String static_final_property() {
    return staticFinalProperty;
  }

  @Benchmark
  public String final_property() {
    return finalProperty;
  }

  @Benchmark
  public String static_property() {
    return staticProperty;
  }

  @Benchmark
  public String property() {
    return property;
  }
}
