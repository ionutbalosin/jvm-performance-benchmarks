#!/bin/bash
#
# JVM Performance Benchmarks
#
# Copyright (C) 2019 - 2023 Ionut Balosin
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

configure_openjdk_hotspot_vm() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="OpenJDK HotSpot VM"
  export JVM_IDENTIFIER="openjdk-hotspot-vm"
}

configure_graalvm_ce() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM CE"
  export JVM_IDENTIFIER="graalvm-ce"
}

configure_graalvm_ee() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM EE"
  export JVM_IDENTIFIER="graalvm-ee"
}

configure_azul_prime_vm() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="Azul Prime VM"
  export JVM_IDENTIFIER="azul-prime-vm"
}

configure_jvm() {
  echo ""
  echo "Select the JVM:"
  echo "  1) OpenJDK HotSpot VM"
  echo "  2) GraalVM CE"
  echo "  3) Oracle GraalVM (former GraalVM EE)"
  echo "  4) Azul Prime VM (former Azul Zing VM)"
  echo ""

  while :; do
    read -r INPUT_KEY
    case $INPUT_KEY in
    1)
      configure_openjdk_hotspot_vm
      break
      ;;
    2)
      configure_graalvm_ce
      break
      ;;
    3)
      configure_graalvm_ee
      break
      ;;
    4)
      configure_azul_prime_vm
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

set_environment_variables() {
  if [ ! -x "$JAVA_HOME"/bin/java ]; then
    echo ""
    echo "ERROR: Cannot execute '$JAVA_HOME/bin/java' command, unable to continue!"
    return 1
  fi
  export PATH=$JAVA_HOME/bin:$PATH

  supported_jdk_versions=("11" "17" "21")
  JDK_VERSION=$(java -XshowSettings:properties 2>&1 >/dev/null | grep 'java.specification.version' | awk '{split($0, array, "="); print array[2]}' | xargs)
  if [[ " ${supported_jdk_versions[*]} " != *" ${JDK_VERSION} "* ]]; then
    echo ""
    echo "ERROR: Unsupported JDK version ${JDK_VERSION}, unable to continue! Currently, the allowed JDK versions are ${supported_jdk_versions[*]}."
    return 1
  fi
  export JDK_VERSION

  echo ""
  echo "Java home: $JAVA_HOME"
  echo "JDK version: $JDK_VERSION"
  echo "JVM name: $JVM_NAME"
  echo "JVM benchmarks identifier: $JVM_IDENTIFIER"
  echo ""

  read -r -p "If the above configuration is correct, press ENTER to continue or CTRL+C to abort ... "
}

echo ""
echo "+---------------+"
echo "| Configure JVM |"
echo "+---------------+"
echo "The JDK version is automatically detected based on the JDK distribution found at the preconfigured 'JAVA_HOME' path."
echo "This implies that the 'JAVA_HOME' variable has already been specified in the benchmark configuration scripts (i.e., the ./configure-jvm file), otherwise, the subsequent execution will fail."
configure_jvm

echo ""
echo "+---------------------------+"
echo "| JVM environment variables |"
echo "+---------------------------+"
if ! set_environment_variables; then
  exit 1
fi
