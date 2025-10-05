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

check_command_line_options() {
  if [ ! $# -eq 1 ] && [ ! $# -eq 2 ]; then
    echo "Usage: ./plot-benchmarks.sh <jdk-version> [<arch>]"
    echo ""
    echo "Options:"
    echo "  jdk-version   Java version identifier for the generated results. Supported values are {11, 17, 21}."
    echo "  arch          Target architecture for the generated results. If not specified, it is automatically detected based on the current target architecture. Supported values are {x86_64, arm64}."
    echo ""
    echo "Examples:"
    echo "  ./plot-benchmarks.sh 11"
    echo "  ./plot-benchmarks.sh 11 x86_64"
    echo "  ./plot-benchmarks.sh 11 arm64"
    echo "  ./plot-benchmarks.sh 17"
    echo "  ./plot-benchmarks.sh 17 x86_64"
    echo "  ./plot-benchmarks.sh 17 arm64"
    echo "  ./plot-benchmarks.sh 21"
    echo "  ./plot-benchmarks.sh 21 x86_64"
    echo "  ./plot-benchmarks.sh 21 arm64"
    echo ""
    return 1
  fi
}

load_config_properties() {
  if [ -f ./settings/config.properties ]; then
    source ./settings/config.properties
    echo "Configuration properties have been successfully loaded from the './settings/config.properties' file."
  else
    echo "ERROR: File './settings/config.properties' not found. Unable to continue!"
    return 1
  fi
}

check_folder_exists() {
  folder="$1"
  if [ ! -d "$folder" ]; then
    echo ""
    echo "ERROR: Folder '$folder' does not exist. Unable to continue!"
    return 1
  fi
}

set_environment_variables() {
  export JDK_VERSION="${1:-$JDK_VERSION}"
  export BENCHMARKS_ARCH="${2:-$ARCH}"
  export JMH_BENCHMARKS="settings/benchmarks-suite-jdk${JDK_VERSION}.json"
  export JMH_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$BENCHMARKS_ARCH/jmh"
  export GEOMETRIC_MEAN_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$BENCHMARKS_ARCH/geomean"
  export PLOT_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$BENCHMARKS_ARCH/plot"

  if ! check_folder_exists "$JMH_OUTPUT_FOLDER"; then
    return 1
  fi

  echo "JDK version: $JDK_VERSION"
  echo "JMH benchmarks architecture: $BENCHMARKS_ARCH"
  echo "JMH benchmarks suite configuration file: $JMH_BENCHMARKS"
  echo "JMH output folder: $JMH_OUTPUT_FOLDER"
  echo "Geometric mean output folder: $GEOMETRIC_MEAN_OUTPUT_FOLDER"
  echo "Plot output folder: $PLOT_OUTPUT_FOLDER"
}

select_processing_language() {
  echo "Select the processing language for benchmark analysis:"
  echo "1) R"
  echo "2) Python"
  
  while true; do
    read -p "Enter your choice (1 or 2): " INPUT_KEY
    case $INPUT_KEY in
    1)
      export PROCESSING_LANGUAGE="R"
      export PROCESSING_SCRIPT_DIR="./scripts/ggplot2"
      export PROCESSING_EXTENSION="r"
      export PROCESSING_COMMAND="R"
      echo "Selected: R processing"
      break
      ;;
    2)
      export PROCESSING_LANGUAGE="Python"
      export PROCESSING_SCRIPT_DIR="./scripts/python"
      export PROCESSING_EXTENSION="py"
      export PROCESSING_COMMAND="python3"
      echo "Selected: Python processing"
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

merge_split_benchmark_results() {
  if [ "$PROCESSING_LANGUAGE" = "R" ]; then
    if $PROCESSING_COMMAND <$PROCESSING_SCRIPT_DIR/merge-benchmark.$PROCESSING_EXTENSION --no-save \
      --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER &&
      $PROCESSING_COMMAND <$PROCESSING_SCRIPT_DIR/split-benchmark.$PROCESSING_EXTENSION --no-save \
        --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER; then
      echo ""
      echo "Benchmark result files successfully pre-processed."
    else
      echo ""
      echo "ERROR: An error occurred while merging or splitting benchmark result files, unable to continue!"
      return 1
    fi
  else
    if $PROCESSING_COMMAND $PROCESSING_SCRIPT_DIR/merge_benchmark.$PROCESSING_EXTENSION \
        $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER &&
      $PROCESSING_COMMAND $PROCESSING_SCRIPT_DIR/split_benchmark.$PROCESSING_EXTENSION \
        $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER; then
      echo ""
      echo "Benchmark result files successfully pre-processed."
    else
      echo ""
      echo "ERROR: An error occurred while merging or splitting benchmark result files, unable to continue!"
      return 1
    fi
  fi
}

