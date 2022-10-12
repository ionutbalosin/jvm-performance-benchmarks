package com.ionutbalosin.jvm.performance.benchmarks.jit;

import java.util.Arrays;
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
import org.openjdk.jmh.infra.Blackhole;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
/*
 * Iterates through an array of custom object instances (containing null and not null values) and computes the sum of all elements using different comparison/filtering strategies:
 * - try { sum += array_element[i]; } catch(NullPointerException) {...};
 * - if (array_element[i] == null) continue; else sum += array_element[i];
 * - if (array_element[i] != null) sum += array_element[i];
 * - Arrays.stream(array).filter(array_element != null).map(...).reduce(0, Integer::sum);
 */
//  Pattern:
//
//    loop_try_catch() {
//        for (int i = 0; i < array_length; i++) {
//            try {
//                 sum += array[i].value;
//             } catch (NullPointerException ignored) {
//             }
//        }
//    }
//
//    loop_if_comparison() {
//        for (int i = 0; i < array_length; i++) {
//            if (array[i] != null)
//                 sum += array[i].value;
//        }
//    }
//
//    loop_continue() {
//        for (int i = 0; i < array_length; i++) {
//            if (array[i] == null)
//                continue;
//            sum +=  array[i].value;
//        }
//    }
//
//    stream() {
//        Arrays.stream(array)
//             .filter(array_element -> array_element != null)
//             .map(array_element::getValue)
//             .reduce(0, Integer::sum)
//    }
//
//    the array of elements if initialized as follows:
//
//    for (int i = 0; i < array_length; i++) {
//        int value = random_value;
//        if (value < thresholdLimit) {
//            array[i] = null;
//        } else {
//            array[i] = new ...;
//        }
//    }
//
//    where thresholdLimit is either:
//     - always smaller than arrays values - no null values in the array
//     - or partially greater than some arrays values - some of the elements are null
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class LoopControlFlowBenchmark {

  public Wrapper[] array;

  @Param({"262144"})
  private int size;

  @Param({"0", "16"})
  private int upperNullThreshold;

  @Setup
  public void setup() {
    array = new Wrapper[size];
    final Random random = new Random(16384);

    for (int i = 0; i < size; i++) {
      int value = random.nextInt(32) + 1;
      if (value < upperNullThreshold) {
        array[i] = null;
      } else {
        array[i] = new Wrapper(i);
      }
    }
  }

  // java -jar benchmarks/target/benchmarks.jar ".*LoopControlFlowBenchmark.*"

  @Benchmark
  public int loop_try_catch(Blackhole blackhole) {
    int dummy = 0;
    for (int i = 0; i < size; i++) {
      try {
        dummy += array[i].x;
      } catch (NullPointerException ignored) {
        blackhole.consume(ignored);
      }
    }
    return dummy;
  }

  @Benchmark
  public int loop_if_comparison() {
    int dummy = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] != null) dummy += array[i].x;
    }
    return dummy;
  }

  @Benchmark
  public int loop_continue() {
    int dummy = 0;
    for (int i = 0; i < size; i++) {
      if (array[i] == null) continue;
      dummy += array[i].x;
    }
    return dummy;
  }

  @Benchmark
  public long stream() {
    return Arrays.stream(array)
        .filter(wrapper -> wrapper != null)
        .map(Wrapper::getX)
        .reduce(0, Integer::sum);
  }

  private static class Wrapper {
    public int x;

    public Wrapper(int x) {
      this.x = x;
    }

    public int getX() {
      return x;
    }
  }
}
