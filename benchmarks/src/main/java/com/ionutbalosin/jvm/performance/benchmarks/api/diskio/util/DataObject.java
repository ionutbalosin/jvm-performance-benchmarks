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
package com.ionutbalosin.jvm.performance.benchmarks.api.diskio.util;

import java.io.Serializable;
import java.util.Random;

public class DataObject implements Serializable {

  private final Random random = new Random(16384);

  private final byte byteValue;
  private final short shortValue;
  private final int intValue;
  private final long longValue;
  private final float floatValue;
  private final double doubleValue;
  private final char charValue;
  private final boolean booleanValue;
  private final Byte byteWrapper;
  private final Short shortWrapper;
  private final Integer intWrapper;
  private final Long longWrapper;
  private final Float floatWrapper;
  private final Double doubleWrapper;
  private final Character charWrapper;
  private final Boolean booleanWrapper;

  public DataObject() {
    this.byteValue = (byte) random.nextInt(Byte.MAX_VALUE + 1);
    this.shortValue = (short) random.nextInt(Short.MAX_VALUE + 1);
    this.intValue = random.nextInt();
    this.longValue = random.nextLong();
    this.floatValue = random.nextFloat();
    this.doubleValue = random.nextDouble();
    this.charValue = (char) (random.nextInt(Character.MAX_VALUE + 1));
    this.booleanValue = random.nextBoolean();
    this.byteWrapper = Byte.valueOf((byte) random.nextInt(Byte.MAX_VALUE + 1));
    this.shortWrapper = Short.valueOf((short) random.nextInt(Short.MAX_VALUE + 1));
    this.intWrapper = Integer.valueOf(random.nextInt());
    this.longWrapper = Long.valueOf(random.nextLong());
    this.floatWrapper = Float.valueOf(random.nextFloat());
    this.doubleWrapper = Double.valueOf(random.nextDouble());
    this.charWrapper = Character.valueOf((char) (random.nextInt(Character.MAX_VALUE + 1)));
    this.booleanWrapper = Boolean.valueOf(random.nextBoolean());
  }
}
