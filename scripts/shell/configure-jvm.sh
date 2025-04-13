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

configure_jvm() {
  export JAVA_HOME="$1"
  export JVM_NAME="$2"
  export JVM_IDENTIFIER="$3"
}

select_jvm() {
  echo ""
  echo "Select a JVM:"
  echo "  1) OpenJDK HotSpot VM"
  echo "  2) GraalVM CE"
  echo "  3) Oracle GraalVM (formerly GraalVM EE)"
  echo "  4) Azul Prime VM (formerly Azul Zing VM)"
  echo ""

  while :; do
    read -r INPUT_KEY
    case $INPUT_KEY in
    1)
      configure_jvm "$OPENJDK_HOTSPOT_VM_HOME" "$OPENJDK_HOTSPOT_VM_NAME" "$OPENJDK_HOTSPOT_VM_IDENTIFIER"
      break
      ;;
    2)
      configure_jvm "$GRAAL_VM_CE_HOME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_CE_IDENTIFIER"
      break
      ;;
    3)
      configure_jvm "$GRAAL_VM_EE_HOME" "$GRAAL_VM_EE_NAME" "$GRAAL_VM_EE_IDENTIFIER"
      break
      ;;
    4)
      configure_jvm "$AZUL_PRIME_VM_HOME" "$AZUL_PRIME_VM_NAME" "$AZUL_PRIME_VM_IDENTIFIER"
      break
      ;;
    *)
      echo "Sorry, I don't understand. Please try again!"
      ;;
    esac
  done
}

set_environment_variables() {
  if [ ! -x "$JAVA_HOME"/bin/java ]; then
    echo ""
    echo "ERROR: Unable to execute the '$JAVA_HOME/bin/java' command. Cannot proceed!"
    return 1
  fi
  export PATH=$JAVA_HOME/bin:$PATH

  supported_jdk_versions=("11" "17" "21")
  JDK_VERSION=$(java -XshowSettings:properties 2>&1 >/dev/null | grep 'java.specification.version' | awk '{split($0, array, "="); print array[2]}' | xargs)
  if [[ " ${supported_jdk_versions[*]} " != *" ${JDK_VERSION} "* ]]; then
    echo ""
    echo "ERROR: Unsupported JDK version ${JDK_VERSION}. Cannot proceed! Currently, only the following JDK versions are allowed: ${supported_jdk_versions[*]}."
    return 1
  fi
  export JDK_VERSION

  echo "Java home: $JAVA_HOME"
  echo "JDK version: $JDK_VERSION"
  echo "JVM name: $JVM_NAME"
  echo "JVM identifier: $JVM_IDENTIFIER"
}

echo ""
echo "+------------+"
echo "| Select JVM |"
echo "+------------+"
echo "The JDK version is automatically detected based on the JDK distribution found at the preconfigured 'JAVA_HOME' path."
echo "This assumes that the 'JAVA_HOME' variable has already been specified in the benchmark configuration scripts (i.e., the ./configure-jvm file). Otherwise, the subsequent execution will fail."
select_jvm

echo ""
echo "+---------------------------+"
echo "| JVM Environment Variables |"
echo "+---------------------------+"
if ! set_environment_variables; then
  exit 1
fi