preprocess_benchmark_results() {
  echo "Before plotting, it is recommended to pre-process (e.g., merge, split) some of the benchmark result files."
  echo "For example:"
  echo " - Some benchmarks contain inter-connected results spread across multiple files, each corresponding to specific JVM flags. Merging these results will lead to a single (instead of multiple) generated plot(s), improving overall readability."
  echo " - Other benchmarks have results that differ significantly between iterations, making the plotting scale too large. Splitting these results into separate files will result in multiple (instead of a single) generated plots, each with an appropriate scale, improving the overall readability."
  echo "WARNING: You can skip this step if pre-processing was already triggered in a previous execution."
  echo ""

  while true; do
    read -p "Do you want to pre-process (e.g., merge, split) some of the benchmark result files? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      merge_split_benchmark_results
      return $?
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

extract_benchmark_files() {
  benchmark_type="$1"
  no_of_benchmarks=$(./$JQ -r ".benchmarks | length" <"$JMH_BENCHMARKS")
  benchmark_source_path="$(pwd)/benchmarks/src/main/java/com/ionutbalosin/jvm/performance/benchmarks/$benchmark_type"
  benchmark_files=()

  for ((counter = 0; counter < no_of_benchmarks; counter++)); do
    bench_name=$(./$JQ --argjson counter "$counter" -r ".benchmarks[$counter].name" <"$JMH_BENCHMARKS")

    if [[ -n $(find "$benchmark_source_path" -type f -name "$bench_name.java") ]]; then
      benchmark_files+=("$bench_name.csv")
    fi
  done

  echo "${benchmark_files[@]}"
}

benchmarks_geometric_mean() {
  echo "Extracting benchmark categories (may take a few seconds) ..."

  api_benchmark_files=($(extract_benchmark_files "api"))
  echo "Identified ${#api_benchmark_files[@]} 'api' benchmarks (possibly including duplicates)."

  compiler_benchmark_files=($(extract_benchmark_files "compiler"))
  echo "Identified ${#compiler_benchmark_files[@]} 'compiler' benchmarks (possibly including duplicates)."

  miscellaneous_benchmark_files=($(extract_benchmark_files "miscellaneous"))
  echo "Identified ${#miscellaneous_benchmark_files[@]} 'miscellaneous' benchmarks (possibly including duplicates)."

  if [ "$PROCESSING_LANGUAGE" = "R" ]; then
    if $PROCESSING_COMMAND <$PROCESSING_SCRIPT_DIR/geomean-benchmark.$PROCESSING_EXTENSION --no-save \
      --args "$JMH_OUTPUT_FOLDER" "$GEOMETRIC_MEAN_OUTPUT_FOLDER" \
      "$OPENJDK_HOTSPOT_VM_IDENTIFIER" "$GRAAL_VM_CE_IDENTIFIER" "$GRAAL_VM_EE_IDENTIFIER" "$AZUL_PRIME_VM_IDENTIFIER" \
      "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
      "$OPENJDK_HOTSPOT_VM_JIT" "$GRAAL_VM_CE_JIT" "$GRAAL_VM_EE_JIT" "$AZUL_PRIME_VM_JIT" \
      "${#api_benchmark_files[@]}" "${#compiler_benchmark_files[@]}" "${#miscellaneous_benchmark_files[@]}" \
      "${api_benchmark_files[@]}" "${compiler_benchmark_files[@]}" "${miscellaneous_benchmark_files[@]}"; then
      echo ""
      echo "Benchmarks' normalized geometric mean successfully calculated."
    else
      echo ""
      echo "ERROR: An error occurred while calculating the normalized geometric mean of benchmarks, unable to continue!"
      return 1
    fi
  else
    if $PROCESSING_COMMAND $PROCESSING_SCRIPT_DIR/geomean_benchmark.$PROCESSING_EXTENSION \
        "$JMH_OUTPUT_FOLDER" "$GEOMETRIC_MEAN_OUTPUT_FOLDER" \
        "$OPENJDK_HOTSPOT_VM_IDENTIFIER" "$GRAAL_VM_CE_IDENTIFIER" "$GRAAL_VM_EE_IDENTIFIER" "$AZUL_PRIME_VM_IDENTIFIER" \
        "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
        "$OPENJDK_HOTSPOT_VM_JIT" "$GRAAL_VM_CE_JIT" "$GRAAL_VM_EE_JIT" "$AZUL_PRIME_VM_JIT" \
        "${#api_benchmark_files[@]}" "${#compiler_benchmark_files[@]}" "${#miscellaneous_benchmark_files[@]}" \
        "${api_benchmark_files[@]}" "${compiler_benchmark_files[@]}" "${miscellaneous_benchmark_files[@]}"; then
      echo ""
      echo "Benchmarks' normalized geometric mean successfully calculated."
    else
      echo ""
      echo "ERROR: An error occurred while calculating the normalized geometric mean of benchmarks, unable to continue!"
      return 1
    fi
  fi
}

calculate_benchmarks_geometric_mean() {
  echo "This will calculate the normalized geometric mean (per category) for a specific set of benchmarks."
  echo "For example:"
  echo " - API benchmarks' normalized geometric mean"
  echo " - Compiler benchmarks' normalized geometric mean"
  echo " - Miscellaneous benchmarks' normalized geometric mean"
  echo "WARNING: You might skip this step if the normalized geometric mean was already calculated during a previous execution."
  echo ""

  while :; do
    read -p "Do you want to calculate the benchmarks' normalized geometric mean? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      benchmarks_geometric_mean
      return $?
      break
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

plot_benchmarks() {
  if [ "$PROCESSING_LANGUAGE" = "R" ]; then
    if $PROCESSING_COMMAND <$PROCESSING_SCRIPT_DIR/plot-benchmark.$PROCESSING_EXTENSION --no-save \
      --args "$JDK_VERSION" "$BENCHMARKS_ARCH" \
      "$JMH_OUTPUT_FOLDER" "$PLOT_OUTPUT_FOLDER" \
      "$OPENJDK_HOTSPOT_VM_IDENTIFIER" "$GRAAL_VM_CE_IDENTIFIER" "$GRAAL_VM_EE_IDENTIFIER" "$AZUL_PRIME_VM_IDENTIFIER" \
      "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
      "$OPENJDK_HOTSPOT_VM_COLOR_PALETTE" "$GRAAL_VM_CE_COLOR_PALETTE" "$GRAAL_VM_EE_COLOR_PALETTE" "$AZUL_PRIME_VM_COLOR_PALETTE"; then
      echo ""
      echo "Benchmark plots successfully generated."
    else
      echo ""
      echo "ERROR: An error occurred while plotting benchmark results, unable to continue!"
      return 1
    fi
  else
    if $PROCESSING_COMMAND $PROCESSING_SCRIPT_DIR/plot_benchmark.$PROCESSING_EXTENSION \
        "$JDK_VERSION" "$BENCHMARKS_ARCH" \
        "$JMH_OUTPUT_FOLDER" "$PLOT_OUTPUT_FOLDER" \
        "$OPENJDK_HOTSPOT_VM_IDENTIFIER" "$GRAAL_VM_CE_IDENTIFIER" "$GRAAL_VM_EE_IDENTIFIER" "$AZUL_PRIME_VM_IDENTIFIER" \
        "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
        "$OPENJDK_HOTSPOT_VM_COLOR_PALETTE" "$GRAAL_VM_CE_COLOR_PALETTE" "$GRAAL_VM_EE_COLOR_PALETTE" "$AZUL_PRIME_VM_COLOR_PALETTE"; then
      echo ""
      echo "Benchmark plots successfully generated."
    else
      echo ""
      echo "ERROR: An error occurred while plotting benchmark results, unable to continue!"
      return 1
    fi
  fi
}

plot_benchmark_results() {
  echo "This will generate benchmark plots (i.e., SVG files) based on the benchmark result files."
  echo "WARNING: You might skip this step if plotting of the benchmarks was already triggered during a previous execution."
  echo ""

  while true; do
    read -p "Do you want to plot the benchmark results? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      plot_benchmarks
      return $?
      ;;
    no)
      break
      ;;
    *)
      echo "Sorry, I don't understand. Try again!"
      ;;
    esac
  done
}

