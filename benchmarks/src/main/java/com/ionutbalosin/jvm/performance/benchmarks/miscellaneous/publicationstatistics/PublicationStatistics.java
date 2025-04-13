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

import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationGenerator.FIRST_YEAR;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors.crossProductOrdered;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors.groupingByAndCounting;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors.groupingBySelfAndCounting;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors.maxByValue;
import static com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors.removeEmptyStreams;
import static java.util.Comparator.comparing;
import static java.util.stream.Collectors.collectingAndThen;

import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication;
import com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors;
import java.util.Comparator;
import java.util.IntSummaryStatistics;
import java.util.List;
import java.util.Map;
import java.util.Optional;
import java.util.Set;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class PublicationStatistics {

  // Returns the number of publications for each year
  public static Map<Integer, Long> numberOfPublicationsPerYear(Set<Publication> publications) {
    final Map<Integer, Long> result =
        publications.stream().collect(groupingByAndCounting(Publication::getYear));

    return result;
  }

  // Returns one (i.e., the first) year with the most publications
  public static Map.Entry<Integer, Long> yearWithTheMostPublications(
      Set<Publication> publications) {
    final Map.Entry<Integer, Long> result =
        publications.stream()
            .collect(collectingAndThen(groupingByAndCounting(Publication::getYear), maxByValue()));

    return result;
  }

  // Returns all years with the most publications (in case there are many)
  public static Map.Entry<Long, List<Integer>> yearsWithTheMostPublications(
      Set<Publication> publications) {
    final Map<Integer, Long> numberOfPublicationsPerYear =
        numberOfPublicationsPerYear(publications);
    final Map.Entry<Long, List<Integer>> result =
        numberOfPublicationsPerYear.entrySet().stream()
            .collect(Collectors.groupingBy(entry -> entry.getValue()))
            .entrySet()
            .stream()
            .collect(
                Collectors.toMap(
                    entry -> entry.getKey(),
                    entry ->
                        entry.getValue().stream()
                            .map(e -> e.getKey())
                            .collect(Collectors.toList())))
            .entrySet()
            .stream()
            .max(Map.Entry.comparingByKey())
            .get();

    return result;
  }

  // Returns the number of publications for each author
  public static Map<Author, Long> numberOfPublicationsPerAuthor(Set<Publication> publications) {
    final Map<Author, Long> result =
        publications.stream()
            .flatMap(publication -> publication.getAuthors().stream())
            .collect(groupingBySelfAndCounting());

    return result;
  }

  // Returns the author who published the most articles
  public static Map.Entry<Author, Long> authorWithTheMostPublications(
      Set<Publication> publications) {
    final Map.Entry<Author, Long> result =
        publications.stream()
            .flatMap(publication -> publication.getAuthors().stream())
            .collect(Collectors.collectingAndThen(groupingBySelfAndCounting(), maxByValue()));

    return result;
  }

  // Returns the authors who have never collaborated with the same publication twice
  public static Set<Author> authorsWithNoDuplicateCollaborations(Set<Publication> publications) {
    return publications.stream()
        .flatMap(publication -> publication.getAuthors().stream())
        .collect(Collectors.groupingBy(author -> author.getName(), Collectors.toSet()))
        .values()
        .stream()
        .filter(
            collaborations ->
                collaborations.size()
                    == collaborations.stream().map(Author::getName).distinct().count())
        .flatMap(Set::stream)
        .collect(Collectors.toSet());
  }

  // Returns the year of the first publication
  public static int yearOfTheFirstPublication(Set<Publication> publications) {
    final int result =
        publications.stream()
            .filter(publication -> publication.getYear() >= FIRST_YEAR)
            .map(Publication::getYear)
            .collect(Collectors.minBy(Comparator.naturalOrder()))
            .get();

    return result;
  }

  // Returns the year of the last publication
  public static int yearOfTheLastPublication(Set<Publication> publications) {
    final int result =
        publications.stream()
            .filter(publication -> publication.getYear() >= FIRST_YEAR)
            .map(Publication::getYear)
            .collect(Collectors.maxBy(Comparator.naturalOrder()))
            .get();

    return result;
  }

  // Returns some statistics for publications' years
  public static IntSummaryStatistics publicationsYearsStatistics(Set<Publication> publications) {
    final IntSummaryStatistics result =
        publications.stream()
            .filter(publication -> publication.getYear() >= FIRST_YEAR)
            .collect(Collectors.summarizingInt(Publication::getYear));

    return result;
  }

  // Returns the publication with the most authors
  public static Publication publicationWithTheMostAuthors(Set<Publication> publications) {
    final Publication result =
        publications.stream()
            .filter(publication -> publication.getYear() >= FIRST_YEAR)
            .max(Comparator.comparing(publication -> publication.getAuthors().size()))
            .get();

    return result;
  }

  // Returns the publication with the most authors for each year
  public static Map<Integer, Publication> publicationsWithTheMostAuthorsPerYear(
      Set<Publication> publications) {
    final Collector<Publication, ?, Stream<Publication>> publicationsWithTheMostAuthors =
        Collectors.filtering(
            publication -> publication.getYear() >= FIRST_YEAR,
            Collectors.collectingAndThen(
                Collectors.maxBy(
                    Comparator.comparing(publication -> publication.getAuthors().size())),
                Optional::stream));
    final Function<Map.Entry<Integer, Stream<Publication>>, Stream<Map.Entry<Integer, Publication>>>
        emptyStreamsRemover =
            entry -> entry.getValue().map(value -> Map.entry(entry.getKey(), value));
    final Function<Map<Integer, Stream<Publication>>, Map<Integer, Publication>>
        emptyStreamValuesRemover =
            map ->
                map.entrySet().stream()
                    .collect(
                        Collectors.flatMapping(
                            emptyStreamsRemover, CustomCollectors.toNaturalMap()));
    final Collector<Publication, ?, Map<Integer, Publication>> finalCollector =
        Collectors.collectingAndThen(
            Collectors.groupingBy(Publication::getYear, publicationsWithTheMostAuthors),
            emptyStreamValuesRemover);
    final Map<Integer, Publication> result = publications.stream().collect(finalCollector);

    return result;
  }

  // Returns all authors' publications
  public static Map<Author, List<Publication>> publicationsPerAuthor(
      Set<Publication> publications) {
    final Map<Publication, List<Author>> authorsPerPublications =
        publications.stream()
            .collect(
                Collectors.toMap(
                    publication -> publication, publication -> publication.getAuthors()));
    final Function<Map<Publication, List<Author>>, Map<Author, List<Publication>>> invertMultiMap =
        CustomCollectors.invertMultiMap();
    final Map<Author, List<Publication>> result = invertMultiMap.apply(authorsPerPublications);

    return result;
  }

  // Returns the pair of authors who published the most publications together
  public static Map.Entry<Map.Entry<Author, Author>, Long> mostProlificPairOfAuthors(
      Set<Publication> publications) {
    final Function<Stream<Author>, Stream<Map.Entry<Author, Author>>> function =
        authorStream -> crossProductOrdered(authorStream, comparing(Author::getName));
    final Collector<Publication, ?, Map.Entry<Map.Entry<Author, Author>, Long>>
        mostProlificAuthorsCollector =
            Collectors.flatMapping(
                publication -> function.apply(publication.getAuthors().stream()),
                Collectors.collectingAndThen(
                    CustomCollectors.groupingBySelfAndCounting(), CustomCollectors.maxByValue()));
    final Map.Entry<Map.Entry<Author, Author>, Long> result =
        publications.stream().collect(mostProlificAuthorsCollector);

    return result;
  }

  // Returns the pair of authors who published the most publications together for each year
  public static Map<Integer, Map.Entry<Map.Entry<Author, Author>, Long>>
      mostProlificPairOfAuthorsPerYear(Set<Publication> publications) {
    final Map<Integer, Map.Entry<Map.Entry<Author, Author>, Long>> result =
        publications.stream()
            .collect(
                Collectors.collectingAndThen(
                    Collectors.groupingBy(
                        Publication::getYear,
                        CustomCollectors.mostProlific(
                            publication -> publication.getAuthors().stream(),
                            comparing(Author::getName))),
                    removeEmptyStreams()));

    return result;
  }
}
