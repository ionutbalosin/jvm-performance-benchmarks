/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics;

import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.authorWithTheMostPublications;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.authorsWithNoDuplicateCollaborations;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.firstPublicationYear;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.lastPublicationYear;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.mostProlificPairOfAuthors;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.mostProlificPairOfAuthorsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.numberOfPublicationsPerAuthor;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.numberOfPublicationsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.publicationWithTheMostAuthors;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.publicationsPerAuthor;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.publicationsWithTheMostAuthorsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.publicationsYearsStatistics;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.yearWithTheMostPublications;
import static com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.PublicationStatistics.yearsWithTheMostPublications;

import com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.model.Author;
import com.ionutbalosin.jvm.performance.benchmarks.macro.publicationstatistics.model.Publication;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * References:
 * - code examples by Jose Paumard (Twitter: @JosePaumard)
 * - https://github.com/JosePaumard/devoxx-be-2017
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class PublicationStatisticsBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PublicationStatisticsBenchmark.*"

  private static Set<Publication> publications;

  @Setup()
  public void setupTrial() {
    publications = PublicationGenerator.generatePublications();
  }

  @Benchmark
  public Map.Entry<Integer, Long> year_with_the_most_publications() {
    return yearWithTheMostPublications(publications);
  }

  @Benchmark
  public Map.Entry<Long, List<Integer>> years_with_the_most_publications() {
    return yearsWithTheMostPublications(publications);
  }

  @Benchmark
  public int first_publication_year() {
    return firstPublicationYear(publications);
  }

  @Benchmark
  public int last_publication_year() {
    return lastPublicationYear(publications);
  }

  @Benchmark
  public Map.Entry<Author, Long> author_with_the_most_publications() {
    return authorWithTheMostPublications(publications);
  }

  @Benchmark
  public Set<Author> authors_with_no_duplicate_collaborations() {
    return authorsWithNoDuplicateCollaborations(publications);
  }

  @Benchmark
  public Map<Author, List<Publication>> publications_per_author() {
    return publicationsPerAuthor(publications);
  }

  @Benchmark
  public Map<Integer, Long> number_of_publications_per_year() {
    return numberOfPublicationsPerYear(publications);
  }

  @Benchmark
  public Map<Author, Long> number_of_publications_per_author() {
    return numberOfPublicationsPerAuthor(publications);
  }

  @Benchmark
  public Publication publication_with_the_most_authors() {
    return publicationWithTheMostAuthors(publications);
  }

  @Benchmark
  public Map<Integer, Publication> publications_with_the_most_authors_per_year() {
    return publicationsWithTheMostAuthorsPerYear(publications);
  }

  @Benchmark
  public IntSummaryStatistics publications_years_statistics() {
    return publicationsYearsStatistics(publications);
  }

  @Benchmark
  public Map.Entry<Map.Entry<Author, Author>, Long> most_prolific_pair_of_authors() {
    return mostProlificPairOfAuthors(publications);
  }

  @Benchmark
  public Map<Integer, Map.Entry<Map.Entry<Author, Author>, Long>>
      most_prolific_pair_of_authors_per_year() {
    return mostProlificPairOfAuthorsPerYear(publications);
  }
}
