/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019-2025 Ionut Balosin
 * Website:      www.ionutbalosin.com
 * Social Media:
 *   LinkedIn:   ionutbalosin
 *   Bluesky:    @ionutbalosin.bsky.social
 *   X:          @ionutbalosin
 *   Mastodon:   ionutbalosin@mastodon.social
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
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
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;
import org.openjdk.jmh.infra.Blackhole;

/*
 * This benchmark checks the slow path of instanceof type check using multiple secondary super types (i.e., interfaces) and always takes the slow path.
 *
 * Compared to the TypeCheckBenchmark, this benchmark will cause a deoptimization in the setup and therefore force both C2 and
 * Graal compilers to take the slow path in the benchmark method.
 *
 * References:
 * - code examples by Francesco Nigro (Twitter: @forked_franz)
 * - https://gist.github.com/franz1981/e46823dbaeb576c1a3344683b2319db8
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class TypeCheckSlowPathBenchmark {

  // $ java -jar */*/benchmarks.jar ".*TypeCheckSlowPathBenchmark.*"

  @Param({"16", "32", "64", "128", "256"})
  private int supertypes;

  private Object obj;

  @Setup
  public void setup(Blackhole blackhole) {
    obj = SomeCloseable.Instance;
    // Take the true branch of the instanceof check
    for (int i = 0; i < 11_000; i++) {
      blackhole.consume(closeNotAutoCloseable(obj));
    }

    // Choose the number of secondary super types
    switch (supertypes) {
      case 16:
        obj = ManySecondarySuperTypes_16.Instance;
        break;
      case 32:
        obj = ManySecondarySuperTypes_32.Instance;
        break;
      case 64:
        obj = ManySecondarySuperTypes_64.Instance;
        break;
      case 128:
        obj = ManySecondarySuperTypes_128.Instance;
        break;
      case 256:
        obj = ManySecondarySuperTypes_256.Instance;
        break;
      default:
        throw new IllegalArgumentException(
            "Invalid number of secondary super types: " + supertypes);
    }

    // Deopt and take the second branch of the instanceof check. This forces the compiler to
    // include both branches and use the slow path.
    for (int i = 0; i < 11_000; i++) {
      blackhole.consume(closeNotAutoCloseable(obj));
    }
  }

  @Benchmark
  public boolean instanceof_type_check() {
    return closeNotAutoCloseable(obj);
  }

  public static boolean closeNotAutoCloseable(Object o) {
    // it searches through the secondary supers (i.e., an array of objects) for a type match
    // but does not find one since "o" is not an "AutoCloseable" type
    if (o instanceof AutoCloseable) {
      try {
        ((AutoCloseable) o).close();
        return true;
      } catch (Exception ignore) {
        return false;
      }
    } else {
      // it always takes this slow path
      return false;
    }
  }

  private enum SomeCloseable implements AutoCloseable {
    Instance;

    @Override
    public void close() throws Exception {}
  }

  private enum ManySecondarySuperTypes_16
      implements I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16 {
    Instance;
  }

  private enum ManySecondarySuperTypes_32
      implements
          I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20,
          I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32 {
    Instance;
  }

  private enum ManySecondarySuperTypes_64
      implements
          I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20,
          I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38,
          I39, I40, I41, I42, I43, I44, I45, I46, I47, I48, I49, I50, I51, I52, I53, I54, I55, I56,
          I57, I58, I59, I60, I61, I62, I63, I64 {
    Instance;
  }

  private enum ManySecondarySuperTypes_128
      implements
          I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20,
          I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38,
          I39, I40, I41, I42, I43, I44, I45, I46, I47, I48, I49, I50, I51, I52, I53, I54, I55, I56,
          I57, I58, I59, I60, I61, I62, I63, I64, I65, I66, I67, I68, I69, I70, I71, I72, I73, I74,
          I75, I76, I77, I78, I79, I80, I81, I82, I83, I84, I85, I86, I87, I88, I89, I90, I91, I92,
          I93, I94, I95, I96, I97, I98, I99, I100, I101, I102, I103, I104, I105, I106, I107, I108,
          I109, I110, I111, I112, I113, I114, I115, I116, I117, I118, I119, I120, I121, I122, I123,
          I124, I125, I126, I127, I128 {
    Instance;
  }

  private enum ManySecondarySuperTypes_256
      implements
          I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16, I17, I18, I19, I20,
          I21, I22, I23, I24, I25, I26, I27, I28, I29, I30, I31, I32, I33, I34, I35, I36, I37, I38,
          I39, I40, I41, I42, I43, I44, I45, I46, I47, I48, I49, I50, I51, I52, I53, I54, I55, I56,
          I57, I58, I59, I60, I61, I62, I63, I64, I65, I66, I67, I68, I69, I70, I71, I72, I73, I74,
          I75, I76, I77, I78, I79, I80, I81, I82, I83, I84, I85, I86, I87, I88, I89, I90, I91, I92,
          I93, I94, I95, I96, I97, I98, I99, I100, I101, I102, I103, I104, I105, I106, I107, I108,
          I109, I110, I111, I112, I113, I114, I115, I116, I117, I118, I119, I120, I121, I122, I123,
          I124, I125, I126, I127, I128, I129, I130, I131, I132, I133, I134, I135, I136, I137, I138,
          I139, I140, I141, I142, I143, I144, I145, I146, I147, I148, I149, I150, I151, I152, I153,
          I154, I155, I156, I157, I158, I159, I160, I161, I162, I163, I164, I165, I166, I167, I168,
          I169, I170, I171, I172, I173, I174, I175, I176, I177, I178, I179, I180, I181, I182, I183,
          I184, I185, I186, I187, I188, I189, I190, I191, I192, I193, I194, I195, I196, I197, I198,
          I199, I200, I201, I202, I203, I204, I205, I206, I207, I208, I209, I210, I211, I212, I213,
          I214, I215, I216, I217, I218, I219, I220, I221, I222, I223, I224, I225, I226, I227, I228,
          I229, I230, I231, I232, I233, I234, I235, I236, I237, I238, I239, I240, I241, I242, I243,
          I244, I245, I246, I247, I248, I249, I250, I251, I252, I253, I254, I255, I256 {
    Instance;
  }

  public interface I1 {}

  public interface I2 {}

  public interface I3 {}

  public interface I4 {}

  public interface I5 {}

  public interface I6 {}

  public interface I7 {}

  public interface I8 {}

  public interface I9 {}

  public interface I10 {}

  public interface I11 {}

  public interface I12 {}

  public interface I13 {}

  public interface I14 {}

  public interface I15 {}

  public interface I16 {}

  public interface I17 {}

  public interface I18 {}

  public interface I19 {}

  public interface I20 {}

  public interface I21 {}

  public interface I22 {}

  public interface I23 {}

  public interface I24 {}

  public interface I25 {}

  public interface I26 {}

  public interface I27 {}

  public interface I28 {}

  public interface I29 {}

  public interface I30 {}

  public interface I31 {}

  public interface I32 {}

  public interface I33 {}

  public interface I34 {}

  public interface I35 {}

  public interface I36 {}

  public interface I37 {}

  public interface I38 {}

  public interface I39 {}

  public interface I40 {}

  public interface I41 {}

  public interface I42 {}

  public interface I43 {}

  public interface I44 {}

  public interface I45 {}

  public interface I46 {}

  public interface I47 {}

  public interface I48 {}

  public interface I49 {}

  public interface I50 {}

  public interface I51 {}

  public interface I52 {}

  public interface I53 {}

  public interface I54 {}

  public interface I55 {}

  public interface I56 {}

  public interface I57 {}

  public interface I58 {}

  public interface I59 {}

  public interface I60 {}

  public interface I61 {}

  public interface I62 {}

  public interface I63 {}

  public interface I64 {}

  public interface I65 {}

  public interface I66 {}

  public interface I67 {}

  public interface I68 {}

  public interface I69 {}

  public interface I70 {}

  public interface I71 {}

  public interface I72 {}

  public interface I73 {}

  public interface I74 {}

  public interface I75 {}

  public interface I76 {}

  public interface I77 {}

  public interface I78 {}

  public interface I79 {}

  public interface I80 {}

  public interface I81 {}

  public interface I82 {}

  public interface I83 {}

  public interface I84 {}

  public interface I85 {}

  public interface I86 {}

  public interface I87 {}

  public interface I88 {}

  public interface I89 {}

  public interface I90 {}

  public interface I91 {}

  public interface I92 {}

  public interface I93 {}

  public interface I94 {}

  public interface I95 {}

  public interface I96 {}

  public interface I97 {}

  public interface I98 {}

  public interface I99 {}

  public interface I100 {}

  public interface I101 {}

  public interface I102 {}

  public interface I103 {}

  public interface I104 {}

  public interface I105 {}

  public interface I106 {}

  public interface I107 {}

  public interface I108 {}

  public interface I109 {}

  public interface I110 {}

  public interface I111 {}

  public interface I112 {}

  public interface I113 {}

  public interface I114 {}

  public interface I115 {}

  public interface I116 {}

  public interface I117 {}

  public interface I118 {}

  public interface I119 {}

  public interface I120 {}

  public interface I121 {}

  public interface I122 {}

  public interface I123 {}

  public interface I124 {}

  public interface I125 {}

  public interface I126 {}

  public interface I127 {}

  public interface I128 {}

  public interface I129 {}

  public interface I130 {}

  public interface I131 {}

  public interface I132 {}

  public interface I133 {}

  public interface I134 {}

  public interface I135 {}

  public interface I136 {}

  public interface I137 {}

  public interface I138 {}

  public interface I139 {}

  public interface I140 {}

  public interface I141 {}

  public interface I142 {}

  public interface I143 {}

  public interface I144 {}

  public interface I145 {}

  public interface I146 {}

  public interface I147 {}

  public interface I148 {}

  public interface I149 {}

  public interface I150 {}

  public interface I151 {}

  public interface I152 {}

  public interface I153 {}

  public interface I154 {}

  public interface I155 {}

  public interface I156 {}

  public interface I157 {}

  public interface I158 {}

  public interface I159 {}

  public interface I160 {}

  public interface I161 {}

  public interface I162 {}

  public interface I163 {}

  public interface I164 {}

  public interface I165 {}

  public interface I166 {}

  public interface I167 {}

  public interface I168 {}

  public interface I169 {}

  public interface I170 {}

  public interface I171 {}

  public interface I172 {}

  public interface I173 {}

  public interface I174 {}

  public interface I175 {}

  public interface I176 {}

  public interface I177 {}

  public interface I178 {}

  public interface I179 {}

  public interface I180 {}

  public interface I181 {}

  public interface I182 {}

  public interface I183 {}

  public interface I184 {}

  public interface I185 {}

  public interface I186 {}

  public interface I187 {}

  public interface I188 {}

  public interface I189 {}

  public interface I190 {}

  public interface I191 {}

  public interface I192 {}

  public interface I193 {}

  public interface I194 {}

  public interface I195 {}

  public interface I196 {}

  public interface I197 {}

  public interface I198 {}

  public interface I199 {}

  public interface I200 {}

  public interface I201 {}

  public interface I202 {}

  public interface I203 {}

  public interface I204 {}

  public interface I205 {}

  public interface I206 {}

  public interface I207 {}

  public interface I208 {}

  public interface I209 {}

  public interface I210 {}

  public interface I211 {}

  public interface I212 {}

  public interface I213 {}

  public interface I214 {}

  public interface I215 {}

  public interface I216 {}

  public interface I217 {}

  public interface I218 {}

  public interface I219 {}

  public interface I220 {}

  public interface I221 {}

  public interface I222 {}

  public interface I223 {}

  public interface I224 {}

  public interface I225 {}

  public interface I226 {}

  public interface I227 {}

  public interface I228 {}

  public interface I229 {}

  public interface I230 {}

  public interface I231 {}

  public interface I232 {}

  public interface I233 {}

  public interface I234 {}

  public interface I235 {}

  public interface I236 {}

  public interface I237 {}

  public interface I238 {}

  public interface I239 {}

  public interface I240 {}

  public interface I241 {}

  public interface I242 {}

  public interface I243 {}

  public interface I244 {}

  public interface I245 {}

  public interface I246 {}

  public interface I247 {}

  public interface I248 {}

  public interface I249 {}

  public interface I250 {}

  public interface I251 {}

  public interface I252 {}

  public interface I253 {}

  public interface I254 {}

  public interface I255 {}

  public interface I256 {}
}
