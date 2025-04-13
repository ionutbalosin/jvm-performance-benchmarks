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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication;
import java.util.HashSet;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class PublicationGenerator {

  private static final int PUBLICATIONS = 100_000;
  public static final int FIRST_YEAR = 1900;
  public static final int LAST_YEAR = 2000;
  private static final int PUBLICATION_TYPES = 100;
  private static final int AUTHORS = 1_000;
  private static final int MAX_AUTHORS_PER_PUBLICATION = 9;
  private static final Random random = new Random(16384);

  public static Set<Publication> generatePublications() {
    final Set<Publication> publication = new HashSet<>(PUBLICATIONS);

    for (int i = 1; i <= PUBLICATIONS; i++) {
      int year = FIRST_YEAR + random.nextInt(LAST_YEAR - FIRST_YEAR + 1);
      String title = "Title_" + i;
      String type = "Type_" + random.nextInt(PUBLICATION_TYPES);
      List<Author> authors = generateAuthors();
      publication.add(new Publication(year, title, type, authors));
    }

    return publication;
  }

  private static List<Author> generateAuthors() {
    return IntStream.range(1, random.nextInt(MAX_AUTHORS_PER_PUBLICATION) + 2)
        .mapToObj(counter -> "Author_" + random.nextInt(AUTHORS))
        .map(Author::of)
        .collect(Collectors.toList());
  }
}
