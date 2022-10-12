package com.ionutbalosin.jvm.performance.benchmarks.jit;

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

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Tests a bunch of mathematical operations while iterating through a list (or multiple lists) of randomly generated doubles.
 */

//  Pattern:
//
//    double[] A, B, C, R;
//
//    R[i] = Math.sqrt(A[i]);
//
//    R[i] = Math.exp(A[i]);
//
//    R[i] = Math.pow(A[i], B[i]);
//
//    R[i] = Math.log(A[i]);
//
//    R[i] = Math.log10(A[i]);
//
//    R[i] = Math.abs(A[i]);
//
//    R[i] = Math.min(A[i], B[i]);
//
//    R[i] = Math.max(A[i], B[i]);
//
//    R[i] = Math.fma(A[i], B[i], C[i]);
//
//    R[i] = Math.round(A[i]);
//
//    R[i] = Math.floor(A[i]);
//
//    R[i] = Math.ceil(A[i]);
//
//    R[i] = Math.sin(A[i]);
//
//    R[i] = Math.cos(A[i]);
//
// Current benchmark also exploits the vectorization effect, however, there are dedicated benchmarks
// for this within the current report.
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class DoubleMathBenchmark {

  @Param({"262144"})
  private int size;

  private double[] A, B, C, D;

  // java -jar benchmarks/target/benchmarks.jar ".*DoubleMathBenchmark.*"

  @Setup
  public void setup() {
    final Random random = new Random(16384);
    A = new double[size];
    B = new double[size];
    C = new double[size];
    D = new double[size];
    for (int i = 0; i < size; i++) {
      A[i] = i + random.nextDouble();
      B[i] = i + random.nextDouble();
      C[i] = i + random.nextDouble();
      D[i] = i + random.nextDouble();
    }
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] sqrt() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.sqrt(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] exp() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.exp(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] pow() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.pow(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] log() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.log(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] log10() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.log10(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] abs() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.abs(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] min() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.min(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] max() {
    for (int i = 0; i < size; i++) {
      C[i] = Math.max(A[i], B[i]);
    }
    return C;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] fma() {
    for (int i = 0; i < size; i++) {
      D[i] = Math.fma(A[i], B[i], C[i]);
    }
    return D;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] round() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.round(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] floor() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.floor(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] ceil() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.ceil(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] sin() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.sin(A[i]);
    }
    return B;
  }

  @Benchmark
  @OperationsPerInvocation(262144)
  public double[] cos() {
    for (int i = 0; i < size; i++) {
      B[i] = Math.cos(A[i]);
    }
    return B;
  }
}
