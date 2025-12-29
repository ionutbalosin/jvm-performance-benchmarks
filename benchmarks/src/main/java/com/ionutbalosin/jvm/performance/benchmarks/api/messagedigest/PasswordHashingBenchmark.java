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
package com.ionutbalosin.jvm.performance.benchmarks.api.messagedigest;

import java.security.SecureRandom;
import java.util.concurrent.TimeUnit;
import org.bouncycastle.crypto.generators.Argon2BytesGenerator;
import org.bouncycastle.crypto.params.Argon2Parameters;
import org.openjdk.jmh.annotations.*;

/**
 * This class, Argon2Hashing, demonstrates how to generate a secure hash using the Argon2 algorithm.
 * It includes methods to generate a random salt and to hash a password with specified parameters
 * such as iterations, memory cost, parallelism, and hash length. The main method prints the
 * generated salt and hash in base64 encoding.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class PasswordHashingBenchmark {

  // $ java -jar */*/benchmarks.jar ".*PasswordHashingBenchmark.*"

  private static final String PASSWORD = "My-Super-Secret-Password";
  private static final int SALT_LENGTH = 16;

  @Param({"3", "5", "10"})
  private int iterations;

  @Param({"65536", "131072"}) // Memory cost in KB (64MB, 128MB)
  private int memory;

  @Param({"1", "2"})
  private int parallelism;

  @Param({"32", "64"})
  private int hashLength;

  private byte[] salt;
  private Argon2BytesGenerator generator;
  private Argon2Parameters parameters;

  @Setup(Level.Trial)
  public void setup() {
    salt = generateSalt(SALT_LENGTH);
    generator = new Argon2BytesGenerator();
  }

  @Setup(Level.Iteration)
  public void setupIteration() {
    final Argon2Parameters.Builder builder =
        new Argon2Parameters.Builder(Argon2Parameters.ARGON2_id)
            .withSalt(salt) // Salt ensures unique hashes for identical passwords
            .withIterations(iterations) // Iterations increase computational cost for added security
            .withMemoryAsKB(memory) // Memory cost helps resist GPU-based attacks
            .withParallelism(parallelism);

    parameters = builder.build();
    generator.init(parameters);
  }

  @Benchmark
  public byte[] hash_password() {
    final byte[] hash = new byte[hashLength];
    generator.generateBytes(PASSWORD.toCharArray(), hash);
    return hash;
  }

  /**
   * Generates a random salt of the specified length.
   *
   * <p>The salt is used in hashing functions to ensure that even if two users have the same
   * password, their hashes will be unique. This helps protect against precomputed attacks such as
   * rainbow table attacks.
   */
  private static byte[] generateSalt(int length) {
    final SecureRandom random = new SecureRandom();
    final byte[] salt = new byte[length];
    random.nextBytes(salt);
    return salt;
  }
}
