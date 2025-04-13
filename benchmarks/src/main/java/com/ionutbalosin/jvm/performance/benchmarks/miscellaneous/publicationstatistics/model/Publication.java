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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model;

import java.util.List;
import java.util.Objects;

public class Publication {

  private int year;
  private final String title;
  private final String type;
  private final List<Author> authors;

  public Publication(int year, String title, String type, List<Author> authors) {
    this.year = year;
    this.title = title;
    this.type = type;
    this.authors = authors;
  }

  public int getYear() {
    return year;
  }

  public String getTitle() {
    return title;
  }

  public List<Author> getAuthors() {
    return authors;
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) return true;
    if (o == null || getClass() != o.getClass()) return false;
    Publication article = (Publication) o;
    return year == article.year
        && Objects.equals(title, article.title)
        && Objects.equals(type, article.type);
  }

  @Override
  public int hashCode() {
    return Objects.hash(year, title, type);
  }

  @Override
  public String toString() {
    return "Publication{"
        + "year="
        + year
        + ", title='"
        + title
        + '\''
        + ", type='"
        + type
        + '\''
        + ", authors="
        + authors
        + '}';
  }
}
