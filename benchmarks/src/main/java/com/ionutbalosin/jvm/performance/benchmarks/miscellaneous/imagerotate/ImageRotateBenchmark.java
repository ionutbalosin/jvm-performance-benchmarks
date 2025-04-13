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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.imagerotate;

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.imagerotate.ImageRotate.rotateImage;

import java.awt.image.BufferedImage;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.TimeUnit;
import javax.imageio.ImageIO;
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
 * Rotates a JPEG image clockwise by 90, 180, 270, and 360 degrees (initial position) using the java.awt API.
 * The initial image to be rotated has a resolution of 6253 x 4169 pixels and a file size of 18.7 MB.
 *
 * References:
 * - http://www.java2s.com/example/java-utility-method/image-rotate/rotateimage-final-file-imagepath-int-numquadrants-49abf.html
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ImageRotateBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ImageRotateBenchmark.*"

  private final String FILE_TYPE = "jpeg";
  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME = CURRENT_DIR + "/benchmarks/src/main/resources/food_banquet.jpg";

  // Each quadrant number corresponds to clockwise degrees, as follows:
  // 1 - rotate 90 degrees clockwise
  // 2 - rotate 180 degrees clockwise
  // 3 - rotate 270 degrees clockwise
  // 4 - rotate 360 degrees clockwise
  @Param({"1", "2", "3", "4"})
  private int quadrant;

  private File outputFile;
  private BufferedImage inputBufferedImage, outputBufferedImage;

  @Setup(Level.Trial)
  public void setupTrial() throws IOException {
    outputFile = File.createTempFile("food_banquet_quadrant_" + quadrant + "_", "." + FILE_TYPE);
  }

  @TearDown(Level.Trial)
  public void tearDownTrial() {
    if (outputFile != null) {
      outputFile.delete();
    }
  }

  @Setup(Level.Invocation)
  public void setupInvocation() throws IOException {
    try (InputStream inputStream = new BufferedInputStream(new FileInputStream(FILE_NAME))) {
      inputBufferedImage = ImageIO.read(inputStream);
    }
  }

  @TearDown(Level.Invocation)
  public void tearDownInvocation() throws IOException {
    try (OutputStream outputStream = new BufferedOutputStream(new FileOutputStream(outputFile))) {
      ImageIO.write(outputBufferedImage, FILE_TYPE, outputStream);
    }

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(inputBufferedImage, outputBufferedImage);
  }

  @Benchmark
  public void rotate() {
    outputBufferedImage = rotateImage(inputBufferedImage, quadrant);
  }

  /**
   * Sanity check for the image rotation results to ensure correctness.
   *
   * @param sourceImage - original image
   * @param destImage - rotated image
   */
  private void sanityCheck(BufferedImage sourceImage, BufferedImage destImage) {
    if (sourceImage.getData().getDataBuffer().getSize()
        != destImage.getData().getDataBuffer().getSize()) {
      throw new AssertionError("The rotated image size is not equal to the original image size.");
    }

    // the image is rotated 90 or 270 degrees clockwise
    if (quadrant == 1 || quadrant == 3) {
      if (sourceImage.getHeight() != destImage.getWidth()) {
        throw new AssertionError(
            "The image rotated in quadrant " + quadrant + " has a different width.");
      }
      if (sourceImage.getWidth() != destImage.getHeight()) {
        throw new AssertionError(
            "The image rotated in quadrant " + quadrant + " has a different height.");
      }
    }

    // the image is rotated 180 or 360 degrees clockwise
    if (quadrant == 2 || quadrant == 4) {
      if (sourceImage.getHeight() != destImage.getHeight()) {
        throw new AssertionError(
            "The image rotated in quadrant " + quadrant + " has a different height.");
      }
      if (sourceImage.getWidth() != destImage.getWidth()) {
        throw new AssertionError(
            "The image rotated in quadrant " + quadrant + " has a different width.");
      }
    }
  }
}
