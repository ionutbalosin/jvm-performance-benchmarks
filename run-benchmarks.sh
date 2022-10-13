#!/bin/bash

secs_converter() {
    if [[ -z ${1} || ${1} -lt 60 ]] ;then
        min=0 ; secs="${1}"
    else
        time_mins=$(echo "scale=2; ${1}/60" | bc)
        min=$(echo ${time_mins} | cut -d'.' -f1)
        secs="0.$(echo ${time_mins} | cut -d'.' -f2)"
        secs=$(echo ${secs}*60|bc|awk '{print int($1+0.5)}')
    fi
    echo ""
    echo "Elapsed: ${min} minutes and ${secs} seconds."
}

create_folder()
{
  FOLDER="$1"
  if [ -d "$FOLDER" ]; then
    echo ""
    echo "Warning: folder $FOLDER already exists. Existing output benchmarks might be overridden!"
  else
    echo ""
    echo "Create $FOLDER folder"
    mkdir -p "$FOLDER"
  fi
}

run_test()
{
  FOLDER="$1"
  TEST_NAME="$2"
  TEST_JMH_OPTS="$3"
  CMD="java $JVM_OPTS -jar $JMH_ARCHIVE ".*$TEST_NAME.*" $JMH_OPTS $TEST_JMH_OPTS -rf $JMH_OUTPUT_FORMAT_TYPE -rff $FOLDER/$TEST_NAME.$JMH_OUTPUT_FORMAT_TYPE"
  CMD=$(echo "$CMD" | tr -s ' ')
  echo ""
  echo "Running $CMD"
  if [ "$DRY_RUN" != "--dry-run" ]; then
    eval $CMD
  fi
}

run_test_suite()
{

    echo ""
    echo "+======================================+"
    echo "| Running $TEST_SUITE_NAME Tests Suite |"
    echo "+======================================+"
    echo ""

    FOLDER="$JMH_OUTPUT_FOLDER/jdk-$JDK_VERSION/$ARCH/$TEST_SUITE_OUTPUT_FOLDER"

    create_folder "$FOLDER"

    test_suite_start=$(date +%s)

    for TEST in "${JMH_TEST_SUITE[@]}"
    do
      TEST_NAME="${TEST%%|*}"
      TEST_JMH_OPTS="${TEST##*|}"
      run_test "$FOLDER" "$TEST_NAME" "$TEST_JMH_OPTS"
    done

    echo ""
    echo "Finished $TEST_SUITE_NAME Tests Suite!"

    secs_converter "$(($(date +%s) - ${test_suite_start}))"
}

DRY_RUN="$1"

echo ""
echo "############################################################################"
echo "#######       Welcome to JVM Performance Benchmarks Test Suite       #######"
echo "############################################################################"
echo ""

echo ""
echo "+=========================+"
echo "| [1/3] JMH Configuration |"
echo "+=========================+"
echo ""
. ./configure_jvm.sh

echo ""
echo "+=========================+"
echo "| [2/3] JVM Configuration |"
echo "+=========================+"
echo ""
. ./configure_jmh.sh

echo ""
echo "+========================+"
echo "| [3/3] OS Configuration |"
echo "+========================+"
echo ""
. ./configure_linux_os.sh

echo ""
read -r -p "IMPORTANT: if the selected configuration is correct, press ENTER to continue otherwise CRTL+C to abort! "

run_test_suite