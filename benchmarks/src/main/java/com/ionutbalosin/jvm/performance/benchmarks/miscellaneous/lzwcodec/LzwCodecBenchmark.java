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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec.LzwCodec.ISO_8859_1;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec.LzwCompress.compressData;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.lzwcodec.LzwDecompress.decompressData;

import java.util.Random;
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
 * LZW (Lempel-Ziv-Welch) Compression and Decompression Algorithm
 *
 * The LZW algorithm is a lossless data compression technique used to reduce the size of data by encoding repetitive patterns in a more efficient manner.
 *
 * The algorithm consists of two main operations: compression and decompression:
 *
 * - The compression process involves converting a sequence of characters into a sequence of variable-length codes.
 * The algorithm initializes a dictionary containing single-character entries. It then processes the input data one character at a time.
 * A current sequence of characters is built by appending characters to the existing sequence.
 * If the current sequence is present in the dictionary, it is extended by adding the next character.
 * If the sequence is not found, its code is emitted, and a new entry is added to the dictionary.
 * The compression process continues until all input characters are processed.
 *
 * - The decompression process involves converting the variable-length codes back into the original sequence of characters.
 * Similar to compression, the algorithm initializes a dictionary containing single-character entries.
 * It processes the input codes one by one, looking up the corresponding sequence in the dictionary.
 * If the sequence is present, it is appended to the decompressed output. If not, a new sequence is created by concatenating
 * the previous sequence with its first character. The new sequence is then added to the dictionary for future reference.
 * The decompression process continues until all input codes are processed.
 *
 * Limitations:
 * - LZW may not be as efficient for data with little to no repetitive patterns (i.e., LZW is optimized for repetitive patterns).
 * - The compression dictionary size can grow large for longer input data, leading to increased memory usage.
 *
 * Important:
 * - In the current implementation, the generated input char array follows a repetitive pattern.
 * Generating input without a repetitive pattern might require a more complex (i.e., an improved) version of the current LZW algorithm.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class LzwCodecBenchmark {

  // $ java -jar */*/benchmarks.jar ".*LzwCodecBenchmark.*"

  private final Random random = new Random(16384);

  private char[] data, dataCompressed, dataDecompressed;

  @Param({"262144"})
  private int dataSize;

  @Setup()
  public void setup() {
    // initialize data
    data = charArray(dataSize);

    // compress/decompress data
    dataCompressed = compressData(data);
    dataDecompressed = decompressData(dataCompressed);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(data, dataCompressed, dataDecompressed);
  }

  @Benchmark
  public char[] compress() {
    return compressData(data);
  }

  @Benchmark
  public char[] decompress() {
    return decompressData(dataCompressed);
  }

  private char[] charArray(int length) {
    final char[] charArray = new char[length];
    int threshold = random.nextInt(ISO_8859_1 + 1);

    for (int i = 0; i < length; i++) {
      // Generate (on purpose) a repetitive pattern of characters
      charArray[i] = (char) (i % threshold);
    }

    return charArray;
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param input - source char array to compress
   * @param compressed - compressed char array
   * @param decompressed - decompressed char array
   */
  private void sanityCheck(char[] input, char[] compressed, char[] decompressed) {
    if (compressed.length >= input.length) {
      throw new AssertionError("Compressed array is bigger than the source array.");
    }

    if (input.length != decompressed.length) {
      throw new AssertionError("Arrays have different length.");
    }

    for (int i = 0; i < input.length; i++) {
      if (input[i] != decompressed[i]) {
        throw new AssertionError("Array values are different.");
      }
    }
  }
}
