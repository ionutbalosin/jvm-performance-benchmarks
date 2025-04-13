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
import static com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util.CryptoUtils.getKeyPair;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
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
 * Encrypts and decrypts data using the RSA algorithm with various key sizes. The encryption process involves both padding and no padding options.
 * While Electronic Codebook (ECB) mode is mentioned, it's important to note that ECB mode is not commonly used with RSA due to its security limitations.
 * Unlike symmetric ciphers, RSA encryption does not involve initialization vectors (IVs) or GCM (Galois/Counter Mode), as it's an asymmetric encryption algorithm.
 *
 * A few important RSA considerations:
 * - The size of the message that can be encrypted using RSA depends on the size of the RSA key modulus and the padding scheme used.
 * - The formula for calculating the maximum data size that can be encrypted is: Maximum Data Size = RSA Key Size (in bytes) - Overhead.
 * - The Overhead includes the padding and any additional information introduced by the encryption process.
 *
 * The 'RSA/ECB/PKCS1Padding' mode:
 * - A common overhead value for the 'RSA/ECB/PKCS1Padding' mode is at least 11 bytes (or 16 bytes in this benchmark).
 * - The padding scheme for this mode helps to ensure data alignment and security.
 *
 * The 'RSA/ECB/NoPadding' mode:
 * - In 'RSA/ECB/NoPadding' mode, there's no built-in padding, so the programmer must ensure that the data size matches the key modulus size exactly.
 * - Therefore, manual padding and un-pading are necessary when using 'RSA/ECB/NoPadding' mode.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MICROSECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class RsaEcbCryptoBenchmark {

  // $ java -jar */*/benchmarks.jar ".*RsaEcbCryptoBenchmark.*"

  private final int BITS = 8;
  private final int ENCRYPTION_OVERHEAD = 16;
  private final Random random = new Random(16384);
  private byte[] data, dataEncrypted, dataDecrypted;
  private Cipher encryptCipher, decryptCipher;
  private int dataSize;

  @Param({"1024", "2048", "3072", "4096"})
  private int keySize;

  @Param({"RSA/ECB/NoPadding", "RSA/ECB/PKCS1Padding"})
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
    dataSize = (keySize / BITS) - ENCRYPTION_OVERHEAD;
    data = new byte[dataSize];
    random.nextBytes(data);

    // initialize ciphers
    final KeyPair keyPair = getKeyPair("RSA", keySize);
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, keyPair.getPublic());
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, keyPair.getPrivate());

    // encrypt/decrypt data
    dataEncrypted = encryptCipher.doFinal(data);
    dataDecrypted = removeLeadingPadding(decryptCipher.doFinal(dataEncrypted));

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

  private byte[] removeLeadingPadding(byte[] data) {
    int nonNullIndex = 0;
    while (nonNullIndex < data.length && data[nonNullIndex] == 0) {
      nonNullIndex++;
    }

    final byte[] unPadded = new byte[data.length - nonNullIndex];
    System.arraycopy(data, nonNullIndex, unPadded, 0, unPadded.length);
    return unPadded;
  }
}
