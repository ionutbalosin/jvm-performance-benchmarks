package com.ionutbalosin.jvm.performance.benchmarks.jit.concurrency;

import java.lang.reflect.Field;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.LongAdder;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.StampedLock;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Group;
import org.openjdk.jmh.annotations.GroupThreads;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import sun.misc.Unsafe;

/*
 * (c) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class CounterBenchmark {

  private static final int THREADS = 4;
  @Param CounterType counterType;
  private Counter counter;

  @Setup
  public void setup() throws NoSuchFieldException, IllegalAccessException {
    switch (counterType) {
      case LAC:
        counter = new LongAdderCounter();
        break;
      case ALC:
        counter = new AtomicLongCounter();
        break;
      case SC:
        counter = new SynchronizedCounter();
        break;
      case VC:
        counter = new VolatileCounter();
        break;
      case OSLC:
        counter = new OptimisticStampedLockCounter();
        break;
      case RLC:
        counter = new ReentrantLockCounter();
        break;
      case CASC:
        counter = new CASCounter();
        break;
      default:
        throw new UnsupportedOperationException("Unsupported counter type " + counterType);
    }
  }

  @Benchmark
  @Group("read_write_counter")
  @GroupThreads(THREADS)
  public void increment() {
    counter.inc();
  }

  // java -jar benchmarks/target/benchmarks.jar ".*CounterBenchmark.*"
  // java -jar benchmarks/target/benchmarks.jar ".*CounterBenchmark.*" -tg 4,4

  @Benchmark
  @Group("read_write_counter")
  @GroupThreads(THREADS)
  public long get() {
    return counter.get();
  }

  public enum CounterType {
    LAC,
    ALC,
    SC,
    VC,
    OSLC,
    RLC,
    CASC
  }

  abstract class Counter {

    abstract void inc();

    abstract long get();
  }

  class LongAdderCounter extends Counter {

    private final LongAdder counter = new LongAdder();

    @Override
    public void inc() {
      counter.increment();
    }

    @Override
    public long get() {
      return counter.longValue();
    }
  }

  class AtomicLongCounter extends Counter {

    private final AtomicLong counter = new AtomicLong();

    @Override
    public void inc() {
      counter.incrementAndGet();
    }

    @Override
    public long get() {
      return counter.get();
    }
  }

  class SynchronizedCounter extends Counter {

    private long counter = 0;

    @Override
    public synchronized void inc() {
      counter++;
    }

    @Override
    public long get() {
      return counter;
    }
  }

  class VolatileCounter extends Counter {

    private volatile long counter = 0;

    @Override
    public void inc() {
      ++counter;
    }

    @Override
    public long get() {
      return counter;
    }
  }

  class OptimisticStampedLockCounter extends Counter {

    private long counter = 0;
    private StampedLock lock = new StampedLock();

    @Override
    public void inc() {

      long stamp = lock.writeLock();

      try {
        ++counter;
      } finally {
        lock.unlockWrite(stamp);
      }
    }

    @Override
    public long get() {

      long stamp = lock.tryOptimisticRead(); // non blocking

      long result = counter;

      if (!lock.validate(stamp)) { // if a write occurred, try again with a read lock
        stamp = lock.readLock();
        try {
          // read field and hold it in local variable for later use
          result = counter;
        } finally {
          lock.unlockRead(stamp);
        }
      }

      // can perform operations on local <result> variable ...

      return result;
    }
  }

  class ReentrantLockCounter extends Counter {

    private long counter = 0;
    private ReentrantReadWriteLock.WriteLock writeLock = new ReentrantReadWriteLock().writeLock();
    private ReentrantReadWriteLock.WriteLock readLock = new ReentrantReadWriteLock().writeLock();

    @Override
    public void inc() {
      try {
        writeLock.lock();
        ++counter;
      } finally {
        writeLock.unlock();
      }
    }

    @Override
    public long get() {
      try {
        readLock.lock();
        return counter;
      } finally {
        readLock.unlock();
      }
    }
  }

  class CASCounter extends Counter {

    private volatile long counter = 0;
    private Unsafe unsafe;
    private long offset;

    public CASCounter() throws NoSuchFieldException, IllegalAccessException {
      unsafe = getUnsafe();
      offset = unsafe.objectFieldOffset(CASCounter.class.getDeclaredField("counter"));
    }

    Unsafe getUnsafe()
        throws SecurityException, NoSuchFieldException, IllegalArgumentException,
            IllegalAccessException {
      Field f = Unsafe.class.getDeclaredField("theUnsafe");
      f.setAccessible(true);
      Unsafe unsafe = (Unsafe) f.get(null);
      return unsafe;
    }

    @Override
    public void inc() {
      long before = counter;
      while (!unsafe.compareAndSwapLong(this, offset, before, before + 1)) {
        before = counter;
      }
    }

    @Override
    public long get() {
      return counter;
    }
  }
}
