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

import java.awt.geom.AffineTransform;
import java.awt.image.AffineTransformOp;
import java.awt.image.BufferedImage;

public class ImageRotate {

  public static BufferedImage rotateImage(BufferedImage image, int numQuadrants) {
    int width0 = image.getWidth();
    int height0 = image.getHeight();
    int width1 = width0;
    int height1 = height0;

    int centerX = width0 / 2;
    int centerY = height0 / 2;

    if (numQuadrants % 2 == 1) {
      width1 = height0;
      height1 = width0;
    }

    if (numQuadrants % 4 == 1) {
      if (width0 > height0) {
        centerX = height0 / 2;
        centerY = height0 / 2;
      } else if (height0 > width0) {
        centerX = width0 / 2;
        centerY = width0 / 2;
      }
      // if height0 == width0, then use default
    } else if (numQuadrants % 4 == 3) {
      if (width0 > height0) {
        centerX = width0 / 2;
        centerY = width0 / 2;
      } else if (height0 > width0) {
        centerX = height0 / 2;
        centerY = height0 / 2;
      }
      // if height0 == width0, then use default
    }

    final AffineTransform affineTransform = new AffineTransform();
    affineTransform.setToQuadrantRotation(numQuadrants, centerX, centerY);

    final AffineTransformOp opRotated =
        new AffineTransformOp(affineTransform, AffineTransformOp.TYPE_BILINEAR);

    BufferedImage transformedImage = new BufferedImage(width1, height1, image.getType());
    transformedImage = opRotated.filter(image, transformedImage);

    return transformedImage;
  }
}
