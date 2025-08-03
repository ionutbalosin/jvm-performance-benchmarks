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
package com.ionutbalosin.jvm.performance.benchmarks.api.crypto;

import java.security.*;
import java.security.spec.NamedParameterSpec;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import javax.crypto.*;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmarks ML-KEM (Module-Lattice-Based Key Encapsulation Mechanism) operations for post-quantum
 * cryptography, measuring encapsulation and decapsulation performance across all three standardized
 * parameter sets (ML-KEM-512, ML-KEM-768, ML-KEM-1024).
 *
 * This benchmark evaluates the quantum-resistant key exchange primitives introduced in JEP 496,
 * which are essential for securing future communications against quantum computer attacks using
 * Shor's algorithm.
 *
 * Measured operations:
 * - Sender-side key encapsulation (generates shared secret and the ciphertext)
 * - Receiver-side key decapsulation (recovers shared secret from ciphertext)
 *
 * The benchmark validates cryptographic correctness by ensuring both parties derive identical
 * secret keys, then measures the performance impact of different ML-KEM security levels.
 *
 * References:
 * - https://openjdk.org/jeps/496
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 1, time = 3, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 1, time = 3, timeUnit = TimeUnit.SECONDS)
@Fork(value = 1)
@State(Scope.Benchmark)
public class MlKemBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MlKemBenchmark.*"

  @Param({"ML-KEM-512", "ML-KEM-768", "ML-KEM-1024"})
  private String algorithm;

  private KeyPair keyPair;
  private KEM kem;
  private KEM.Encapsulated preEncapsulated;

  @Setup()
  public void setup() throws Exception {
    final NamedParameterSpec namedParameterSpec =
        switch (algorithm) {
          case "ML-KEM-512" -> NamedParameterSpec.ML_KEM_512;
          case "ML-KEM-768" -> NamedParameterSpec.ML_KEM_768;
          case "ML-KEM-1024" -> NamedParameterSpec.ML_KEM_1024;
          default -> throw new IllegalArgumentException("Unsupported algorithm: " + algorithm);
        };

    final KeyPairGenerator kpg = KeyPairGenerator.getInstance("ML-KEM");
    kpg.initialize(namedParameterSpec);
    keyPair = kpg.generateKeyPair();

    kem = KEM.getInstance("ML-KEM");

    // Pre-generate encapsulated data to avoid measuring encapsulation overhead in the decapsulate()
    // benchmark
    final KEM.Encapsulator encapsulator = kem.newEncapsulator(keyPair.getPublic());
    preEncapsulated = encapsulator.encapsulate();

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(preEncapsulated.key(), decapsulate(preEncapsulated));
  }

  @Benchmark
  public byte[] encapsulate() throws InvalidKeyException {
    final KEM.Encapsulator encapsulator = kem.newEncapsulator(keyPair.getPublic());
    final KEM.Encapsulated encapsulated = encapsulator.encapsulate();
    return encapsulated.encapsulation();
  }

  @Benchmark
  public SecretKey decapsulate() throws InvalidKeyException, DecapsulateException {
    return decapsulate(preEncapsulated);
  }

  public SecretKey decapsulate(KEM.Encapsulated encapsulated)
      throws InvalidKeyException, DecapsulateException {
    final KEM.Decapsulator decapsulator = kem.newDecapsulator(keyPair.getPrivate());
    return decapsulator.decapsulate(encapsulated.encapsulation());
  }

  private void sanityCheck(SecretKey encapsulated, SecretKey decapsulated) {
    if (!Arrays.equals(encapsulated.getEncoded(), decapsulated.getEncoded())) {
      throw new AssertionError(
          String.format(
              "ML-KEM key validation failed for %s: encapsulated and decapsulated keys don't match",
              algorithm));
    }
  }
}
