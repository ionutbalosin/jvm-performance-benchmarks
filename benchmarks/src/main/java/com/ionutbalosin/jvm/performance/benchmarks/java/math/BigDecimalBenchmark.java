package com.ionutbalosin.jvm.performance.benchmarks.java.math;

import java.math.BigDecimal;
import java.math.MathContext;
import java.math.RoundingMode;
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
public class BigDecimalBenchmark {

  @Param({"128"})
  private int size;

  @Param private MathContextType contextType;

  private BigDecimal[] array;

  @Setup
  public void setup() {
    MathContext context;

    switch (contextType) {
      case UNLIMITED:
        context = MathContext.UNLIMITED;
        break;
      case DECIMAL32:
        context = MathContext.DECIMAL32;
        break;
      case DECIMAL64:
        context = MathContext.DECIMAL64;
        break;
      case DECIMAL128:
        context = MathContext.DECIMAL128;
        break;
      default:
        throw new UnsupportedOperationException("Unsupported context type " + contextType);
    }

    array = new BigDecimal[size];
    for (int i = 0; i < size; i++) {
      double value = (double) (i + 1);
      switch (i % 4) {
        case 0:
          value = -value * 876678.0d;
          break;
        case 1:
          value = value * 8767876786787688e100;
          break;
        case 2:
          value = -value / 8767876786787688e100;
          break;
        case 3:
          break;
      }
      array[i] = new BigDecimal(value, context);
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*BigDecimalBenchmark.*"

  @Benchmark
  @OperationsPerInvocation(128)
  public void to_string(Blackhole blackhole) {
    for (BigDecimal bigDecimal : array) {
      blackhole.consume(bigDecimal.toString());
    }
  }

  @Benchmark
  @OperationsPerInvocation(128)
  public void set_scale(Blackhole blackhole) {
    for (BigDecimal bigDecimal : array) {
      blackhole.consume(bigDecimal.setScale(2, RoundingMode.HALF_UP));
    }
  }

  @Benchmark
  @OperationsPerInvocation(127)
  public void add(Blackhole blackhole) {
    BigDecimal dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.add(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(127)
  public void multiply(Blackhole blackhole) {
    BigDecimal dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.multiply(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(127)
  public void divide(Blackhole blackhole) {
    BigDecimal dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.divide(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(127)
  public void subtract(Blackhole blackhole) {
    BigDecimal dummy = array[0];
    for (int i = 1; i < size; i++) {
      dummy = dummy.subtract(array[i]);
    }
    blackhole.consume(dummy);
  }

  @Benchmark
  @OperationsPerInvocation(127)
  public void compare_to(Blackhole blackhole) {
    BigDecimal dummy = array[0];
    for (int i = 1; i < size; i++) {
      blackhole.consume(dummy.compareTo(array[i]));
    }
  }

  public enum MathContextType {
    UNLIMITED,
    DECIMAL32,
    DECIMAL64,
    DECIMAL128
  }
}
