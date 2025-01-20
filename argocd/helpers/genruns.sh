#!/bin/bash

set -euo pipefail

benchmarks_bucket=${1:-}
target_jre_benchmark_file=${2:-}
reference_jre_benchmark_file=${3:-}
target_jdk=${4:-}
target_jre=${5:-}
reference_jdk=${6:-}
reference_jre=${7:-}

if [ "${benchmarks_bucket}" == "" ]; then
  echo "Benchmark bucket needs to be provided"
  exit 1
fi
if [ "${target_jre_benchmark_file}" == "" ]; then
  echo "Target benchmark file needs to be provided"
  exit 1
fi
if [ "${reference_jre_benchmark_file}" == "" ]; then
  echo "Reference benchmark file needs to be provided"
  exit 1
fi

if [ "${target_jdk}" == "" ] ||
    [ "${reference_jre}" == "" ] ||
    [ "${reference_jdk}" == "" ] ||
    [ "${reference_jre}" == "" ]; then
  echo "All target and reference JDK and JRE needs to be provided"
  exit 1
fi

target_jre_exists=$(gcloud storage ls \
  "gs://${benchmarks_bucket}/${target_jre_benchmark_file}" &&
  echo "true" || echo "false")
reference_jre_exists=$(gcloud storage ls \
  "gs://${benchmarks_bucket}/${reference_jre_benchmark_file}" &&
  echo "true" || echo "false")


echo "["

if [[ "${target_jre_exists}" == "false" ]]; then
cat <<EOF
  {
    "target_jdk": "${target_jdk}",
    "target_jre": "${target_jre}",
    "benchmark_file": "${target_jre_benchmark_file}",
    "checkout_volume": "target"
  }
EOF
fi

if [[ "${target_jre_exists}" == "false" ]] &&
    [[ "${reference_jre_exists}" == "false" ]]; then
  echo "  ,"
fi

if [[ "${reference_jre_exists}" == "false" ]]; then
cat <<EOF
  {
    "target_jdk": "${reference_jdk}",
    "target_jre": "${reference_jre}",
    "benchmark_file": "${reference_jre_benchmark_file}",
    "checkout_volume": "reference"
  }
EOF
fi

echo "]"
