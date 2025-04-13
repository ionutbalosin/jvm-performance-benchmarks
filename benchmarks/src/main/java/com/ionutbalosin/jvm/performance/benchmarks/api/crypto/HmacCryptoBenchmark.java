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

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
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
 * Generates an HMAC (Hash-based Message Authentication Code) for an input byte array using various algorithms (e.g., MD5, SHA*).
 * No explicit provider is specified; thus, the standard JDK provider is used.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class HmacCryptoBenchmark {

  // $ java -jar */*/benchmarks.jar ".*HmacCryptoBenchmark.*"

  private final Random random = new Random(16384);

  @Param({"16384"})
  private int length;

  @Param({
    "HmacMD5",
    "HmacSHA1",
    "HmacSHA224",
    "HmacSHA256",
    "HmacSHA384",
    "HmacSHA512",
    "HmacSHA512/224",
    "HmacSHA512/256",
    "HmacSHA3-224",
    "HmacSHA3-256",
    "HmacSHA3-384",
    "HmacSHA3-512"
  })
  private String algorithm;

  private byte[] input;
  private Mac mac;

  @Setup()
  public void setup()
      throws NoSuchAlgorithmException,
          InvalidAlgorithmParameterException,
          NoSuchPaddingException,
          IllegalBlockSizeException,
          BadPaddingException,
          InvalidKeyException {
    // initialize data
    input = new byte[length];
    random.nextBytes(input);

    // initialize mac
    mac = Mac.getInstance(algorithm);
    mac.init(KeyGenerator.getInstance(algorithm).generateKey());
  }

  @Benchmark
  public byte[] mac() {
    return mac.doFinal(input);
  }
}
