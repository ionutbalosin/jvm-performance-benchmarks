#!/bin/bash

check_command_line_options() {
  if [ $# -eq 0 ]; then
    echo "Usage: ./plot-benchmarks <jdk-version> [<arch>]"
    echo ""
    echo "Options:"
    echo "  jdk-version   java version identifier for the generated results"
    echo "  arch          target architecture for the generated results. If not specified, it is automatically detected based on the current target architecture"
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

  if [ "$1" ];then
    export JDK_VERSION="$1"
  fi

  if [ "$2" ];then
      export ARCH="$2"
    else
      export ARCH=$(uname -m)
  fi
}

set_environment_variables() {
  export JMH_OUTPUT_FOLDER="$(pwd)/results/jdk-$JDK_VERSION/$ARCH"
  export OPENJDK_HOTSPOT_VM_IDENTIFIER="openjdk-hotspot-vm"
  export GRAAL_VM_CE_IDENTIFIER="graalvm-ce"
  export GRAAL_VM_EE_IDENTIFIER="graalvm-ee"

  echo "JMH output folder: $JMH_OUTPUT_FOLDER"
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

plot_benchmark_suite() {
  # Note: the corresponding benchmark file results must have the same names and reside under the same folder structure:
  # e.g. <jmh_output_folder>
  #      +--> /openjdk_hotspot_vm/BenchmarkName.csv
  #      +--> /graalvm_ce/BenchmarkName.csv
  #      +--> /graalvm_ee/BenchmarkName.csv
  benchmarks_results=$(find $JMH_OUTPUT_FOLDER/$OPENJDK_HOTSPOT_VM_IDENTIFIER/*.csv -maxdepth 1 -type f | xargs -n 1 basename)
  for benchmark_result in $benchmarks_results
  do
      benchmark_basename=$(basename $benchmark_result .csv)
      openjdk_hotspot_vm_result=$JMH_OUTPUT_FOLDER/$OPENJDK_HOTSPOT_VM_IDENTIFIER/$benchmark_result
      graalvm_ce_result=$JMH_OUTPUT_FOLDER/$GRAAL_VM_CE_IDENTIFIER/$benchmark_result
      graalvm_ee_result=$JMH_OUTPUT_FOLDER/$GRAAL_VM_EE_IDENTIFIER/$benchmark_result

      echo ""
      echo "Plotting $benchmark_basename benchmark ..."
      R < ./ggplot2/plot-benchmark.r --save --args  $benchmark_basename $openjdk_hotspot_vm_result $graalvm_ce_result $graalvm_ee_result $JMH_OUTPUT_FOLDER
      if [ $? -ne 0 ];
      then
        echo ""
        echo "ERROR: Error encountered while plotting data from $benchmark_result, unable to continue!"
        return 1
      fi

  done

  echo ""
  echo "Benchmark plots successfully generated."
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
echo "+--------------+"
echo "| Plot results |"
echo "+--------------+"
plot_benchmark_suite