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
package com.ionutbalosin.jvm.performance.benchmarks.api.diskio;

import java.io.ObjectStreamClass;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.LinkedList;
import java.util.PriorityQueue;
import java.util.Properties;
import java.util.Stack;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.Vector;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Level;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * Measures the time it takes to perform the ObjectStreamClass.lookup() operation on a set of serializable classes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.NANOSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class ObjectStreamClassBenchmark {

  // $ java -jar */*/benchmarks.jar ".*ObjectStreamClassBenchmark.*"

  private final Class<?>[] SERIALIZABLE_CLASSES =
      new Class<?>[] {
        Boolean.class,
        Byte.class,
        Short.class,
        Integer.class,
        Long.class,
        Float.class,
        Double.class,
        Character.class,
        String.class,
        Date.class,
        HashMap.class,
        LinkedHashMap.class,
        Hashtable.class,
        ConcurrentHashMap.class,
        IdentityHashMap.class,
        TreeMap.class,
        HashSet.class,
        LinkedHashSet.class,
        TreeSet.class,
        EnumSet.class,
        BitSet.class,
        ArrayList.class,
        ArrayDeque.class,
        ArrayBlockingQueue.class,
        LinkedList.class,
        Vector.class,
        Stack.class,
        Properties.class,
        PriorityQueue.class,
        PriorityBlockingQueue.class,
        LinkedBlockingQueue.class,
        LinkedBlockingDeque.class
      };

  private int classIndex;

  @Setup(Level.Iteration)
  public void setupIteration() {
    classIndex = 0;
  }

  @Benchmark
  public ObjectStreamClass lookup() {
    if (++classIndex >= SERIALIZABLE_CLASSES.length) {
      classIndex = 0;
    }

    final Class<?> clazz = SERIALIZABLE_CLASSES[classIndex];
    final ObjectStreamClass osc = ObjectStreamClass.lookup(clazz);
    sanityCheck(osc, clazz);

    return osc;
  }

  private void sanityCheck(ObjectStreamClass streamClass, Class<?> clazz) {
    if (streamClass == null) {
      throw new AssertionError(
          "Expected a non-null (i.e., serializable) class but found: " + clazz.getName());
    }
  }
}
