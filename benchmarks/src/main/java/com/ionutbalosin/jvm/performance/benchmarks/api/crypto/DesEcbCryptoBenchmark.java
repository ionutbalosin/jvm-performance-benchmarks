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
import static com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util.CryptoUtils.getSecretKey;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
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
 * Encrypts and decrypts data using the Triple DES (3DES) algorithm with various key sizes. The encryption process involves both
 * padding and no padding options. While Electronic Codebook (ECB) mode is mentioned, it's important to note that ECB mode
 * is not commonly used with Triple DES due to its security limitations. Unlike symmetric ciphers, Triple DES encryption in ECB mode
 * does not require initialization vectors (IVs) or GCM (Galois/Counter Mode), as it's a block cipher operating in a straightforward manner.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DesEcbCryptoBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DesEcbCryptoBenchmark.*"

  private final Random random = new Random(16384);
  private byte[] data, dataEncrypted, dataDecrypted;
  private Cipher encryptCipher, decryptCipher;

  @Param({"16384"})
  private int dataSize;

  @Param({"168"})
  private int keySize;

  @Param({"DESede/ECB/NoPadding", "DESede/ECB/PKCS5Padding"})
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
    final SecretKey secretKey = getSecretKey("DESede", keySize);
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, secretKey);
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, secretKey);

    // encrypt/decrypt data
    dataEncrypted = encryptCipher.doFinal(data);
    dataDecrypted = decryptCipher.doFinal(dataEncrypted);

    // make sure the results are equivalent before any further benchmarking
    sanityCheck(data, dataDecrypted);
  }

  @Benchmark
  public byte[] encrypt() throws IllegalBlockSizeException, BadPaddingException {
    return encryptCipher.doFinal(data);
  }

  @Benchmark
  public byte[] decrypt() throws IllegalBlockSizeException, BadPaddingException {
    return decryptCipher.doFinal(dataEncrypted);
  }

  private void sanityCheck(byte[] source, byte[] decrypted) {
    if (!Arrays.equals(source, decrypted)) {
      throw new AssertionError("The byte arrays have different content.");
    }
  }
}
