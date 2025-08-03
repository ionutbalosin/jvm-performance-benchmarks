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
import java.security.spec.InvalidKeySpecException;
import java.security.spec.NamedParameterSpec;
import java.security.spec.PKCS8EncodedKeySpec;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;
import javax.crypto.*;
import org.openjdk.jmh.annotations.*;

/*
 * Benchmarks ML-KEM (Module-Lattice-Based Key Encapsulation Mechanism) operations for post-quantum
 * cryptography, measuring encapsulation and decapsulation performance across all three standardized
 * parameter sets (ML-KEM-512, ML-KEM-768, ML-KEM-1024).
 *
 * This benchmark evaluates the quantum-resistant key exchange primitives, which are essential
 * for securing future communications against quantum computer attacks using Shor's algorithm.
 * ML-KEM is standardized by NIST in FIPS 203 as a replacement for classical
 * key exchange mechanisms that are vulnerable to quantum computing attacks.
 *
 * The benchmark provides comprehensive performance analysis of:
 * - Core KEM operations: encapsulation (sender-side) and decapsulation (receiver-side)
 * - Key encoding operations: PKCS#8 private key and X.509 public key encoding/decoding
 *
 * Performance characteristics vary significantly across parameter sets:
 * - ML-KEM-512: Fastest performance, provides quantum security equivalent to AES-128
 * - ML-KEM-768: Balanced performance/security, provides quantum security equivalent to AES-192
 * - ML-KEM-1024: Highest security, provides quantum security equivalent to AES-256
 *
 * Key technical aspects measured:
 * - Encapsulation: Generates shared secret and ciphertext from receiver's public key
 * - Decapsulation: Recovers shared secret from ciphertext using receiver's private key
 * - Key serialization: Performance impact of encoding/decoding keys for storage/transmission
 *
 * References:
 * - https://openjdk.org/jeps/496
 * - NIST FIPS 203: Module-Lattice-Based Key-Encapsulation Mechanism Standard
 */

@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MlKemBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MlKemBenchmark.*"

  private final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});

  @Param({"ML-KEM-512", "ML-KEM-768", "ML-KEM-1024"})
  private String parameterSpec;

  private KeyPair keyPair;
  private KEM kem;
  private KEM.Encapsulated preEncapsulated;
  private KeyFactory keyFactory;

  @Setup()
  public void setup() throws Exception {
    final NamedParameterSpec namedParameterSpec =
        switch (parameterSpec) {
          case "ML-KEM-512" -> NamedParameterSpec.ML_KEM_512;
          case "ML-KEM-768" -> NamedParameterSpec.ML_KEM_768;
          case "ML-KEM-1024" -> NamedParameterSpec.ML_KEM_1024;
          default ->
              throw new IllegalArgumentException("Unsupported parameter spec: " + parameterSpec);
        };

    final KeyPairGenerator kpg = KeyPairGenerator.getInstance("ML-KEM");
    kpg.initialize(namedParameterSpec, secureRandom);
    keyPair = kpg.generateKeyPair();

    kem = KEM.getInstance("ML-KEM");
    keyFactory = KeyFactory.getInstance("ML-KEM");

    // Pre-generate encapsulated data to avoid measuring encapsulation overhead in the decapsulate()
    // benchmark
    final KEM.Encapsulator encapsulator =
        kem.newEncapsulator(keyPair.getPublic(), null, secureRandom);
    preEncapsulated = encapsulator.encapsulate();

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(preEncapsulated.key(), decapsulate(preEncapsulated));
  }

  @Benchmark
  public byte[] encapsulate() throws InvalidKeyException, InvalidAlgorithmParameterException {
    final KEM.Encapsulator encapsulator =
        kem.newEncapsulator(keyPair.getPublic(), null, secureRandom);
    final KEM.Encapsulated encapsulated = encapsulator.encapsulate();
    return encapsulated.encapsulation();
  }

  @Benchmark
  public SecretKey decapsulate() throws InvalidKeyException, DecapsulateException {
    return decapsulate(preEncapsulated);
  }

  @Benchmark
  public PrivateKey pkcs8_private_key_encode() throws InvalidKeySpecException {
    final PKCS8EncodedKeySpec p8spec =
        keyFactory.getKeySpec(keyPair.getPrivate(), PKCS8EncodedKeySpec.class);
    return keyFactory.generatePrivate(p8spec);
  }

  @Benchmark
  public PublicKey x509_public_key_encode() throws InvalidKeySpecException {
    final X509EncodedKeySpec x509spec =
        keyFactory.getKeySpec(keyPair.getPublic(), X509EncodedKeySpec.class);
    return keyFactory.generatePublic(x509spec);
  }

  public SecretKey decapsulate(KEM.Encapsulated encapsulated)
      throws InvalidKeyException, DecapsulateException {
    final KEM.Decapsulator decapsulator = kem.newDecapsulator(keyPair.getPrivate());
    return decapsulator.decapsulate(encapsulated.encapsulation());
  }

  private void sanityCheck(SecretKey encapsulated, SecretKey decapsulated) {
    if (!Arrays.equals(encapsulated.getEncoded(), decapsulated.getEncoded())) {
      throw new AssertionError(
          String.format("ML-KEM keys don't match for parameter spec %s", parameterSpec));
    }
  }
}
