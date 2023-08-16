/*
 * JVM Performance Benchmarks
 *
 * Copyright (C) 2019 - 2023 Ionut Balosin
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
package com.ionutbalosin.jvm.performance.benchmarks.macro.encryptdecrypt;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.InvalidParameterSpecException;
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
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
public class AesGcmEncryptDecryptBenchmark {

  // $ java -jar */*/benchmarks.jar ".*AesGcmEncryptDecryptBenchmark.*"

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
      throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, NoSuchPaddingException,
          IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
    // initialize data
    data = new byte[dataSize];
    random.nextBytes(data);

    // initialize ciphers
    secretKey = getKey("AES", keySize);
    final GCMParameterSpec paramsSpec = getGCMParameterSpec();
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
      throws IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException,
          NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
    // re-initialize cipher (i.e., a new unique IV must be generated for each encryption)
    final GCMParameterSpec paramsSpec = getGCMParameterSpec();
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, secretKey, paramsSpec);

    return encryptCipher.doFinal(data);
  }

  @Benchmark
  public byte[] decrypt()
      throws IllegalBlockSizeException, BadPaddingException, InvalidAlgorithmParameterException,
          NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException,
          InvalidParameterSpecException {
    // re-initialize cipher
    final GCMParameterSpec paramsSpec =
        encryptCipher.getParameters().getParameterSpec(GCMParameterSpec.class);
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, secretKey, paramsSpec);

    return decryptCipher.doFinal(dataEncrypted);
  }

  public SecretKey getKey(String algorithm, int keySize) throws NoSuchAlgorithmException {
    final KeyGenerator keyGenerator = KeyGenerator.getInstance(algorithm);
    keyGenerator.init(keySize);
    return keyGenerator.generateKey();
  }

  public GCMParameterSpec getGCMParameterSpec() {
    // initialize the IV (Initialization Vector) size to 96 bits (12 bytes)
    // Note: A 96-bit IV provides 2^96 unique combinations, which is sufficient for the most cases
    byte[] ivBytes = new byte[12];
    secureRandom.nextBytes(ivBytes);
    return new GCMParameterSpec(128, ivBytes);
  }

  public Cipher getCipher(String transformation, int opMode, Key key, GCMParameterSpec paramsSpec)
      throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException,
          InvalidKeyException {
    final Cipher cipher = Cipher.getInstance(transformation);
    cipher.init(opMode, key, paramsSpec);
    return cipher;
  }

  /**
   * Sanity check for the results to avoid wrong benchmarks comparisons
   *
   * @param input - initial byte array to encode
   * @param output - output byte array after decoding
   */
  private void sanityCheck(byte[] input, byte[] output) {
    if (input.length != output.length) {
      throw new AssertionError("Arrays have different length.");
    }

    for (int i = 0; i < input.length; i++) {
      if (input[i] != output[i]) {
        throw new AssertionError("Array values are different.");
      }
    }
  }
}
