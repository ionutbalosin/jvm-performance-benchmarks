#!/bin/bash

export JMH_JAR="benchmarks/target/benchmarks.jar"
export JMH_BENCHMARKS="jmh_suite_jdk${JAVA_VERSION}.json"
export JMH_OUTPUT_FOLDER=$(echo "results/jdk-$JAVA_VERSION/$ARCH/$JAVA_VM_IDENTIFIER" | xargs echo -n | tr '[:space:]' '-' | tr '[:upper:]' '[:lower:]')

echo ""
echo "JMH_JAR: "$JMH_JAR
echo "JMH_BENCHMARKS: "$JMH_BENCHMARKS
echo "JMH_OUTPUT_FOLDER: "$JMH_OUTPUT_FOLDER
echo ""

read -r -p "IMPORTANT: if the above configuration is correct, press ENTER to continue otherwise CRTL+C to abort!"