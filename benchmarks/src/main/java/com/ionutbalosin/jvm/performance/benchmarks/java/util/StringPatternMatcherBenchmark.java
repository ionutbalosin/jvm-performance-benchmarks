package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
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
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Measures the performance between Pattern.matcher() and String.matches() while iterating through first 1 million numbers
 * which matches the pattern "^ ( ([0-1][0-9]) | (2[0-3]) ) ([0-9]*) ([0-5][0-9]) $".
 * Basically it means:
 * - starts with [0-1][0-9] OR 2[0-3]
 * - contains zero or multiple characters from range [0-9]
 * - ends with [0-5][0-9]
 *
 * Examples:
 * - 1000, 10239, 143345, 232224, 239959
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class StringPatternMatcherBenchmark {

  private final String EMPTY_STRING = "";
  private Pattern pattern;

  @Param({"^(([0-1][0-9])|(2[0-3]))([0-9]*)([0-5][0-9])$"})
  private String regexp;

  @Param({"1000000"})
  private int iterations;

  @Setup
  public void setup() {
    pattern = Pattern.compile(regexp);
  }

  // java -jar benchmarks/target/benchmarks.jar ".*StringPatternMatcherBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(1000000)
  public void pattern_matcher(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume(pattern.matcher(EMPTY_STRING + i).matches());
    }
  }

  @Benchmark
  @OperationsPerInvocation(1000000)
  public void string_matches(Blackhole blackhole) {
    int lIterations = iterations;
    for (int i = 0; i < lIterations; ++i) {
      blackhole.consume((EMPTY_STRING + i).matches(regexp));
    }
  }
}
