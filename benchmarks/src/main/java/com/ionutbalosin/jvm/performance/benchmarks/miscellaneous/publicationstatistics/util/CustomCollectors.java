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
package com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util;

import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collector;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;

public class CustomCollectors {

  public static <T, K> Collector<T, ?, Map<K, Long>> groupingByAndCounting(
      Function<T, K> classifier) {
    return Collectors.groupingBy(classifier, Collectors.counting());
  }

  public static <K, V extends Comparable<? super V>>
      Function<Map<K, V>, Map.Entry<K, V>> maxByValue() {
    return maxBy(Map.Entry.<K, V>comparingByValue());
  }

  public static <K, V extends Comparable<? super V>> Function<Map<K, V>, Map.Entry<K, V>> maxBy(
      Comparator<Map.Entry<K, V>> comparator) {
    return map -> map.entrySet().stream().max(comparator).get();
  }

  public static <T> Collector<T, ?, Map<T, Long>> groupingBySelfAndCounting() {
    return groupingByAndCounting(Function.identity());
  }

  public static <K, V> Collector<Map.Entry<K, V>, ?, Map<K, V>> toNaturalMap() {
    return Collectors.toMap(Map.Entry::getKey, Map.Entry::getValue);
  }

  public static <K, V> Function<Map<K, Stream<V>>, Map<K, V>> removeEmptyStreams() {
    return map ->
        map.entrySet().stream()
            .flatMap(entry -> entry.getValue().map(e -> Map.entry(entry.getKey(), e)))
            .collect(toNaturalMap());
  }

  public static <T, V> Collector<T, ?, Stream<Map.Entry<Map.Entry<V, V>, Long>>> mostProlific(
      Function<T, Stream<V>> streamMapper, Comparator<V> comparator) {

    return Collectors.flatMapping(
        article -> crossProductOrdered(streamMapper.apply(article), comparator),
        Collectors.collectingAndThen(
            groupingBySelfAndCounting(),
            map ->
                map.entrySet().stream()
                    .max(Map.Entry.<Map.Entry<V, V>, Long>comparingByValue())
                    .stream()));
  }

  public static <E> Stream<Map.Entry<E, E>> crossProductOrdered(
      Stream<E> stream, Comparator<E> comparator) {
    Objects.requireNonNull(stream);
    Objects.requireNonNull(comparator);

    OrderedSpliterator<E> spliterator =
        OrderedSpliterator.ordered(stream.spliterator(), comparator);

    return StreamSupport.stream(spliterator, stream.isParallel()).onClose(stream::close);
  }

  public static <K, V> Function<Map<K, List<V>>, Map<V, List<K>>> invertMultiMap() {
    return map ->
        map.entrySet().stream()
            .collect(
                Collectors.flatMapping(
                    entry ->
                        entry.getValue().stream().map(value -> Map.entry(entry.getKey(), value)),
                    Collectors.groupingBy(
                        Map.Entry::getValue,
                        Collectors.mapping(Map.Entry::getKey, Collectors.toList()))));
  }
}
