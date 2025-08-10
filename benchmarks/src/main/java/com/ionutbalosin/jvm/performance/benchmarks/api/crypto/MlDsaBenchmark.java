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
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.*;

/*
 * Measures the performance of quantum-resistant Module-Lattice-Based Digital Signature Algorithm (ML-DSA) operations
 * including digital signature creation, verification, and key encoding/decoding across all three standardized parameter sets.
 * ML-DSA is designed to be secure against future quantum computing attacks and has been standardized by NIST in FIPS 204.
 *
 * References:
 * - JEP 497: Quantum-Resistant Module-Lattice-Based Digital Signature Algorithm
 * - FIPS 204: Module-Lattice-Based Digital Signature Standard
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class MlDsaBenchmark {

  // $ java -jar */*/benchmarks.jar ".*MlDsaBenchmark.*"

  private final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});

  @Param({"ML-DSA-44", "ML-DSA-65", "ML-DSA-87"})
  private String parameterSpec;

  @Param({"16384"})
  private int dataSize;

  private final Random random = new Random(16384);
  private KeyPair keyPair;
  private KeyFactory keyFactory;
  private Signature signature;
  private byte[] preCalculatedSignature;
  private byte[] data;

  @Setup()
  public void setup() throws Exception {
    data = new byte[dataSize];
    random.nextBytes(data);

    final NamedParameterSpec namedParameterSpec =
        switch (parameterSpec) {
          case "ML-DSA-44" -> NamedParameterSpec.ML_DSA_44;
          case "ML-DSA-65" -> NamedParameterSpec.ML_DSA_65;
          case "ML-DSA-87" -> NamedParameterSpec.ML_DSA_87;
          default ->
              throw new IllegalArgumentException("Unsupported parameter spec: " + parameterSpec);
        };

    final KeyPairGenerator kpg = KeyPairGenerator.getInstance("ML-DSA");
    kpg.initialize(namedParameterSpec, secureRandom);
    keyPair = kpg.generateKeyPair();

    keyFactory = KeyFactory.getInstance("ML-DSA");
    signature = Signature.getInstance("ML-DSA");

    // Pre-generate encapsulated data to avoid measuring encapsulation overhead in the decapsulate()
    // benchmark
    preCalculatedSignature = sign();

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(verify());
  }

  @Benchmark
  public byte[] sign() throws SignatureException, InvalidKeyException {
    signature.initSign(keyPair.getPrivate());
    signature.update(data);
    return signature.sign();
  }

  @Benchmark
  public boolean verify() throws InvalidKeyException, SignatureException {
    signature.initVerify(keyPair.getPublic());
    signature.update(data);
    return signature.verify(preCalculatedSignature);
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

  private void sanityCheck(boolean verified) {
    if (!verified) {
      throw new AssertionError(
          String.format(
              "ML-DSA signature verification failed for parameter spec %s", parameterSpec));
    }
  }
}
