package com.ionutbalosin.jvm.performance.benchmarks.jit;

import static java.lang.StackWalker.Option.RETAIN_CLASS_REFERENCE;

import java.util.Arrays;
import java.util.NoSuchElementException;
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
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
// @Fork(value = 3, jvmArgsAppend = {"-XX:-OmitStackTraceInFastThrow",
// "-XX:-StackTraceInThrowable"})
@Fork(value = 3)
@State(Scope.Benchmark)
public class StackFrameIteratorBenchmark {

  @Param({"1", "64", "128"})
  int stackDepth;

  // java -jar benchmarks/target/benchmarks.jar ".*StackFrameIteratorBenchmark.*"

  // https://github.com/pingtimeout/stack-walker-benchmark
  // https://github.com/arnaudroger/site-point-01_stackwalker

  @Benchmark
  public StackWalker.StackFrame get_top_stack_frame_StackWalker() {
    return recTopStackFrame_StackWalker(stackDepth);
  }

  @Benchmark
  public StackTraceElement get_top_stack_frame_GetStackTrace() {
    return recTopStackFrame_GetStackTrace(stackDepth);
  }

  @Benchmark
  public StackWalker.StackFrame get_the_Nth_backwards_stack_frame_StackWalker() {
    return recNthBackwardsStackFrame_StackWalker(stackDepth);
  }

  @Benchmark
  public StackTraceElement get_the_Nth_backwards_stack_frame_GetStackTrace() {
    return recNthBackwardsStackFrame_GetStackTrace(stackDepth);
  }

  @Benchmark
  public Throwable get_throwable() {
    return recThrowable(stackDepth);
  }

  @Benchmark
  public Class<?> get_caller_stack_frame_StackWalker() {
    return StackWalker.getInstance(RETAIN_CLASS_REFERENCE).getCallerClass();
  }

  @Benchmark
  public Class<?> retrieve_caller_stack_frame_SecurityManager() {
    return new MySecurityManager().p_getClassContext()[1];
  }

  // TODO: sun.reflect.Reflection is removed in JDK 11
  // @Benchmark
  // @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  // public Class<?> retrieveCallerStackFrame_Reflection() {
  //    return sun.reflect.Reflection.getCallerClass(0);
  // }

  private StackWalker.StackFrame recTopStackFrame_StackWalker(int depth) {
    if (depth == 0) {
      return getTopStackFrame_StackWalker();
    }
    return recTopStackFrame_StackWalker(depth - 1);
  }

  private StackTraceElement recTopStackFrame_GetStackTrace(int depth) {
    if (depth == 0) {
      return getTopStackFrame_GetStackTrace();
    }
    return recTopStackFrame_GetStackTrace(depth - 1);
  }

  private StackWalker.StackFrame recNthBackwardsStackFrame_StackWalker(int depth) {
    if (depth == 0) {
      return getNthBackwardsStackFrame_StackWalker(stackDepth);
    }
    return recNthBackwardsStackFrame_StackWalker(depth - 1);
  }

  private StackTraceElement recNthBackwardsStackFrame_GetStackTrace(int depth) {
    if (depth == 0) {
      return getNthBackwardsStackFrame_GetStackTrace(stackDepth);
    }
    return recNthBackwardsStackFrame_GetStackTrace(depth - 1);
  }

  private Throwable recThrowable(int depth) {
    if (depth == 0) {
      return new Throwable(); // fills in the execution stack trace
    }
    return recThrowable(depth - 1);
  }

  private StackWalker.StackFrame getTopStackFrame_StackWalker() {
    return StackWalker.getInstance()
        .walk(stream -> stream.findFirst())
        .orElseThrow(NoSuchElementException::new);
  }

  private StackTraceElement getTopStackFrame_GetStackTrace() {
    StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
    return Arrays.stream(stackTrace).findFirst().orElseThrow(NoSuchElementException::new);
  }

  private StackWalker.StackFrame getNthBackwardsStackFrame_StackWalker(int numberOfSkippedFrames) {
    return StackWalker.getInstance()
        .walk(stream -> stream.skip(numberOfSkippedFrames - 1).findFirst())
        .orElseThrow(NoSuchElementException::new);
  }

  private StackTraceElement getNthBackwardsStackFrame_GetStackTrace(int numberOfSkippedFrames) {
    StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
    // return stackTrace[numberOfSkippedFrames];
    return Arrays.stream(stackTrace)
        .skip(numberOfSkippedFrames - 1)
        .findFirst()
        .orElseThrow(NoSuchElementException::new);
  }

  // ~
  // ----------------------------------------------------------------------------------------------------------------
  // ~ Inner Classes
  // ~
  // ----------------------------------------------------------------------------------------------------------------

  public static class MySecurityManager extends SecurityManager {
    public Class<?>[] p_getClassContext() {
      return getClassContext();
    }
  }
}
