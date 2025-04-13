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
package com.ionutbalosin.jvm.performance.benchmarks.api.crypto.util;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;

public class CryptoUtils {

  public static SecretKey getSecretKey(String algorithm, int keySize)
      throws NoSuchAlgorithmException {
    final KeyGenerator keyGenerator = KeyGenerator.getInstance(algorithm);
    keyGenerator.init(keySize);
    return keyGenerator.generateKey();
  }

  public static KeyPair getKeyPair(String algorithm, int keySize) throws NoSuchAlgorithmException {
    final KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance(algorithm);
    keyPairGenerator.initialize(keySize);
    return keyPairGenerator.generateKeyPair();
  }

  public static Cipher getCipher(String transformation, int opMode, Key key)
      throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
    final Cipher cipher = Cipher.getInstance(transformation);
    cipher.init(opMode, key);
    return cipher;
  }

  public static IvParameterSpec getIvParameter(int noOfBytes) {
    // initialize the IV (Initialization Vector) for a specific size (i.e., number of bytes)
    // mathematically, the number of unique combinations for an N-bit IV is 2^N unique combinations,
    // where N = 8 x noOfBytes, which is sufficient for the most cases
    final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});
    final byte[] ivBytes = new byte[noOfBytes];
    secureRandom.nextBytes(ivBytes);
    return new IvParameterSpec(ivBytes);
  }

  public static GCMParameterSpec getGCMParameterSpec(int noOfBytes, int authNtagLength) {
    // initialize the IV (Initialization Vector) for a specific size (i.e., number of bytes)
    // mathematically, the number of unique combinations for an N-bit IV is 2^N unique combinations,
    // where N = 8 x noOfBytes, which is sufficient for the most cases
    final SecureRandom secureRandom = new SecureRandom(new byte[] {0x1, 0x2, 0x3, 0x4});
    final byte[] ivBytes = new byte[noOfBytes];
    secureRandom.nextBytes(ivBytes);
    return new GCMParameterSpec(authNtagLength, ivBytes);
  }

  public static Cipher getCipher(String transformation, int opMode, Key key, IvParameterSpec ivSpec)
      throws NoSuchPaddingException,
          NoSuchAlgorithmException,
          InvalidAlgorithmParameterException,
          InvalidKeyException {
    final Cipher cipher = Cipher.getInstance(transformation);
    cipher.init(opMode, key, ivSpec);
    return cipher;
  }

  public static Cipher getCipher(
      String transformation, int opMode, Key key, GCMParameterSpec paramsSpec)
      throws NoSuchPaddingException,
          NoSuchAlgorithmException,
          InvalidAlgorithmParameterException,
          InvalidKeyException {
    final Cipher cipher = Cipher.getInstance(transformation);
    cipher.init(opMode, key, paramsSpec);
    return cipher;
  }
}
