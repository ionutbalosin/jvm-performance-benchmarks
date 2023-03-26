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

time_converter() {
  if [[ -z ${1} || ${1} -lt 60 ]]; then
    min=0
    secs="${1}"
  else
    time_min=$(echo "scale=2; ${1}/60" | bc)
    min=$(echo "${time_min}" | cut -d'.' -f1)
    secs="0.$(echo "${time_min}" | cut -d'.' -f2)"
    secs=$(echo "${secs} * 60" | bc | awk '{print int($1+0.5)}')
  fi
  echo ""
  echo "Elapsed: ${min} minutes and ${secs} seconds."
}

default_if_empty() {
  value="$1"
  default_value="$2"
  if [[ -z "$value" || "$value" == "null" ]]; then
    echo "$default_value"
  else
    echo "$value"
  fi
}

remove_spaces() {
  echo "$1" | xargs echo -n | tr -s ' '
}

create_folder() {
  folder="$1"
  if [ -d "$folder" ]; then
    echo ""
    echo "WARNING: Folder $folder already exists. Existing output benchmarks might be overridden."
  else
    echo ""
    echo "Creating $folder folder ..."
    mkdir -p "$folder"
  fi
}

run_benchmark() {
  JVM_OPTS=$(remove_spaces "$1")
  TEST_NAME=$(remove_spaces "$2")
  JMH_OPTS=$(remove_spaces "$3")
  JVM_ARGS_APPEND=$(remove_spaces "$4")
  CMD="java $JVM_OPTS -jar $JMH_JAR "\"\\\.$TEST_NAME\\\.\"" $JMH_OPTS -jvmArgsAppend \"$JVM_ARGS_APPEND\""
  echo ""
  echo "Running $TEST_NAME benchmark ..."
  echo "$CMD"
  echo ""
  if [ "$DRY_RUN" != "--dry-run" ]; then
    eval "$CMD"
  fi
}

run_benchmark_suite() {
  echo "Running $JVM_NAME tests suite ..."

  no_of_benchmarks=$(./$JQ -r ".benchmarks | length" <"$JMH_BENCHMARKS")
  global_jmh_opts=$(./$JQ -r ".globals.jmhOpts" <"$JMH_BENCHMARKS")
  global_jvm_opts=$(./$JQ -r ".globals.jvmOpts" <"$JMH_BENCHMARKS")
  global_jvm_args_append=$(./$JQ -r ".globals.jvmArgsAppend" <"$JMH_BENCHMARKS")

  create_folder "$JMH_OUTPUT_FOLDER"

  test_suite_start=$(date +%s)

  counter=0
  until [ $counter -gt $((no_of_benchmarks - 1)) ]; do
    bench_name=$(./$JQ --argjson counter "$counter" -r ".benchmarks[$counter].name" <"$JMH_BENCHMARKS")
    bench_output_file_name=$(./$JQ --argjson counter "$counter" -r ".benchmarks[$counter].outputFileName" <"$JMH_BENCHMARKS")
    bench_output_file_name=$(default_if_empty "$bench_output_file_name" "$bench_name")
    bench_jmh_opts=$(./$JQ --argjson counter "$counter" -r ".benchmarks[$counter].jmhOpts" <"$JMH_BENCHMARKS")
    bench_jmh_opts=$(default_if_empty "$bench_jmh_opts" "")
    bench_jvm_args_append=$(./$JQ --argjson counter "$counter" -r ".benchmarks[$counter].jvmArgsAppend" <"$JMH_BENCHMARKS")
    bench_jvm_args_append=$(default_if_empty "$bench_jvm_args_append" "")
    global_jmh_opts_upd="${global_jmh_opts/((outputFilePath))/${JMH_OUTPUT_FOLDER}/${bench_output_file_name}}"

    run_benchmark "$global_jvm_opts" "$bench_name" "$global_jmh_opts_upd $bench_jmh_opts" "$global_jvm_args_append $bench_jvm_args_append"

    ((counter++))
  done

  echo ""
  echo "Finished $JVM_NAME tests suite!"

  time_converter "$(($(date +%s) - test_suite_start))"
}

compile_benchmark_suite() {
  CMD="./mvnw -P jdk${JDK_VERSION}_profile clean package"
  echo "$CMD"
  echo ""
  eval "$CMD"
}

configure_os() {
  if [ "$(uname -s)" == "Linux" ]; then
    . ./configure-linux-os.sh "$DRY_RUN"
  elif [ "$(uname -s)" == "Darwin" ]; then
    . ./configure-mac-os.sh "$DRY_RUN"
  elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ] || [ "$(expr substr $(uname -s) 1 10)" == "MINGW64_NT" ]; then
    . ./configure-win-os.sh "$DRY_RUN"
  else
    echo "ERROR: No configuration is available for this OS. This is neither a Linux, Darwin nor a Windows OS."
    exit 1
  fi
}

echo ""
echo "#############################################################################"
echo "#######       Welcome to JVM Performance Benchmarks Tests Suite       #######"
echo "#############################################################################"
DRY_RUN="$1"

echo ""
echo "+========================+"
echo "| [1/5] OS Configuration |"
echo "+========================+"
configure_os

echo ""
echo "+=========================+"
echo "| [2/5] JVM Configuration |"
echo "+=========================+"
. ./configure-jvm.sh

echo ""
echo "+=========================+"
echo "| [3/5] JMH Configuration |"
echo "+=========================+"
. ./configure-jmh.sh

echo ""
echo "+===============================+"
echo "| [4/5] Compile benchmark suite |"
echo "+===============================+"
compile_benchmark_suite

echo ""
echo "+===========================+"
echo "| [5/5] Run benchmark suite |"
echo "+===========================+"
run_benchmark_suite
