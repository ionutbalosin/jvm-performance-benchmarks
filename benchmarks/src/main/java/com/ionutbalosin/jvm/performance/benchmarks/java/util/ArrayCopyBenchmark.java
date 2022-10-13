package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.Arrays;
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
public class ArrayCopyBenchmark {

  @Param({"16384", "32768"})
  private int size;

  @Param({"256", "512"})
  private int stride;

  private byte[] array1;
  private byte[] array2;

  // java -jar benchmarks/target/benchmarks.jar ".*ArrayCopyBenchmark.*"

  @Setup
  public void setup() {
    array1 = new byte[size];
    Arrays.fill(array1, (byte) 1);

    array2 = new byte[size];
    Arrays.fill(array2, (byte) 1);
  }

  @Benchmark
  public byte[] system_array_copy() {
    byte[] copy = new byte[size];
    for (int i = 0; i < size; i += stride) {
      System.arraycopy(array1, i, copy, i, stride);
    }
    return copy;
  }

  @Benchmark
  public byte[] arrays_copyOf() {
    byte[] copy = new byte[size];
    for (int i = 0; i < size; i += stride) {
      Arrays.copyOf(array1, stride);
    }
    return copy;
  }

  @Benchmark
  public boolean arrays_equals() {
    return Arrays.equals(array1, array2);
  }

  @Benchmark
  public int arrays_compare() {
    return Arrays.compare(array1, array2);
  }

  @Benchmark
  public int arrays_mismatch() {
    return Arrays.mismatch(array1, array2);
  }

  @Benchmark
  public byte[] manual_array_copy() {
    byte[] copy = new byte[size];
    for (int i = 0; i < size; i += stride) {
      for (int t = i; t < i + stride; t++) {
        copy[t] = array1[t];
      }
    }
    return copy;
  }

  @Benchmark
  public byte[] array_clone() {
    byte[] copy = array1.clone();
    return copy;
  }
}
