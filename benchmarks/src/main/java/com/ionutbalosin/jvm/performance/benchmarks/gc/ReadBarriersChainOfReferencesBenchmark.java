package com.ionutbalosin.jvm.performance.benchmarks.gc;

import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.CompilerControl;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * (h3) 2019 Ionut Balosin
 * Website: www.ionutbalosin.com
 * Twitter: @ionutbalosin
 *
 * For the full copyright and license information, please view the LICENSE file that was distributed with this source code.
 */

/*
 * Test the overhead of read barriers while iterating through a big chain of pre-allocated composite classes (e.g. class H1 -> class H2 -> ... -> class H32) and returns a field property referenced by the innermost class.
 *
 * Note: @see ReadWriteBarriersBenchmark.java for further explanations about read/write barriers in current GCs
 *
 */

//  Pattern:
//
//    Object test() {
//        return
// baseRef.h2.h3.h4.h5.h6.h7.h8.h9.h10.h11.h12.h13.h14.h15.h16.h17.h18.h19.h20.h21.h22.h23.h24.h25.h26.h27.h28.h29.h30.h31.h32.aValue;
//    }
//
//  Where
//      class H1 {
//          H2 h2;
//
//          H1(H2 h2) {
//              this.h2 = h2;
//          }
//      }
//
//    // ....
//
//    class H32 {
//        Object aValue;
//
//        public H32(Object aValue) {
//            this.aValue = aValue;
//        }
//    }
//
@BenchmarkMode(Mode.Throughput)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(1)
@State(Scope.Benchmark)
public class ReadBarriersChainOfReferencesBenchmark {

  private H1 baseRef;

  @Setup()
  public void setup() {
    final int aValue = ThreadLocalRandom.current().nextInt();
    baseRef =
        new H1(
            new H2(
                new H3(
                    new H4(
                        new H5(
                            new H6(
                                new H7(
                                    new H8(
                                        new H9(
                                            new H10(
                                                new H11(
                                                    new H12(
                                                        new H13(
                                                            new H14(
                                                                new H15(
                                                                    new H16(
                                                                        new H17(
                                                                            new H18(
                                                                                new H19(
                                                                                    new H20(
                                                                                        new H21(
                                                                                            new H22(
                                                                                                new H23(
                                                                                                    new H24(
                                                                                                        new H25(
                                                                                                            new H26(
                                                                                                                new H27(
                                                                                                                    new H28(
                                                                                                                        new H29(
                                                                                                                            new H30(
                                                                                                                                new H31(
                                                                                                                                    new H32(
                                                                                                                                        aValue))))))))))))))))))))))))))))))));
  }

  // java -jar benchmarks/target/benchmarks.jar ".*ReadBarriersChainOfClassesBenchmark.*" -prof gc

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseSerialGC"})
  public Object serialGC() {
    return test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseParallelGC"})
  public Object parallelGC() {
    return test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseG1GC"})
  public Object g1GC() {
    return test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseZGC"})
  public Object zGC() {
    return test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UseShenandoahGC"})
  public Object shenandoahGC() {
    return test();
  }

  @Benchmark
  @Fork(jvmArgsAppend = {"-XX:+UnlockExperimentalVMOptions", "-XX:+UseEpsilonGC"})
  public Object epsilonGC() {
    return test();
  }

  @CompilerControl(CompilerControl.Mode.DONT_INLINE)
  public Object test() {
    return baseRef
        .h2
        .h3
        .h4
        .h5
        .h6
        .h7
        .h8
        .h9
        .h10
        .h11
        .h12
        .h13
        .h14
        .h15
        .h16
        .h17
        .h18
        .h19
        .h20
        .h21
        .h22
        .h23
        .h24
        .h25
        .h26
        .h27
        .h28
        .h29
        .h30
        .h31
        .h32
        .aValue;
  }

  class H1 {
    H2 h2;

    H1(H2 h2) {
      this.h2 = h2;
    }
  }

  class H2 {
    H3 h3;

    H2(H3 h3) {
      this.h3 = h3;
    }
  }

  class H3 {
    H4 h4;

    H3(H4 h4) {
      this.h4 = h4;
    }
  }

  class H4 {
    H5 h5;

    H4(H5 h5) {
      this.h5 = h5;
    }
  }

  class H5 {
    H6 h6;

    H5(H6 h6) {
      this.h6 = h6;
    }
  }

  class H6 {
    H7 h7;

    H6(H7 h7) {
      this.h7 = h7;
    }
  }

  class H7 {
    H8 h8;

    H7(H8 h8) {
      this.h8 = h8;
    }
  }

  class H8 {
    H9 h9;

    H8(H9 h9) {
      this.h9 = h9;
    }
  }

  class H9 {
    H10 h10;

    H9(H10 h10) {
      this.h10 = h10;
    }
  }

  class H10 {
    H11 h11;

    H10(H11 h11) {
      this.h11 = h11;
    }
  }

  class H11 {
    H12 h12;

    H11(H12 h12) {
      this.h12 = h12;
    }
  }

  class H12 {
    H13 h13;

    H12(H13 h13) {
      this.h13 = h13;
    }
  }

  class H13 {
    H14 h14;

    H13(H14 h14) {
      this.h14 = h14;
    }
  }

  class H14 {
    H15 h15;

    H14(H15 h15) {
      this.h15 = h15;
    }
  }

  class H15 {
    H16 h16;

    H15(H16 h16) {
      this.h16 = h16;
    }
  }

  class H16 {
    H17 h17;

    H16(H17 h17) {
      this.h17 = h17;
    }
  }

  class H17 {
    H18 h18;

    H17(H18 h18) {
      this.h18 = h18;
    }
  }

  class H18 {
    H19 h19;

    H18(H19 h19) {
      this.h19 = h19;
    }
  }

  class H19 {
    H20 h20;

    H19(H20 h20) {
      this.h20 = h20;
    }
  }

  class H20 {
    H21 h21;

    H20(H21 h21) {
      this.h21 = h21;
    }
  }

  class H21 {
    H22 h22;

    H21(H22 h22) {
      this.h22 = h22;
    }
  }

  class H22 {
    H23 h23;

    H22(H23 h23) {
      this.h23 = h23;
    }
  }

  class H23 {
    H24 h24;

    H23(H24 h24) {
      this.h24 = h24;
    }
  }

  class H24 {
    H25 h25;

    H24(H25 h25) {
      this.h25 = h25;
    }
  }

  class H25 {
    H26 h26;

    H25(H26 h26) {
      this.h26 = h26;
    }
  }

  class H26 {
    H27 h27;

    H26(H27 h27) {
      this.h27 = h27;
    }
  }

  class H27 {
    H28 h28;

    H27(H28 h28) {
      this.h28 = h28;
    }
  }

  class H28 {
    H29 h29;

    H28(H29 h29) {
      this.h29 = h29;
    }
  }

  class H29 {
    H30 h30;

    H29(H30 h30) {
      this.h30 = h30;
    }
  }

  class H30 {
    H31 h31;

    H30(H31 h31) {
      this.h31 = h31;
    }
  }

  class H31 {
    H32 h32;

    H31(H32 h32) {
      this.h32 = h32;
    }
  }

  class H32 {
    int aValue;

    public H32(int aValue) {
      this.aValue = aValue;
    }
  }
}
