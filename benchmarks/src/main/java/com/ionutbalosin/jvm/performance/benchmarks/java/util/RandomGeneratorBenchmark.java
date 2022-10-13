package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.Random;
import java.util.SplittableRandom;
import java.util.concurrent.ThreadLocalRandom;
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
 * - see https://www.jstatsoft.org/article/view/v008i14
 * - see http://cs.oswego.edu/pipermail/concurrency-interest/2013-July/011579.html
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class RandomGeneratorBenchmark {

  @Param({"128"})
  private int size;

  private byte[] bytes;

  private Random random;
  private ThreadLocalRandom threadLocalRandom;
  private SplittableRandom splittableRandom;

  @Setup()
  public void setup() {
    random = new Random(262144);
    threadLocalRandom = ThreadLocalRandom.current();
    splittableRandom = new SplittableRandom(262144);
    bytes = new byte[size];
  }

  // java -jar benchmarks/target/benchmarks.jar ".*RandomGeneratorBenchmark.*"

  @Benchmark
  public boolean random_next_boolean() {
    return random.nextBoolean();
  }

  @Benchmark
  public int random_next_int() {
    return random.nextInt();
  }

  @Benchmark
  public long random_next_long() {
    return random.nextLong();
  }

  @Benchmark
  public float random_next_float() {
    return random.nextFloat();
  }

  @Benchmark
  public double random_next_double() {
    return random.nextDouble();
  }

  @Benchmark
  public byte[] random_next_bytes_array() {
    random.nextBytes(bytes);
    return bytes;
  }

  @Benchmark
  public int[] random_ints_array() {
    return random.ints(size).toArray();
  }

  @Benchmark
  public long[] random_longs_array() {
    return random.longs(size).toArray();
  }

  @Benchmark
  public double[] random_doubles_array() {
    return random.doubles(size).toArray();
  }

  @Benchmark
  public boolean splittable_random_next_boolean() {
    return splittableRandom.nextBoolean();
  }

  @Benchmark
  public int splittable_random_next_int() {
    return splittableRandom.nextInt();
  }

  @Benchmark
  public long splittable_random_next_long() {
    return splittableRandom.nextLong();
  }

  @Benchmark
  public double splittable_random_next_double() {
    return splittableRandom.nextDouble();
  }

  @Benchmark
  public byte[] splittable_random_next_bytes_array() {
    splittableRandom.nextBytes(bytes);
    return bytes;
  }

  @Benchmark
  public int[] splittable_random_ints_array() {
    return splittableRandom.ints(size).toArray();
  }

  @Benchmark
  public long[] splittable_random_longs_array() {
    return splittableRandom.longs(size).toArray();
  }

  @Benchmark
  public double[] splittable_random_doubles_array() {
    return splittableRandom.doubles(size).toArray();
  }

  @Benchmark
  public boolean thread_local_next_boolean() {
    return threadLocalRandom.nextBoolean();
  }

  @Benchmark
  public int thread_local_next_int() {
    return threadLocalRandom.nextInt();
  }

  @Benchmark
  public long thread_local_next_long() {
    return threadLocalRandom.nextLong();
  }

  @Benchmark
  public float thread_local_next_float() {
    return threadLocalRandom.nextFloat();
  }

  @Benchmark
  public double thread_local_next_double() {
    return threadLocalRandom.nextDouble();
  }

  @Benchmark
  public byte[] thread_local_next_bytes_array() {
    threadLocalRandom.nextBytes(bytes);
    return bytes;
  }

  @Benchmark
  public int[] thread_local_ints_array() {
    return threadLocalRandom.ints(size).toArray();
  }

  @Benchmark
  public long[] thread_local_longs_array() {
    return threadLocalRandom.longs(size).toArray();
  }

  @Benchmark
  public double[] thread_local_doubles_array() {
    return threadLocalRandom.doubles(size).toArray();
  }

  // @Benchmark
  public long xor_shift() {
    // Note: this test includes the overhead of System.nanoTime()!
    return xorShift(System.nanoTime());
  }

  /**
   * The "magic" values of 21, 35 and 4 have been found to produce good results. With these values,
   * the generator has a full period of 2(64)-1, and the resulting values pass Marsaglia's "Diehard
   * battery" of statistical tests for randomness.
   */
  private long xorShift(long z) {
    z ^= (z << 21);
    z ^= (z >>> 35);
    z ^= (z << 4);
    return z;
  }
}
