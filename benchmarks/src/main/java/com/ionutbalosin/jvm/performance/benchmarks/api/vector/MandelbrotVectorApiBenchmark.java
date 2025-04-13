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
import java.util.concurrent.TimeUnit;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmark computing the Mandelbrot set using the VectorAPI.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5, jvmArgsAppend = "--add-modules=jdk.incubator.vector")
@State(Scope.Benchmark)
public class MandelbrotVectorApiBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MandelbrotVectorApiBenchmark.*"

  private static final VectorSpecies<Double> DOUBLE_VECTOR_SPECIES = DoubleVector.SPECIES_PREFERRED;

  @Param({"256", "512"})
  private int size;

  @Param({"1000", "2000"})
  private int iterations;

  private double[] result;

  // Vector containing 1 2 3 ... SPECIES_LENGTH
  private static final DoubleVector increments;

  // Javadoc of the Vector API suggests to store all instances of Vector in static final fields
  // whenever possible. This can aid the optimizer and avoid performance penalties.
  static {
    double[] increments_arr = new double[DOUBLE_VECTOR_SPECIES.length()];
    for (int i = 0; i < increments_arr.length; i++) {
      increments_arr[i] = i;
    }
    increments = DoubleVector.fromArray(DOUBLE_VECTOR_SPECIES, increments_arr, 0);
  }

  private static final DoubleVector ones =
      DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) 1);

  @Setup
  public void setup() {
    result = new double[size * size];
  }

  @Benchmark
  public Object baseline() {
    double threshold = 4;

    for (int row = 0; row < size; row++) {
      for (int col = 0; col < size; col++) {
        double c_re = (col - size / 2.0) * 4.0 / size;
        double c_im = (row - size / 2.0) * 4.0 / size;
        double x = 0, y = 0;
        int iteration = 0;
        while (iteration < iterations && x * x + y * y <= threshold) {
          double x_new = x * x - y * y + c_re;
          y = 2 * x * y + c_im;
          x = x_new;

          iteration++;
        }
        if (iteration < iterations) result[row * size + col] = 0;
        else result[row * size + col] = 1;
      }
    }
    return result;
  }

  @Benchmark
  public Object vectorized() {
    double threshold = 4;

    for (int row = 0;
        row < DOUBLE_VECTOR_SPECIES.loopBound(size);
        row += DOUBLE_VECTOR_SPECIES.length()) {
      DoubleVector row_vector = DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) row);

      for (int col = 0;
          col < DOUBLE_VECTOR_SPECIES.loopBound(size);
          col += DOUBLE_VECTOR_SPECIES.length()) {
        DoubleVector col_vector =
            DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) col).add(increments);
        DoubleVector c_re = col_vector.sub(size / 2.0).mul(4.0 / size);
        DoubleVector c_im = row_vector.sub(size / 2.0).mul(4.0 / size);

        DoubleVector x = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);
        DoubleVector y = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);

        DoubleVector x_square = x.mul(x);
        DoubleVector y_square = y.mul(y);

        DoubleVector iter_vector = DoubleVector.zero(DOUBLE_VECTOR_SPECIES);
        int iter = 0;
        while (iter < iterations) {
          DoubleVector x_new = x_square.sub(y_square).add(c_re);
          y = x.add(x).mul(y).add(c_im);
          x = x_new;

          x_square = x.mul(x);
          y_square = y.mul(y);

          VectorMask<Double> comp_res =
              x_square.add(y_square).compare(VectorOperators.LE, threshold);
          iter_vector = iter_vector.add(ones, comp_res);
          if (!comp_res.anyTrue()) {
            break;
          }
          iter++;
        }
        DoubleVector res_vector =
            DoubleVector.zero(DOUBLE_VECTOR_SPECIES)
                .add(1, iter_vector.compare(VectorOperators.EQ, iterations));
        res_vector.intoArray(result, row * size + col);
      }
    }
    return result;
  }

  @TearDown(Level.Trial)
  public void tearDownInvocation() {
    double[] seq_res = (double[]) baseline();
    seq_res = Arrays.copyOf(seq_res, seq_res.length);
    double[] vectorized_res = (double[]) vectorized();
    vectorized_res = Arrays.copyOf(vectorized_res, vectorized_res.length);

    if (!Arrays.equals(seq_res, vectorized_res)) {
      throw new AssertionError("The two implementations gave different results");
    }
  }
}
