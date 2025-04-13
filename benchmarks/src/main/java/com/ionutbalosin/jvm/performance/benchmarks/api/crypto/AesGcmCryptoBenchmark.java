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

import static com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util.CryptoUtils.getCipher;
import static com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util.CryptoUtils.getGCMParameterSpec;
import static com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util.CryptoUtils.getSecretKey;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidParameterSpecException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
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
 * Encrypts and decrypts data using the Advanced Encryption Standard (AES) algorithm in Galois/Counter Mode (GCM) with no padding.
 * The process involves various key sizes and the utilization of an initialization vector (IV).
 * AES/GCM mode requires an initialization vector (IV) and operates using the GCM (Galois/Counter Mode) encryption mode
 * for enhanced security and data authenticity.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class AesGcmCryptoBenchmark {

  // $ java -jar */*/benchmarks.jar ".*AesGcmCryptoBenchmark.*"

  private final Random random = new Random(16384);
  private final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});
  private byte[] data, dataEncrypted, dataDecrypted;
  private Cipher encryptCipher, decryptCipher;
  private SecretKey secretKey;

  @Param({"16384"})
  private int dataSize;

  @Param({"128", "192", "256"})
  private int keySize;

  @Param({"AES/GCM/NoPadding"})
  private String transformation;

  @Setup()
  public void setup()
      throws NoSuchAlgorithmException,
          InvalidAlgorithmParameterException,
          NoSuchPaddingException,
          IllegalBlockSizeException,
          BadPaddingException,
          InvalidKeyException {
    // initialize data
    data = new byte[dataSize];
    random.nextBytes(data);

    // initialize ciphers
    secretKey = getSecretKey("AES", keySize);
    final GCMParameterSpec paramsSpec = getGCMParameterSpec(12, 128);
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, secretKey, paramsSpec);
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, secretKey, paramsSpec);

    // encrypt/decrypt data
    dataEncrypted = encryptCipher.doFinal(data);
    dataDecrypted = decryptCipher.doFinal(dataEncrypted);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(data, dataDecrypted);
  }

  @Benchmark
  public byte[] encrypt()
      throws IllegalBlockSizeException,
          BadPaddingException,
          InvalidAlgorithmParameterException,
          NoSuchPaddingException,
          NoSuchAlgorithmException,
          InvalidKeyException {
    // re-initialize cipher (i.e., a new unique IV must be generated for each encryption)
    final GCMParameterSpec paramsSpec = getGCMParameterSpec(12, 128);
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, secretKey, paramsSpec);

    return encryptCipher.doFinal(data);
  }

  @Benchmark
  public byte[] decrypt()
      throws IllegalBlockSizeException,
          BadPaddingException,
          InvalidAlgorithmParameterException,
          NoSuchPaddingException,
          NoSuchAlgorithmException,
          InvalidKeyException,
          InvalidParameterSpecException {
    // re-initialize cipher
    final GCMParameterSpec paramsSpec =
        encryptCipher.getParameters().getParameterSpec(GCMParameterSpec.class);
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, secretKey, paramsSpec);

    return decryptCipher.doFinal(dataEncrypted);
  }

  private void sanityCheck(byte[] source, byte[] decrypted) {
    if (!Arrays.equals(source, decrypted)) {
      throw new AssertionError("The byte arrays have different content.");
    }
  }
}
