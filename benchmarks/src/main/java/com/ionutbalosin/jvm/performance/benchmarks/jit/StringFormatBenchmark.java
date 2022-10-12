package com.ionutbalosin.jvm.performance.benchmarks.jit;

import java.util.Random;
import java.util.concurrent.TimeUnit;
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
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class StringFormatBenchmark {

  private static String aString;
  private static int anInt;
  private static float aFloat;
  private static Object anObjectValue;
  private static boolean boolValue;
  private static byte byteValue;

  @Param({"16"})
  private int size;

  @Setup
  public void setup() {
    StringBuilder sb = new StringBuilder(size);
    Random random = new Random(16384);
    for (int i = 0; i < size; i++) {
      sb.append((char) ('a' + random.nextInt(26)));
    }
    aString = sb.toString();
    anInt = 2019;
    aFloat = 42.0f;
    anObjectValue = Long.valueOf(anInt);
    boolValue = true;
    byteValue = (byte) -128;
  }

  // java -jar benchmarks/target/benchmarks.jar ".*StringInterpolationBenchmark.*" -prof gc

  @Benchmark
  public String string_builder() {
    return new StringBuilder()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(anObjectValue)
        .append(boolValue)
        .append(byteValue)
        .toString();
  }

  @Benchmark
  public String string_buffer() {
    return new StringBuffer()
        .append(aString)
        .append(anInt)
        .append(aFloat)
        .append(anObjectValue)
        .append(boolValue)
        .append(byteValue)
        .toString();
  }

  @Benchmark
  public String string_format() {
    return String.format(
        "%s%s%s%s%s%s", aString, anInt, aFloat, anObjectValue, boolValue, byteValue);
  }

  @Benchmark
  public String plus_operator() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }
}
