package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
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

/*
 * Measures the performance between Pattern.split() and String.split() for 1, 2 and 3 characters.
 * - string_split has a fast-path for :
 *    - one-char String and this character is not one of the RegEx's meta characters ".$|()[{^?*+\\", or
 *    - two-char String and the first char is the backslash and the second is not the ascii digit or ascii letter.
 * - pattern_split reuses the pattern: it saves a few cycles in comparison to a normal string_split
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class StringPatternSplitBenchmark {

  private final String QUOTE =
      "Programming_today_is_a_race_between_software_engineers_striving_to_build_bigger_and_better_idiot-proof_programs,_and_the_Universe_trying_to_produce_bigger_and_better_idiots._So_far,_the_Universe_is_winning_-_Rick_Cook_The_Wizardry_Compiled";

  @Param({"_", "__", "___"})
  private String regexp;

  private String text;
  private Pattern pattern;

  @Setup
  public void setup() {
    pattern = Pattern.compile(regexp);
    text = QUOTE.replaceAll("_", regexp);
  }

  // java -jar benchmarks/target/benchmarks.jar ".*StringPatternSplitBenchmark.*" -prof gc

  @Benchmark
  public String[] string_split() {
    return text.split(regexp);
  }

  @Benchmark
  public String[] pattern_split() {
    return pattern.split(text);
  }
}
