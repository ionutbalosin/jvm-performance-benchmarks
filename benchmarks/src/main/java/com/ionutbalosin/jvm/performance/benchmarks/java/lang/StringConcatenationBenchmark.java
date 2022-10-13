package com.ionutbalosin.jvm.performance.benchmarks.java.lang;

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

/*
 * Resources:
 * - see https://www.ethz.ch/content/dam/ethz/special-interest/infk/inst-cs/lst-dam/documents/Education/Classes/Fall2015/210_Compiler_Design/Slides/hotspot.pdf
 */

/*
 * Tests different String concatenation strategies between a String (LATIN1 and UTF16) and other primitives and object types, using the plus operator ('+').
 *
 * Strategies used (i.e. -Djava.lang.invoke.stringConcat=<strategy>):
 * - JVM default (e.g. MH_INLINE_SIZED_EXACT)
 * - BC_SB
 * - BC_SB_SIZED
 * - BC_SB_SIZED_EXACT
 * - MH_SB_SIZED
 * - MH_SB_SIZED_EXACT
 */

//  Pattern:
//
//    concat() {
//        return aString + anInt + aFloat + objectValue + boolValue + byteValue;
//    }
//
//    where
//    - aString.length() = {16, 128}
//    - aString has the coder = {LATIN1, UTF16}
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class StringConcatenationBenchmark {

  private String aString;
  private int anInt;
  private float aFloat;
  private Object anObjectValue;
  private boolean boolValue;
  private byte byteValue;

  @Param({"16", "128"})
  private int size;

  @Param private CODER coder;

  @Setup
  public void setup() {
    char prefix;
    switch (coder) {
      case LATIN1:
        prefix = 'a';
        break;
      case UTF16:
        prefix = 'ʬ';
        break;
      default:
        throw new UnsupportedOperationException("Unsupported coder type " + coder);
    }

    StringBuilder sb = new StringBuilder(size);
    Random random = new Random(16384);
    for (int i = 0; i < size; i++) {
      sb.append((char) (prefix + random.nextInt(26)));
    }
    aString = sb.toString();
    anInt = 2019;
    aFloat = 42.0f;
    anObjectValue = Long.valueOf(anInt);
    boolValue = true;
    byteValue = (byte) -128;
  }

  // java -jar benchmarks/target/benchmarks.jar ".*StringConcatenationBenchmark.*"

  @Benchmark
  @Fork(value = 3)
  public String concat_default() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-Djava.lang.invoke.stringConcat=BC_SB"})
  public String concat_bc_sb() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-Djava.lang.invoke.stringConcat=BC_SB_SIZED"})
  public String concat_bc_sb_sized() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-Djava.lang.invoke.stringConcat=BC_SB_SIZED_EXACT"})
  public String concat_bc_sb_sized_exact() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-Djava.lang.invoke.stringConcat=MH_SB_SIZED"})
  public String concat_mh_sb_sized() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-Djava.lang.invoke.stringConcat=MH_SB_SIZED_EXACT"})
  public String concat_mh_sb_sized_exact() {
    return aString + anInt + aFloat + anObjectValue + boolValue + byteValue;
  }

  public enum CODER {
    LATIN1,
    UTF16;
  }
}
