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
import java.util.Random;
import java.util.concurrent.TimeUnit;
import jdk.incubator.vector.*;
import org.openjdk.jmh.annotations.*;

/*
 * This is inspired from "Sorting an AVX512 register" http://0x80.pl/articles/avx512-sort-register.html and from
 * http://hg.openjdk.java.net/panama/dev/file/a059f2c353cf/test/jdk/jdk/incubator/vector/benchmark/src/main/java/benchmark/jdk/incubator/vector/SortVector.java
 *
 * The idea is to sort elements in AVX registers using only intermediate registers.
 */
@BenchmarkMode(Mode.AverageTime)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@State(Scope.Benchmark)
@Fork(
    value = 5,
    jvmArgsPrepend = {"--add-modules=jdk.incubator.vector"})
public class SortVectorApiBenchmark {

  @Param({"64", "1024", "65536"})
  int size;

  @Param({"64", "128", "256", "512"})
  int vector_size;

  VectorSpecies<Integer> species;

  int[] input, result;

  @Setup
  public void setup() {
    species = VectorSpecies.of(int.class, VectorShape.forBitSize(vector_size));

    Random random = new Random();
    input = new int[size];
    for (int i = 0; i < size; i++) {
      input[i] = random.nextInt();
    }
    result = new int[size];
  }

  @Benchmark
  public void sortVector() {
    VectorSpecies<Integer> species = this.species;
    var increments = VectorShuffle.iota(species, 0, 1, false).toVector();
    var result = IntVector.broadcast(species, 0);
    var index = IntVector.broadcast(species, 0);
    var increment = IntVector.broadcast(species, 1);
    for (int i = 0; i < input.length; i += species.length()) {
      var input = IntVector.fromArray(species, this.input, i);
      for (int j = 0; j < species.length(); j++) {
        var element = input.lane(j);
        var elem_broadcast = IntVector.broadcast(species, element);
        var lt = input.lt(elem_broadcast).trueCount();
        var eq = input.eq(elem_broadcast).trueCount();
        var mask =
            increments
                .lt(species.broadcast(lt + eq))
                .and(increments.lt(species.broadcast(lt)).not());
        result = result.blend(elem_broadcast, mask);
        index = index.add(increment);
      }
      result.intoArray(this.result, i);
    }
  }

  @TearDown(Level.Trial)
  public void tearDown() {
    int[] tmp = new int[species.length()];
    int[] tmp1 = new int[species.length()];

    for (int i = 0; i < input.length; i += species.length()) {
      for (int j = 0; j < species.length(); j++) {
        tmp[j] = result[i + j];
        tmp1[j] = input[i + j];
      }

      Arrays.sort(tmp1);
      if (!Arrays.equals(tmp, tmp1)) {
        throw new AssertionError(
            "Arrays are not equal: " + Arrays.toString(tmp) + " != " + Arrays.toString(tmp1));
      }
    }
  }
}
