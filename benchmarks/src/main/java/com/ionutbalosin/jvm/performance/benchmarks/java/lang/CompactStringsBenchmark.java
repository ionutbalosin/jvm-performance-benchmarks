package com.ionutbalosin.jvm.performance.benchmarks.java.lang;

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
 * Resources:
 * - see https://www.ethz.ch/content/dam/ethz/special-interest/infk/inst-cs/lst-dam/documents/Education/Classes/Fall2015/210_Compiler_Design/Slides/hotspot.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class CompactStringsBenchmark {

  @Param({"17"})
  public int idx;

  @Param({"123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"}) // length 35
  public String latin_1;

  @Param({"123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"}) // length 35
  public String latin_1_identical;

  @Param({"123456789ABCDEFGHIJKLMNOPQRSTUVWX¾ʬ"}) // length 35
  public String utf_16;

  @Param({"123456789ABCDEFGHIJKLMNOPQRSTUVWX¾ʬ"}) // length 35
  public String utf_16_identical;

  @Param({"ÐžÐ¹,Ð²ÑÑ‘Ð"})
  public String utf_16_str1;

  @Param({"ϑ¿Ñ€Ð¾Ð¿φÐ°Ϫ"})
  public String utf_16_str2;

  @Param({"Ðϛζ»Ð¾,ÑˆÐµÑ„"})
  public String utf_16_str3;

  @Param({"ΦЀ¾ʬϪÐ»ÐΛϼϨЁ"})
  public String utf_16_str4;

  @Param({"ΏΔΘΞΨθςώϚϠϨϱ"})
  public String utf_16_str5;

  @Param({"ϪÐϚϠΨθϑ¿ÐžЀ¾"})
  public String utf_16_str6;

  // java -jar benchmarks/target/benchmarks.jar ".*CompactStringsBenchmark.*" -prof gc
  // java -XX:-CompactStrings -jar benchmarks/target/benchmarks.jar ".*CompactStringsBenchmark.*"
  // -prof gc

  @Benchmark
  public String utf16_multiple_concat() {
    return utf_16_str1 + utf_16_str2 + utf_16_str3 + utf_16_str4 + utf_16_str5 + utf_16_str6;
  }

  @Benchmark
  public char[] latin1_toCharArray() {
    return latin_1.toCharArray();
  }

  @Benchmark
  public char[] utf16_toCharArray() {
    return utf_16.toCharArray();
  }

  @Benchmark
  public char latin1_charAt() {
    return latin_1.charAt(idx);
  }

  @Benchmark
  public char utf16_charAt() {
    return utf_16.charAt(idx);
  }

  @Benchmark
  public boolean latin1_toLatin1_equals() {
    return latin_1.equals(latin_1_identical);
  }

  @Benchmark
  public boolean latin1_toUtf16_equals() {
    return latin_1.equals(utf_16);
  }

  @Benchmark
  public boolean utf16_toUtf16_equals() {
    return utf_16.equals(utf_16_identical);
  }
}
