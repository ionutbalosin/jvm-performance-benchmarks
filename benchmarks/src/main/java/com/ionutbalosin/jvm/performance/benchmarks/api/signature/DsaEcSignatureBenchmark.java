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
package com.ionutbalosin.jvm.performance.benchmarks.api.signature;

import java.security.AlgorithmParameters;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Signature;
import java.security.SignatureException;
import java.security.spec.ECGenParameterSpec;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import org.openjdk.jmh.annotations.Benchmark;
import org.openjdk.jmh.annotations.BenchmarkMode;
import org.openjdk.jmh.annotations.Fork;
import org.openjdk.jmh.annotations.Measurement;
import org.openjdk.jmh.annotations.Mode;
import org.openjdk.jmh.annotations.OutputTimeUnit;
import org.openjdk.jmh.annotations.Param;
import org.openjdk.jmh.annotations.Scope;
import org.openjdk.jmh.annotations.Setup;
import org.openjdk.jmh.annotations.State;
import org.openjdk.jmh.annotations.Warmup;

/*
 * The benchmark measures the performance of ECDSA (elliptic curve DSA) using different message lengths,
 * key lengths and hash sizes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DsaEcSignatureBenchmark {

  private Signature signer;

  @Param({"64", "512", "2048", "16384"})
  private int messageLength;

  @Param({"secp256r1", "secp384r1", "secp521r1"})
  private String algorithm;

  private byte[] message;

  @Setup
  public void setup() throws Exception {
    message = new byte[messageLength];
    Random random = new Random(16384);
    random.nextBytes(message);

    String signName;
    switch (algorithm) {
      case "secp256r1":
        signName = "SHA256withECDSA";
        break;
      case "secp384r1":
        signName = "SHA384withECDSA";
        break;
      case "secp521r1":
        signName = "SHA512withECDSA";
        break;
      default:
        throw new UnsupportedOperationException("Unsupported algorithm " + algorithm);
    }

    AlgorithmParameters params = AlgorithmParameters.getInstance("EC", "SunEC");
    params.init(new ECGenParameterSpec(algorithm));
    ECGenParameterSpec ecParams = params.getParameterSpec(ECGenParameterSpec.class);

    KeyPairGenerator kpg = KeyPairGenerator.getInstance("EC", "SunEC");
    kpg.initialize(ecParams);
    KeyPair kp = kpg.generateKeyPair();

    signer = Signature.getInstance(signName, "SunEC");
    signer.initSign(kp.getPrivate());
  }

  @Benchmark
  public byte[] sign() throws SignatureException {
    signer.update(message);
    return signer.sign();
  }
}
