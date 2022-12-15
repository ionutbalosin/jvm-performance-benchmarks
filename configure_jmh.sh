#!/bin/bash

export JMH_JAR="benchmarks/target/benchmarks.jar"
export JMH_BENCHMARKS="jmh_suite_jdk${JAVA_VERSION}.json"
export JMH_OUTPUT_FOLDER="results/jdk-$JAVA_VERSION/$ARCH/$JAVA_VM_IDENTIFIER"

echo "JMH jar: $JMH_JAR"
echo "JMH test suite file: $JMH_BENCHMARKS"
echo "JMH output folder: $JMH_OUTPUT_FOLDER"
echo ""

read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "