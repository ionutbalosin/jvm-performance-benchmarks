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
package com.ionutbalosin.jvm.performance.benchmarks.macro.classloader;

import java.io.File;
import java.io.FileInputStream;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.jar.JarEntry;
import java.util.jar.JarInputStream;
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
 * This benchmark involves reading all classes or interfaces from a provided JAR file and loads and initializes each of them (which also implies linking)
 * using the URLClassLoader. The anticipated count of classes to be loaded and initialized is approximately 1,000.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class URLClassLoaderBenchmark {

  // $ java -jar */*/benchmarks.jar ".*URLClassLoaderBenchmark.*"

  private final String CURRENT_DIR = System.getProperty("user.dir", ".");
  private final String FILE_NAME =
      CURRENT_DIR + "/benchmarks/src/main/resources/org_springframework_spring-core-6.0.9.jar";
  private final int CLASSES_TO_LOAD_THRESHOLD = 1_000;
  private final float CLASSES_CANNOT_BE_LOADED_THRESHOLD = 0.05f;

  private List<String> classesToLoad;
  private URL[] classPathUrl;

  @Setup
  public void setup() throws Throwable {
    int jarClasses = 0;
    int noOfClassesWithErrors = 0;
    classesToLoad = new ArrayList<>();
    classPathUrl = new URL[] {new File(FILE_NAME).toURI().toURL()};

    final URLClassLoader urlClassLoader = new URLClassLoader(classPathUrl);
    try (final FileInputStream jarFileStream = new FileInputStream(FILE_NAME);
        final JarInputStream jarFile = new JarInputStream(jarFileStream)) {

      JarEntry jarEntry;
      while ((jarEntry = jarFile.getNextJarEntry()) != null) {
        final String name = jarEntry.getName();
        if (name.endsWith(".class")) {
          final String className = name.substring(0, name.length() - 6).replaceAll("/", ".");
          jarClasses++;
          try {
            final Class<?> aClass = Class.forName(className, true, urlClassLoader);
            if (aClass.getClassLoader() == urlClassLoader) {
              // keep only classes loaded by the URLClassLoader
              classesToLoad.add(className);
            }
          } catch (Throwable e) {
            noOfClassesWithErrors++;
          }
        }
      }
    }

    // make sure the results are valid
    sanityCheck(jarClasses, classesToLoad, noOfClassesWithErrors);
  }

  @Benchmark
  public List<Class<?>> load_classes() throws ClassNotFoundException {
    final URLClassLoader urlClassLoader = new URLClassLoader(classPathUrl);
    List<Class<?>> loadedClasses = new ArrayList<>();
    for (String className : classesToLoad) {
      // uses the caller's classloader and initializes the class (which implies linking)
      loadedClasses.add(Class.forName(className, true, urlClassLoader));
    }
    return loadedClasses;
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param jarClasses - total number of classes found in the jar
   * @param classesToLoad - list of available classes to be loaded
   * @param noOfClassesWithErrors - number of classes that cannot be loaded
   */
  private void sanityCheck(int jarClasses, List<String> classesToLoad, int noOfClassesWithErrors) {
    if (classesToLoad.size() < CLASSES_TO_LOAD_THRESHOLD) {
      throw new AssertionError("There are no classes to load.");
    }
    if (noOfClassesWithErrors > (jarClasses * CLASSES_CANNOT_BE_LOADED_THRESHOLD)) {
      throw new AssertionError("Number of classes with errors is higher than expected.");
    }
  }
}
