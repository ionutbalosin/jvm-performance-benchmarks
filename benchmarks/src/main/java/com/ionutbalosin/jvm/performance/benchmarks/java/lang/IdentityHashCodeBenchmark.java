package com.ionutbalosin.jvm.performance.benchmarks.java.lang;

import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
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
 * Tests the identityHashCode() of the Object() using different algorithms. The algorithm of generating the identity hashCode can be specified using -XX:hashCode JVM argument.
 *
 * -XX:hashCode=0 - uses global Park-Miller RNG (default until Java 7)
 * -XX:hashCode=1 - this variation has the property of being stable (idempotent) between STW operations.
 * -XX:hashCode=2 - constant 1. All objects will have the same hashCode. Just for sensitivity testing
 * -XX:hashCode=3 - incremental counter
 * -XX:hashCode=4 - lowers 32 bits of the object address in the Heap
 * -XX:hashCode=5 - uses Marsaglia's xor-shift scheme with thread-specific state (default since Java 8)
 *
 * Resources:
 * - see https://stackoverflow.com/questions/25111131/whats-the-default-hash-value-of-an-object-on-64-bit-jvm
 * - see http://hg.openjdk.java.net/jdk/jdk13/file/492b644bb9c2/src/hotspot/share/runtime/synchronizer.cpp
 */
//  Pattern:
//
//    id_hash_code_X() {
//        System.identityHashCode(new Object())
//    }
//
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class IdentityHashCodeBenchmark {

  // java -jar benchmarks/target/benchmarks.jar ".*IdentityHashCodeBenchmark.*"

  @Benchmark
  @Fork(value = 3)
  public int id_hash_code_default() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=0"})
  public int id_hash_code_0() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=1"})
  public int id_hash_code_1() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=2"})
  public int id_hash_code_2() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=3"})
  public int id_hash_code_3() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=4"})
  public int id_hash_code_4() {
    return System.identityHashCode(new Object());
  }

  @Benchmark
  @Fork(
      value = 3,
      jvmArgsPrepend = {"-XX:+UnlockExperimentalVMOptions", "-XX:hashCode=5"})
  public int id_hash_code_5() {
    return System.identityHashCode(new Object());
  }
}