echo ""
echo "#############################################################################"
echo "#######       JVM Performance Benchmarks Results Plot Generator       #######"
echo "#############################################################################"
if ! check_command_line_options "$@"; then
  exit 1
fi

echo ""
echo "+================================+"
echo "| [1/9] Configuration Properties |"
echo "+================================+"
if ! load_config_properties; then
  exit 1
fi

echo ""
echo "+=============================+"
echo "| [2/9] Hardware Architecture |"
echo "+=============================+"
. ./scripts/shell/configure-arch.sh

echo ""
echo "+========================+"
echo "| [3/9] OS Configuration |"
echo "+========================+"
. ./scripts/shell/configure-os.sh || exit 1

echo ""
echo "+========================+"
echo "| [4/9] JQ Configuration |"
echo "+========================+"
. ./scripts/shell/configure-jq.sh || exit 1

echo ""
echo "+=============================+"
echo "| [5/9] Environment Variables |"
echo "+=============================+"
set_environment_variables "$@" || exit 1

echo ""
echo "+===========================+"
echo "| [6/9] Processing Language |"
echo "+===========================+"
select_processing_language

echo ""
read -r -p "If the above configuration is accurate, press ENTER to proceed or CTRL+C to abort ... "

echo ""
echo "+=====================================+"
echo "| [7/9] Pre-process Benchmark Results |"
echo "+=====================================+"
if ! preprocess_benchmark_results; then
  exit 1
fi

echo ""
echo "+=======================================================+"
echo "| [8/9] Calculate Benchmarks' Normalized Geometric Mean |"
echo "+=======================================================+"
if ! calculate_benchmarks_geometric_mean; then
  exit 1
fi

echo ""
echo "+======================+"
echo "| [9/9] Plot Benchmark |"
echo "+======================+"
plot_benchmarks