#!/bin/bash
#
#  JVM Performance Benchmarks
#
#  Copyright (C) 2019 - 2022 Ionut Balosin
#  Website: www.ionutbalosin.com
#  Twitter: @ionutbalosin
#
#  Co-author: Florin Blanaru
#  Twitter: @gigiblender
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

check_command_line_options() {
  if [ $# -eq 0 ]; then
    echo "Usage: ./plot-benchmarks <jdk-version> [<arch>]"
    echo ""
    echo "Options:"
    echo "  jdk-version   java version identifier for the generated results. The supported values are {11, 17}"
    echo "  arch          target architecture for the generated results. If not specified, it is automatically detected based on the current target architecture. The supported values are {x86_64, arm64}"
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

  if [ "$1" ]; then
    export JDK_VERSION="$1"
  fi

  if [ "$2" ]; then
    export ARCH="$2"
  else
    export ARCH=$(uname -m)
  fi
}

set_environment_variables() {
  export JMH_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH"
  export GEOMETRIC_MEAN_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH/geomean"
  export PLOT_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH/plot"
  export OPENJDK_HOTSPOT_VM_IDENTIFIER="openjdk-hotspot-vm"
  export GRAAL_VM_CE_IDENTIFIER="graalvm-ce"
  export GRAAL_VM_EE_IDENTIFIER="graalvm-ee"

  echo "JMH output folder: $JMH_OUTPUT_FOLDER"
  echo "Geometric mean output folder: $GEOMETRIC_MEAN_OUTPUT_FOLDER"
  echo "Plot output folder: $PLOT_OUTPUT_FOLDER"
  echo "OpenJDK HotSpot VM identifier: $OPENJDK_HOTSPOT_VM_IDENTIFIER"
  echo "GraalVM CE identifier: $GRAAL_VM_CE_IDENTIFIER"
  echo "GraalVM EE identifier: $GRAAL_VM_EE_IDENTIFIER"
  echo ""
  read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "
}

check_folder_exists() {
  folder="$1"
  if [ ! -d "$folder" ]; then
    echo ""
    echo "ERROR: Folder $folder do not exist, unable to continue!"
    return 1
  fi
}

merge_split_benchmark_results() {
  R <./ggplot2/merge-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER
  if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Error encountered while merging benchmark result files, unable to continue!"
    return 1
  fi

  R <./ggplot2/split-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER
  if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Error encountered while splitting benchmark result files, unable to continue!"
    return 1
  fi

  echo ""
  echo "Benchmark result files successfully pre-processed."
}

preprocess_benchmark_results() {
  echo "Before plotting it is recommended to pre-process (e.g., merge, split) some of the benchmark result files."
  echo "For example:"
  echo " - some benchmarks contain related results that are spread across multiple output files, one file corresponding to a Garbage Collector (or other interconnected JVM flags). Merging these results will lead to one single (instead of multiple) generated plot(s), hence improving the overall readability."
  echo " - other benchmarks contain results that are orders of magnitude different between iterations, making the plotting scale too big. Splitting these results into separated files will lead multiple (instead of a single) generated plots, each having a proper scale, hence improving the overall readability."
  echo "WARNING: You might skip this step if pre-processing was already triggered during a previous execution."
  echo ""
  while :; do
    read -p "Do you want to pre-process (e.g., merge, split) some of the benchmark result files? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      merge_split_benchmark_results
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

benchmarks_geometric_mean() {
  R <./ggplot2/geomean-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $GEOMETRIC_MEAN_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER
  if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Error encountered while calculating the benchmarks geometric mean, unable to continue!"
    return 1
  fi

  echo ""
  echo "Benchmarks geometric mean successfully calculated."
}

calculate_benchmarks_geometric_mean() {
  echo "This will calculate the geometric mean (per category) for a specific set of benchmarks."
  echo "For example:"
  echo " - Compiler benchmarks geometric mean"
  echo " - Garbage Collector benchmarks geometric mean"
  echo " - Macro benchmarks geometric mean"
  echo "WARNING: You might skip this step if geometric mean was already calculated during a previous execution."
  echo ""
  while :; do
    read -p "Do you want to calculate the benchmarks geometric mean? (yes/no) " INPUT_KEY
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
  R <./ggplot2/plot-benchmark.r --no-save \
    --args $JMH_OUTPUT_FOLDER $PLOT_OUTPUT_FOLDER $OPENJDK_HOTSPOT_VM_IDENTIFIER $GRAAL_VM_CE_IDENTIFIER $GRAAL_VM_EE_IDENTIFIER
  if [ $? -ne 0 ]; then
    echo ""
    echo "ERROR: Error encountered while plotting benchmarks results, unable to continue!"
    return 1
  fi

  echo ""
  echo "Benchmark plots successfully generated."
}

plot_benchmark_results() {
  echo "This will generate the benchmark plots (i.e., SVG files) based on the benchmark result files."
  echo "WARNING: You might skip this step if plotting of the benchmarks was already triggered during a previous execution."
  echo ""
  while :; do
    read -p "Do you want to plot the benchmarks results? (yes/no) " INPUT_KEY
    case $INPUT_KEY in
    yes)
      plot_benchmarks
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

echo ""
echo "#############################################################"
echo "#######       Benchmarks Results Plot Generator       #######"
echo "#############################################################"
check_command_line_options "$@"
if [ $? -ne 0 ]; then
  exit 1
fi

echo ""
echo "+-----------------------+"
echo "| Environment variables |"
echo "+-----------------------+"
set_environment_variables

check_folder_exists "$JMH_OUTPUT_FOLDER"
if [ $? -ne 0 ]; then
  exit 1
fi

echo ""
echo "+-------------------------------+"
echo "| Pre-process benchmark results |"
echo "+-------------------------------+"
preprocess_benchmark_results
if [ $? -ne 0 ]; then
  exit 1
fi

echo ""
echo "+-------------------------------------+"
echo "| Calculate benchmarks geometric mean |"
echo "+-------------------------------------+"
calculate_benchmarks_geometric_mean
if [ $? -ne 0 ]; then
  exit 1
fi

echo ""
echo "+------------------------+"
echo "| Plot benchmark results |"
echo "+------------------------+"
plot_benchmark_results
