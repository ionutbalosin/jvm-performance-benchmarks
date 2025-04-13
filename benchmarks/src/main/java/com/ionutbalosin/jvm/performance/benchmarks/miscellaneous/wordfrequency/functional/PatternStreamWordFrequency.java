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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.functional;

import static java.nio.channels.FileChannel.MapMode.READ_ONLY;
import static java.nio.charset.StandardCharsets.ISO_8859_1;
import static java.util.function.Function.identity;
import static java.util.stream.Collectors.counting;
import static java.util.stream.Collectors.groupingBy;

import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.channels.FileChannel;
import java.util.Map;
import java.util.regex.Pattern;

public class PatternStreamWordFrequency {

  private static final Pattern PATTERN = Pattern.compile("[\\W]+");

  public static Map<String, Long> frequencies(String fileName) throws IOException {
    final Map<String, Long> wordFrequencies;

    try (FileChannel channel = new RandomAccessFile(fileName, "r").getChannel()) {
      final ByteBuffer byteBuffer = channel.map(READ_ONLY, 0L, channel.size());
      final CharBuffer charBuffer = ISO_8859_1.newDecoder().decode(byteBuffer);
      wordFrequencies =
          PATTERN.splitAsStream(charBuffer).collect(groupingBy(identity(), counting()));
    }

    return wordFrequencies;
  }
}
