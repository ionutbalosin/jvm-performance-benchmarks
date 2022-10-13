package com.ionutbalosin.jvm.performance.benchmarks.compiler;

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
 * A tail-recursive function is a function where the last operation before the function returns is an invocation to the function itself.
 * Tail-recursive optimization avoids allocating a new stack frame by re-writing the method into a completely iterative fashion.
 */
//  Pattern:
//
//    // Fibonacci example
//    tail_recursive(int n, int a, int b) {
//        if (n == 0)
//            return a;
//        else if (n == 1)
//            return b;
//        else return tail_recursive(n - 1, b, a + b);
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(
    value = 3,
    jvmArgsAppend = {"-Xss20M"})
@State(Scope.Benchmark)
public class TailRecursionBenchmark {

  @Param({"32768"})
  private int param;

  // java -jar benchmarks/target/benchmarks.jar ".*TailRecursionBenchmark.*"

  @Benchmark
  public int fibonacci_tail_recursive() {
    return fibonacciRecursive(param, 0, 1);
  }

  @Benchmark
  public int fibonacci_baseline() {
    return fibonacciIterative(param, 0, 1);
  }

  private int fibonacciRecursive(int n, int a, int b) {
    if (n == 0) return a;
    else if (n == 1) return b;
    else return fibonacciRecursive(n - 1, b, a + b);
  }

  private final int fibonacciIterative(int n, int a, int b) {
    while (true) {
      int result;
      if (n == 0) {
        result = a;
      } else {
        if (n != 1) {
          result = n - 1;
          int aux = b;
          b += a;
          a = aux;
          n = result;
          continue;
        }

        result = b;
      }

      return result;
    }
  }
}
