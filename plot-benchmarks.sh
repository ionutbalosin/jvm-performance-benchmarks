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

check_command_line_options() {
  if [ $# -eq 0 ]; then
    echo "Usage: ./plot-benchmarks <jdk-version> [<arch>]"
    echo ""
    echo "Options:"
    echo "  jdk-version   Java version identifier for the generated results. Supported values are {11, 17}."
    echo "  arch          Target architecture for the generated results. If not specified, it is automatically detected based on the current target architecture. Supported values are {x86_64, arm64}."
    echo ""
    echo "Examples:"
    echo "  ./plot-benchmarks 11"
    echo "  ./plot-benchmarks 11 x86_64"
    echo "  ./plot-benchmarks 11 arm64"
    echo "  ./plot-benchmarks 17"
    echo "  ./plot-benchmarks 17 x86_64"
    echo "  ./plot-benchmarks 17 arm64"
    echo ""
    return 1
  fi

  JDK_VERSION="${1:-$JDK_VERSION}"
  ARCH="${2:-$(uname -m)}"
}

set_environment_variables() {
  export JMH_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH/jmh"
  export GEOMETRIC_MEAN_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH/geomean"
  export PLOT_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH/plot"

  export OPENJDK_HOTSPOT_VM_IDENTIFIER="openjdk-hotspot-vm"
  export OPENJDK_HOTSPOT_VM_NAME="OpenJDK HotSpot VM"
  export OPENJDK_HOTSPOT_VM_JIT="C2 JIT"
  export OPENJDK_HOTSPOT_VM_COLOR_PALETTE="#648FFF"

  export GRAAL_VM_CE_IDENTIFIER="graalvm-ce"
  export GRAAL_VM_CE_NAME="GraalVM CE"
  export GRAAL_VM_CE_JIT="GraalVM CE JIT"
  export GRAAL_VM_CE_COLOR_PALETTE="#FFB000"

  export GRAAL_VM_EE_IDENTIFIER="graalvm-ee"
  export GRAAL_VM_EE_NAME="GraalVM EE"
  export GRAAL_VM_EE_JIT="GraalVM EE JIT"
  export GRAAL_VM_EE_COLOR_PALETTE="#FE6100"

  export AZUL_PRIME_VM_IDENTIFIER="azul-prime-vm"
  export AZUL_PRIME_VM_NAME="Azul Prime VM"
  export AZUL_PRIME_VM_JIT="Azul Prime JIT"
  export AZUL_PRIME_VM_COLOR_PALETTE="#785EF0"

  echo "JMH output folder: $JMH_OUTPUT_FOLDER"
  echo "Geometric mean output folder: $GEOMETRIC_MEAN_OUTPUT_FOLDER"
  echo "Plot output folder: $PLOT_OUTPUT_FOLDER"

  echo "OpenJDK HotSpot VM identifier: $OPENJDK_HOTSPOT_VM_IDENTIFIER"
  echo "OpenJDK HotSpot VM name: $OPENJDK_HOTSPOT_VM_NAME"
  echo "OpenJDK HotSpot JIT: $OPENJDK_HOTSPOT_VM_JIT"
  echo "OpenJDK HotSpot VM Palette Color: $OPENJDK_HOTSPOT_VM_COLOR_PALETTE"

  echo "GraalVM CE identifier: $GRAAL_VM_CE_IDENTIFIER"
  echo "GraalVM CE name: $GRAAL_VM_CE_NAME"
  echo "GraalVM CE JIT: $GRAAL_VM_CE_JIT"
  echo "GraalVM CE Palette Color: $GRAAL_VM_CE_COLOR_PALETTE"

  echo "GraalVM EE identifier: $GRAAL_VM_EE_IDENTIFIER"
  echo "GraalVM EE name: $GRAAL_VM_EE_NAME"
  echo "GraalVM EE JIT: $GRAAL_VM_EE_JIT"
  echo "GraalVM EE Palette Color: $GRAAL_VM_EE_COLOR_PALETTE"

  echo "Azul Prime VM identifier: $AZUL_PRIME_VM_IDENTIFIER"
  echo "Azul Prime VM name: $AZUL_PRIME_VM_NAME"
  echo "Azul Prime JIT: $AZUL_PRIME_VM_JIT"
  echo "Azul Prime VM Palette Color: $AZUL_PRIME_VM_COLOR_PALETTE"

  echo ""
  read -r -p "If the above configuration is accurate, press ENTER to proceed or CTRL+C to abort ... "
}

check_folder_exists() {
  folder="$1"
  if [ ! -d "$folder" ]; then
    echo ""
    echo "ERROR: Folder '$folder' does not exist. Unable to continue!"
    return 1
  fi
}

merge_split_benchmark_results() {
  if R <./ggplot2/merge-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER &&
    R <./ggplot2/split-benchmark.r --no-save \
      --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER; then
    echo ""
    echo "Benchmark result files successfully pre-processed."
  else
    echo ""
    echo "ERROR: An error occurred while merging or splitting benchmark result files, unable to continue!"
    return 1
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

benchmarks_geometric_mean() {
  if R <./ggplot2/geomean-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $GEOMETRIC_MEAN_OUTPUT_FOLDER \
    $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER \
    "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
    "$OPENJDK_HOTSPOT_VM_JIT" "$GRAAL_VM_CE_JIT" "$GRAAL_VM_EE_JIT" "$AZUL_PRIME_VM_JIT"; then
    echo ""
    echo "Benchmarks' normalized geometric mean successfully calculated."
  else
    echo ""
    echo "ERROR: An error occurred while calculating the normalized geometric mean of benchmarks, unable to continue!"
    return 1
  fi
}

calculate_benchmarks_geometric_mean() {
  echo "This will calculate the normalized geometric mean (per category) for a specific set of benchmarks."
  echo "For example:"
  echo " - JIT compiler benchmarks' normalized geometric mean"
  echo " - Macro benchmarks' normalized geometric mean"
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
  if R <./ggplot2/plot-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $PLOT_OUTPUT_FOLDER \
    $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER $AZUL_PRIME_VM_IDENTIFIER \
    "$OPENJDK_HOTSPOT_VM_NAME" "$GRAAL_VM_CE_NAME" "$GRAAL_VM_EE_NAME" "$AZUL_PRIME_VM_NAME" \
    "$OPENJDK_HOTSPOT_VM_COLOR_PALETTE" "$GRAAL_VM_CE_COLOR_PALETTE" "$GRAAL_VM_EE_COLOR_PALETTE" "$AZUL_PRIME_VM_COLOR_PALETTE"; then
    echo ""
    echo "Benchmark plots successfully generated."
  else
    echo ""
    echo "ERROR: An error occurred while plotting benchmark results, unable to continue!"
    return 1
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
echo "#############################################################"
echo "#######       Benchmarks Results Plot Generator       #######"
echo "#############################################################"
if ! check_command_line_options "$@"; then
  exit 1
fi

echo ""
echo "+-----------------------+"
echo "| Environment Variables |"
echo "+-----------------------+"
set_environment_variables

if ! check_folder_exists "$JMH_OUTPUT_FOLDER"; then
  exit 1
fi

echo ""
echo "+-------------------------------+"
echo "| Pre-process Benchmark Results |"
echo "+-------------------------------+"
if ! preprocess_benchmark_results; then
  exit 1
fi

echo ""
echo "+-------------------------------------------------+"
echo "| Calculate Benchmarks' Normalized Geometric Mean |"
echo "+-------------------------------------------------+"
if ! calculate_benchmarks_geometric_mean; then
  exit 1
fi

echo ""
echo "+------------------------+"
echo "| Plot Benchmark Results |"
echo "+------------------------+"
plot_benchmark_results
