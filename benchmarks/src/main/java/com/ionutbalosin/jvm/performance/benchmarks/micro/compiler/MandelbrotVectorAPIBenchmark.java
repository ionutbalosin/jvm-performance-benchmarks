/**
 *  JVM Performance Benchmarks
 *
 *  Copyright (C) 2019 - 2022 Ionut Balosin
 *  Website: www.ionutbalosin.com
 *  Twitter: @ionutbalosin
 *
 *  Co-author: Florin Blanaru
 *  Twitter: @gigiblender
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */
package com.ionutbalosin.jvm.performance.benchmarks.micro.compiler;

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
public class MandelbrotVectorAPIBenchmark {

  private static final VectorSpecies<Double> DOUBLE_VECTOR_SPECIES = DoubleVector.SPECIES_PREFERRED;

  @Param({"256", "512"})
  private int size;

  @Param({"1000", "2000"})
  private int iterations;

  private double[] result;

  // Vector containing 1 2 3 ... SPECIES_LENGTH
  private DoubleVector increments;
  private DoubleVector ones;

  @Setup
  public void setup() {
    result = new double[size * size];
    double[] increments = new double[DOUBLE_VECTOR_SPECIES.length()];
    for (int i = 0; i < increments.length; i++) {
      increments[i] = i;
    }
    this.increments = DoubleVector.fromArray(DOUBLE_VECTOR_SPECIES, increments, 0);
    this.ones = DoubleVector.broadcast(DOUBLE_VECTOR_SPECIES, (double) 1);
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
