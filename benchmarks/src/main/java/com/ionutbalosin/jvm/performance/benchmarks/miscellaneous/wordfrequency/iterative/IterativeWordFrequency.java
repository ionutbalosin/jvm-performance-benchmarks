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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.wordfrequency.iterative;

import static java.nio.charset.StandardCharsets.ISO_8859_1;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

public class IterativeWordFrequency {

  private static final Pattern PATTERN = Pattern.compile("[\\W]+");

  public static Map<String, Long> frequencies(String fileName) throws IOException {
    final Map<String, Long> wordFrequencies = new HashMap<>();

    try (BufferedReader reader =
        new BufferedReader(new InputStreamReader(new FileInputStream(fileName), ISO_8859_1))) {
      for (String line; (line = reader.readLine()) != null; ) {
        for (final String word : PATTERN.split(line)) {
          if (!word.isBlank()) {
            final Long frequency = wordFrequencies.get(word);
            if (null == frequency) {
              wordFrequencies.put(word, 1L);
            } else {
              wordFrequencies.put(word, frequency + 1);
            }
          }
        }
      }
    }

    return wordFrequencies;
  }
}
