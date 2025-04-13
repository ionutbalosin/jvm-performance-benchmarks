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
package com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class FileUtil {

  public enum FileSize {
    _64_MB(64 * 1024 * 1024);

    private int sizeInBytes;

    FileSize(int sizeInBytes) {
      this.sizeInBytes = sizeInBytes;
    }

    public int get() {
      return sizeInBytes;
    }
  }

  /*
   * Note: ChunkSize should be a divisor of PageSize (i.e., PageSize should be a multiple of ChunkSize);
   * otherwise, benchmarks relying on this assumption might fail
   */
  public enum ChunkSize {
    _1_KB(1024);

    private int sizeInBytes;

    ChunkSize(int sizeInBytes) {
      this.sizeInBytes = sizeInBytes;
    }

    public int get() {
      return sizeInBytes;
    }
  }

  public static void writeToFile(File file, FileSize fileSize, ChunkSize chunkSize, byte[] buffer)
      throws IOException {
    try (FileOutputStream fos = new FileOutputStream(file)) {
      for (int i = 0; i < fileSize.get(); i += chunkSize.get()) {
        int bytesRemaining = Math.min(fileSize.get() - i, chunkSize.get());
        fos.write(buffer, 0, bytesRemaining);
      }
    }
  }
}
