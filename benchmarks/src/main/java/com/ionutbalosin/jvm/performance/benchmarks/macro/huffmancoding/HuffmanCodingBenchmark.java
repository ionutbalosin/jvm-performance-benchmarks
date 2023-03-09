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
package com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.CODING_TYPE.ENCODE_DECODE;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.CODING_TYPE.ENCODE_ONLY;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.charFrequency;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.encodeDecode;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.encodingTree;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanEncoder.encodingMap;

import com.ionutbalosin.jvm.performance.benchmarks.macro.huffmancoding.HuffmanCoding.CODING_TYPE;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.TearDown;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Huffman encoding is an algorithm devised by David A. Huffman of MIT in 1952 for compressing text data to make a file
 * occupy a smaller number of bytes. This relatively simple compression algorithm is powerful enough that variations of it
 * are still used today in computer networks, fax machines, modems, HDTV, and other areas.
 *
 * The steps involved in Huffman encoding a given text source file into a destination compressed file are:
 * - count frequencies: examine a source file's contents and count the number of occurrences of each character
 * - build encoding tree: build a binary tree with a particular structure, where each node represents a character
 * and its count of occurrences in the file. A priority queue is used to help build the tree along the way.
 * - build encoding map: traverse the binary tree to discover the binary encodings of each character
 * - encode data: re-examine the source file's contents, and for each character, output the encoded binary version of
 * that character to the destination file.
 *
 * Note: the benchmark adds one more final step: it decodes the previously encoded data (and does a basic sanity check)
 *
 * References:
 * - https://web.stanford.edu/class/archive/cs/cs106b/cs106b.1176/assn/huffman.html
 * - https://www.techiedelight.com/huffman-coding
 * - https://www.w3.org/2001/06/utf-8-test/UTF-8-demo.html
 * - https://raw.githubusercontent.com/teropa/nlp/master/resources/corpora/gutenberg/shakespeare-caesar.txt
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class HuffmanCodingBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HuffmanCodingBenchmark.*"

  private static final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private static final String FILE_NAME =
      CURRENT_DIR + "/benchmarks/src/main/resources/huffman_coding.txt";

  private long inputFileSize;
  private File outputFile;
  private OutputStream outputStream;

  @Param private CODING_TYPE codingType;

  @Setup(Level.Trial)
  public void setupTrial() throws IOException {
    inputFileSize = Files.size(Paths.get(FILE_NAME));
    outputFile = File.createTempFile("huffman_coding", ".tmp");
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
    if (outputFile != null) {
      outputFile.delete();
    }
  }

  @Setup(Level.Invocation)
  public void setupInvocation() throws FileNotFoundException {
    outputStream = new BufferedOutputStream(new FileOutputStream(outputFile));
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() throws IOException {
    if (outputStream != null) {
      outputStream.close();
    }

    // make sure the results are valid
    sanityCheck(codingType, inputFileSize, outputFile.length());
  }

  @Benchmark
  public void encode_decode() throws IOException {
    encode_decode(codingType);
  }

  private void encode_decode(CODING_TYPE type) throws IOException {
    final Map<Character, Integer> frequency = charFrequency(FILE_NAME);
    final TreeNode root = encodingTree(frequency);
    final Map<Character, String> huffmanCodes = encodingMap(root);
    encodeDecode(FILE_NAME, root, huffmanCodes, outputStream, type);
  }

  /**
   * Sanity check for the results to avoid wrong benchmarking behaviour
   *
   * @param codingType - test case coding type
   * @param val1 - input file length in bytes
   * @param val2 - output (i.e., encoded/decoded) file length in bytes
   */
  private void sanityCheck(CODING_TYPE codingType, long val1, long val2) {
    if (codingType == ENCODE_ONLY && val1 <= val2) {
      throw new AssertionError("The encoded file should be smaller than the input file.");
    }

    if (codingType == ENCODE_DECODE && val1 != val2) {
      throw new AssertionError("The decoded file should have the same length as the input file.");
    }
  }
}
