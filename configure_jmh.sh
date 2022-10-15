#!/bin/bash

export JMH_ARCHIVE="benchmarks/target/benchmarks.jar"
export JMH_OPTS="-foe true -wi 5 -w 10 -i 5 -r 10 -f 3"
export JMH_OUTPUT_FOLDER="results"
export JMH_OUTPUT_FORMAT_TYPE="csv"
# Element array format: "Test Name | JMH Options"
# Note: these JMH options are test specific, in addition to global $JMH_OPTS defined above
export -a JMH_TEST_SUITE=(
    "DeadStoreEliminationBenchmark|-prof gc"
    "VectorizationPatternsSingleIntArrayBenchmark|"
  )

echo ""
echo "JMH_ARCHIVE=${JMH_ARCHIVE}"
echo "JMH_OUTPUT_FOLDER=${JMH_OUTPUT_FOLDER}"
echo "JMH_OPTS=${JMH_OPTS}"
echo "JMH_OUTPUT_FORMAT_TYPE=${JMH_OUTPUT_FORMAT_TYPE}"
echo ""