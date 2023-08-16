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
import java.util.Random;
import java.util.concurrent.TimeUnit;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
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
 * Encrypts and decrypts data using the Triple DES (3DES) algorithm in Cipher Block Chaining (CBC) mode
 * with both padding and no padding options. The process involves various key sizes and the utilization of an initialization vector (IV).
 * It's important to note that DESede/CBC mode requires an initialization vector (IV) to enhance security and provide effective encryption.
 */
@BenchmarkMode(Mode.AverageTime)
@OutputTimeUnit(TimeUnit.MILLISECONDS)
@Warmup(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Measurement(iterations = 5, time = 10, timeUnit = TimeUnit.SECONDS)
@Fork(value = 5)
@State(Scope.Benchmark)
public class DesCbcEncryptDecryptBenchmark {

  // $ java -jar */*/benchmarks.jar ".*DesCbcEncryptDecryptBenchmark.*"

  private final Random random = new Random(16384);
  private final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});
  private byte[] data, dataEncrypted, dataDecrypted;
  private Cipher encryptCipher, decryptCipher;

  @Param({"16384"})
  private int dataSize;

  @Param({"168"})
  private int keySize;

  @Param({"DESede/CBC/NoPadding", "DESede/CBC/PKCS5Padding"})
  private String transformation;

  @Setup()
  public void setup()
      throws NoSuchAlgorithmException, InvalidAlgorithmParameterException, NoSuchPaddingException,
          IllegalBlockSizeException, BadPaddingException, InvalidKeyException {
    // initialize data
    data = new byte[dataSize];
    random.nextBytes(data);

    // initialize ciphers
    final SecretKey secretKey = getKey("DESede", keySize);
    final IvParameterSpec ivSpec = getIvParameter();
    encryptCipher = getCipher(transformation, Cipher.ENCRYPT_MODE, secretKey, ivSpec);
    decryptCipher = getCipher(transformation, Cipher.DECRYPT_MODE, secretKey, ivSpec);

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

  public SecretKey getKey(String algorithm, int keySize) throws NoSuchAlgorithmException {
    final KeyGenerator keyGenerator = KeyGenerator.getInstance(algorithm);
    keyGenerator.init(keySize);
    return keyGenerator.generateKey();
  }

  public IvParameterSpec getIvParameter() {
    // initialize the IV (Initialization Vector) size to 64 bits (8 bytes)
    // Note: A 64-bit IV provides 2^64 unique combinations, which is sufficient for the most cases
    byte[] ivBytes = new byte[8];
    secureRandom.nextBytes(ivBytes);
    return new IvParameterSpec(ivBytes);
  }

  public Cipher getCipher(String transformation, int opMode, Key key, IvParameterSpec ivSpec)
      throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidAlgorithmParameterException,
          InvalidKeyException {
    final Cipher cipher = Cipher.getInstance(transformation);
    cipher.init(opMode, key, ivSpec);
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
