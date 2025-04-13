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

import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.Signature;
import java.security.SignatureException;
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
 * This benchmark measures the performance of RSA using different message lengths,
 * key lengths and hash sizes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RsaSignatureBenchmark {

  private Signature signer;

  @Param({"64", "512", "2048", "16384"})
  private int messageLength;

  @Param({"SHA256withRSA", "SHA384withRSA", "SHA512withRSA"})
  private String algorithm;

  private byte[] message;

  @Setup
  public void setup() throws Exception {
    message = new byte[messageLength];
    Random random = new Random(16384);
    random.nextBytes(message);

    int keyLength;
    switch (algorithm) {
      case "SHA256withRSA":
        keyLength = 2048;
        break;
      case "SHA384withRSA":
        keyLength = 3072;
        break;
      case "SHA512withRSA":
        keyLength = 4096;
        break;
      default:
        throw new UnsupportedOperationException("Unsupported algorithm " + algorithm);
    }

    KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSA");
    kpg.initialize(keyLength);
    KeyPair kp = kpg.generateKeyPair();

    signer = Signature.getInstance(algorithm);
    signer.initSign(kp.getPrivate());
  }

  @Benchmark
  public byte[] sign() throws SignatureException {
    signer.update(message);
    return signer.sign();
  }
}
