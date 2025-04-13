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
package com.ionutbalosin.jvm.performance.benchmarks.api.vector;

import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmark applying the Sepia filter to a random set of bits using the VectorAPI.
 *
 * References:
 *  - http://cr.openjdk.java.net/~psandoz/conferences/2017-JavaOne/j1-2017-Vector-API-CON4826.pdf
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsAppend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class SepiaVectorApiBenchmark {

  // $ java -jar */*/benchmarks.jar ".*SepiaVectorApiBenchmark.*"

  private static final VectorSpecies<Float> FLOAT_SPECIES = FloatVector.SPECIES_PREFERRED;

  @Param({"32768", "65536"})
  private int size;

  private float[] inputR;
  private float[] inputG;
  private float[] inputB;
  private float[] resultR;
  private float[] resultG;
  private float[] resultB;

  private static final float r1 = 0.393f,
      r2 = 0.349f,
      r3 = 0.272f,
      g1 = 0.769f,
      g2 = 0.686f,
      g3 = 0.534f,
      b1 = 0.189f,
      b2 = 0.168f,
      b3 = 0.131f;

  @Setup
  public void setup() {
    inputR = new float[size];
    inputG = new float[size];
    inputB = new float[size];
    resultR = new float[size];
    resultG = new float[size];
    resultB = new float[size];
    Random random = new Random(1234);
    for (int i = 0; i < size; i++) {
      inputR[i] = Float.MIN_VALUE + random.nextFloat() * Float.MAX_VALUE;
      inputG[i] = Float.MIN_VALUE + random.nextFloat() * Float.MAX_VALUE;
      inputB[i] = Float.MIN_VALUE + random.nextFloat() * Float.MAX_VALUE;
    }
  }

  @Benchmark
  public Object baseline() {
    for (int i = 0; i < size; i++) {
      resultR[i] = r1 * inputR[i] + g1 * inputG[i] + b1 * inputB[i];
      resultG[i] = r2 * inputR[i] + g2 * inputG[i] + b2 * inputB[i];
      resultB[i] = r3 * inputR[i] + g3 * inputG[i] + b3 * inputB[i];
      if (resultR[i] > 255f) {
        resultR[i] = 255f;
      }
      if (resultG[i] > 255f) {
        resultG[i] = 255f;
      }
      if (resultB[i] > 255f) {
        resultB[i] = 255f;
      }
    }
    return resultR;
  }

  @Benchmark
  public Object vectorized() {
    for (int i = 0; i < FLOAT_SPECIES.loopBound(size); i += FLOAT_SPECIES.length()) {
      FloatVector rr1 = FloatVector.broadcast(FLOAT_SPECIES, r1);
      FloatVector gg1 = FloatVector.broadcast(FLOAT_SPECIES, g1);
      FloatVector bb1 = FloatVector.broadcast(FLOAT_SPECIES, b1);
      FloatVector rr2 = FloatVector.broadcast(FLOAT_SPECIES, r2);
      FloatVector gg2 = FloatVector.broadcast(FLOAT_SPECIES, g2);
      FloatVector bb2 = FloatVector.broadcast(FLOAT_SPECIES, b2);
      FloatVector rr3 = FloatVector.broadcast(FLOAT_SPECIES, r3);
      FloatVector gg3 = FloatVector.broadcast(FLOAT_SPECIES, g3);
      FloatVector bb3 = FloatVector.broadcast(FLOAT_SPECIES, b3);
      FloatVector black = FloatVector.broadcast(FLOAT_SPECIES, 255f);
      FloatVector redVec = FloatVector.fromArray(FLOAT_SPECIES, inputR, i);
      FloatVector greenVec = FloatVector.fromArray(FLOAT_SPECIES, inputG, i);
      FloatVector blueVec = FloatVector.fromArray(FLOAT_SPECIES, inputB, i);
      FloatVector res1 = redVec.mul(rr1).add(greenVec.mul(gg1)).add(blueVec.mul(bb1));
      FloatVector res2 = redVec.mul(rr2).add(greenVec.mul(gg2)).add(blueVec.mul(bb2));
      FloatVector res3 = redVec.mul(rr3).add(greenVec.mul(gg3)).add(blueVec.mul(bb3));
      res1.blend(black, res1.compare(VectorOperators.GT, black)).intoArray(resultR, i);
      res2.blend(black, res2.compare(VectorOperators.GT, black)).intoArray(resultG, i);
      res3.blend(black, res3.compare(VectorOperators.GT, black)).intoArray(resultB, i);
    }
    return resultR;
  }

  @TearDown(Level.Trial)
  public void tearDownInvocation() {
    baseline();
    float[] seq_r = Arrays.copyOf(resultR, resultB.length);
    float[] seq_g = Arrays.copyOf(resultG, resultG.length);
    float[] seq_b = Arrays.copyOf(resultB, resultB.length);
    vectorized();
    float[] vec_r = Arrays.copyOf(resultR, resultB.length);
    float[] vec_g = Arrays.copyOf(resultG, resultG.length);
    float[] vec_b = Arrays.copyOf(resultB, resultB.length);

    if (!Arrays.equals(seq_r, vec_r)) {
      throw new AssertionError("The two implementations gave different results");
    }
    if (!Arrays.equals(seq_g, vec_g)) {
      throw new AssertionError("The two implementations gave different results");
    }
    if (!Arrays.equals(seq_b, vec_b)) {
      throw new AssertionError("The two implementations gave different results");
    }
  }
}
