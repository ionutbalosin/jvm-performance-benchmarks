#!/bin/bash

export JMH_JAR="benchmarks/target/benchmarks.jar"
export JMH_BENCHMARKS="jmh-tests-suite-jdk${JDK_VERSION}.json"
export JMH_OUTPUT_FOLDER="results/jdk-$JDK_VERSION/$ARCH/$JVM_IDENTIFIER"

echo "JMH jar: $JMH_JAR"
echo "JMH tests suite configuration file: $JMH_BENCHMARKS"
echo "JMH output folder: $JMH_OUTPUT_FOLDER"
echo ""

read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "