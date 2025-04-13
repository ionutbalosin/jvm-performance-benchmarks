#!/bin/bash
#
# JVM Performance Benchmarks
#
# Copyright (C) 2019-2025 Ionut Balosin
# Website:      www.ionutbalosin.com
# Social Media:
#   LinkedIn:   ionutbalosin
#   Bluesky:    @ionutbalosin.bsky.social
#   X:          @ionutbalosin
#   Mastodon:   ionutbalosin@mastodon.social
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

export JMH_JAR="benchmarks/target/benchmarks.jar"
export JMH_BENCHMARKS="settings/benchmarks-suite-jdk${JDK_VERSION}.json"
export JMH_OUTPUT_FOLDER="results/jdk-$JDK_VERSION/$ARCH/jmh/$JVM_IDENTIFIER"

echo "JMH JAR: $JMH_JAR"
echo "JMH benchmarks suite configuration file: $JMH_BENCHMARKS"
echo "JMH output folder: $JMH_OUTPUT_FOLDER"