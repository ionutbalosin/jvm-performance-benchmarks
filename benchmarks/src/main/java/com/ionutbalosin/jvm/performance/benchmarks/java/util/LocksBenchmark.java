package com.ionutbalosin.jvm.performance.benchmarks.java.util;

import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Group;
import org.openjdk.jmh.annotations.GroupThreads;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
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
 * Test different contented lock types (e.g. synchronized, reentrant lock, reentrant read write lock) and a semaphore using different fair ordering policy (i.e. true or false).
 * The number of concurrent threads trying to acquire the contented lock is set to 4 (quite usual for a normal business/practical case).
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 3)
@State(Scope.Benchmark)
public class LocksBenchmark {

  private static final int THREADS = 4;
  private ReentrantLock reentrantLock;
  private ReentrantLock fairReentrantLock;
  private ReentrantReadWriteLock reentrantRWLock;
  private ReentrantReadWriteLock fairReentrantRWLock;
  private Semaphore semaphore;
  private Semaphore fairSemaphore;

  @Setup
  public void setup() {
    reentrantLock = new ReentrantLock(false);
    fairReentrantLock = new ReentrantLock(true);
    reentrantRWLock = new ReentrantReadWriteLock(false);
    fairReentrantRWLock = new ReentrantReadWriteLock(true);
    semaphore = new Semaphore(THREADS, false);
    fairSemaphore = new Semaphore(THREADS, true);
  }

  // java -jar benchmarks/target/benchmarks.jar ".*LocksBenchmark.*"

  @Benchmark
  @Group("synchronized")
  @GroupThreads(THREADS)
  public void synchronized_baseline() {
    synchronized (this) {
      Blackhole.consumeCPU(10);
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("fair_reentrant_lock")
  @GroupThreads(THREADS)
  public void fair_reentrant_lock() {
    fairReentrantLock.lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      fairReentrantLock.unlock();
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("reentrant_lock")
  @GroupThreads(THREADS)
  public void reentrant_lock() {
    reentrantLock.lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      reentrantLock.unlock();
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("fair_reentrant_read_write_lock")
  @GroupThreads(THREADS)
  public void fair_reentrant_read_write_lock() {
    fairReentrantRWLock.readLock().lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      fairReentrantRWLock.readLock().unlock();
    }
    fairReentrantRWLock.writeLock().lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      fairReentrantRWLock.writeLock().unlock();
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("reentrant_read_write_lock")
  @GroupThreads(THREADS)
  public void reentrant_read_write_lock() {
    reentrantRWLock.readLock().lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      reentrantRWLock.readLock().unlock();
    }
    reentrantRWLock.writeLock().lock();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      reentrantRWLock.writeLock().unlock();
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("fair_semaphore")
  @GroupThreads(THREADS)
  public void fair_semaphore() throws InterruptedException {
    fairSemaphore.acquire();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      fairSemaphore.release();
    }
    Blackhole.consumeCPU(5);
  }

  @Benchmark
  @Group("semaphore")
  @GroupThreads(THREADS)
  public void semaphore() throws InterruptedException {
    semaphore.acquire();
    try {
      Blackhole.consumeCPU(10);
    } finally {
      semaphore.release();
    }
    Blackhole.consumeCPU(5);
  }
}
