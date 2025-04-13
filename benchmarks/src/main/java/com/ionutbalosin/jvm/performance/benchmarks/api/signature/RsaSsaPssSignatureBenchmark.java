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
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
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
 * This benchmark measures the performance of RSA with the SSA and PSS schemes using different message lengths,
 * key lengths and hash sizes.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RsaSsaPssSignatureBenchmark {

  private Signature signer;

  @Param({"64", "512", "2048", "16384"})
  private int messageLength;

  @Param({"SHA256", "SHA384", "SHA512"})
  private String algorithm;

  private byte[] message;

  @Setup
  public void setup() throws Exception {
    message = new byte[messageLength];
    Random random = new Random(16384);
    random.nextBytes(message);

    int keyLength;
    switch (algorithm) {
      case "SHA256":
        keyLength = 2048;
        break;
      case "SHA384":
        keyLength = 3072;
        break;
      case "SHA512":
        keyLength = 4096;
        break;
      default:
        throw new UnsupportedOperationException("Unsupported algorithm " + algorithm);
    }

    PSSParameterSpec spec;
    switch (algorithm) {
      case "SHA256":
        spec =
            new PSSParameterSpec(
                "SHA-256", "MGF1", MGF1ParameterSpec.SHA256, 32, PSSParameterSpec.TRAILER_FIELD_BC);
        break;
      case "SHA384":
        spec =
            new PSSParameterSpec(
                "SHA-384", "MGF1", MGF1ParameterSpec.SHA384, 48, PSSParameterSpec.TRAILER_FIELD_BC);
        break;
      case "SHA512":
        spec =
            new PSSParameterSpec(
                "SHA-512", "MGF1", MGF1ParameterSpec.SHA512, 64, PSSParameterSpec.TRAILER_FIELD_BC);
        break;
      default:
        throw new UnsupportedOperationException("Unsupported algorithm " + algorithm);
    }

    KeyPairGenerator kpg = KeyPairGenerator.getInstance("RSASSA-PSS");
    kpg.initialize(keyLength);
    KeyPair kp = kpg.generateKeyPair();

    signer = Signature.getInstance("RSASSA-PSS");
    signer.setParameter(spec);
    signer.initSign(kp.getPrivate());
  }

  @Benchmark
  public byte[] sign() throws SignatureException {
    signer.update(message);
    return signer.sign();
  }
}
