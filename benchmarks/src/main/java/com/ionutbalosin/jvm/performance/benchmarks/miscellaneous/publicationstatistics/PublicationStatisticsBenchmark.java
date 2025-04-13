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

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.authorWithTheMostPublications;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.authorsWithNoDuplicateCollaborations;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.mostProlificPairOfAuthors;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.mostProlificPairOfAuthorsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.numberOfPublicationsPerAuthor;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.numberOfPublicationsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.publicationWithTheMostAuthors;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.publicationsPerAuthor;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.publicationsWithTheMostAuthorsPerYear;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.publicationsYearsStatistics;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.yearOfTheFirstPublication;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.yearOfTheLastPublication;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.yearWithTheMostPublications;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics.yearsWithTheMostPublications;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication;
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
 * This benchmark extensively uses the Collectors/Streams API to perform a bunch of operations on a list of publications and their authors
 * producing different final results (i.e., statistics), including:
 * - the year(s) with the most publications
 * - the number of publications for each author
 * - the author who published the most articles
 * - the authors who have never collaborated with the same publication twice
 * - the year of the first publication
 * - the year of the last publication
 * - the publication with the most authors (for each year).
 * - the pair of authors who published the most publications together (for each year).
 *
 * The list of publications is randomly generated at the beginning of the benchmark and consists of 100,000 items,
 * with each publication having a maximum of 9 authors. All of these publications are generated between the years 1900 and 2000,
 * and in total, they have around 100 distinct types.
 * The total number of authors is 1,000 (which means, on average, every author could potentially write around 100 articles).
 *
 * References:
 * - code examples by Jose Paumard (Twitter: @JosePaumard)
 * - https://github.com/JosePaumard/devoxx-be-2017
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
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
    return yearOfTheFirstPublication(publications);
  }

  @Benchmark
  public int last_publication_year() {
    return yearOfTheLastPublication(publications);
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
