package com.ionutbalosin.jvm.performance.benchmarks.java.math;

import java.math.BigInteger;
import java.util.Random;
import java.util.concurrent.TimeUnit;
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
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class BigIntegerBenchmark {

  @Param({"1024"})
  private int size;

  private BigInteger[] array;

  @Setup
  public void setup() {
    Random random = new Random(1123);
    array = new BigInteger[size];
    for (int i = 0; i < size; i++) {
      int value = Math.abs(random.nextInt());
      array[i] =
          new BigInteger(
              ""
                  + ((long) value + (long) Integer.MAX_VALUE)
                  + ((long) value + (long) Integer.MAX_VALUE));
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*BigIntegerBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(1024)
  public void to_string(Blackhole blackhole) {
    for (BigInteger bigDecimal : array) {
      blackhole.consume(bigDecimal.toString());
    }
  }

  @Benchmark
  @OperationsPerInvocation(1023)
  public void add(Blackhole blackhole) {
    BigInteger dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.add(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(1023)
  public void multiply(Blackhole blackhole) {
    BigInteger dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.multiply(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(1023)
  public void divide(Blackhole blackhole) {
    BigInteger dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.divide(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(1023)
  public void subtract(Blackhole blackhole) {
    BigInteger dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.subtract(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(1023)
  public void compare_to(Blackhole blackhole) {
    BigInteger dummy = array[0];
    for (int i = 1; i < size; i++) {
      blackhole.consume(dummy.compareTo(array[i]));
    }
  }
}
