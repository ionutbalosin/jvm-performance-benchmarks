#!/bin/bash

configure_openjdk_hotspot()
{
  export JDK_VERSION="17"
  export JAVA_HOME="/usr/lib/jvm/openjdk1-17.0.2"
  export PATH=$JAVA_HOME/bin:$PATH
  export JVM_OPTS=""
  export TEST_SUITE_NAME="OpenJDK HotSpot VM"
  export TEST_SUITE_OUTPUT_FOLDER="openjdk_hotspot"
}

configure_graalvm_ce()
{
  export JDK_VERSION="17"
  export JAVA_HOME="/usr/lib/jvm/graalvm-ce-java17-22.2.0"
  export PATH=$JAVA_HOME/bin:$PATH
  export JVM_OPTS=""
  export TEST_SUITE_NAME="GraalVM CE"
  export TEST_SUITE_OUTPUT_FOLDER="graalvm_ce"
}

configure_graalvm_ee()
{
  export JDK_VERSION="17"
  export JAVA_HOME="/usr/lib/jvm/graalvm-ee-java17-22.2.0.1"
  export PATH=$JAVA_HOME/bin:$PATH
  export JVM_OPTS=""
  export TEST_SUITE_NAME="GraalVM EE"
  export TEST_SUITE_OUTPUT_FOLDER="graalvm_ee"
}

configure_eclipse_open_j9()
{
  export JDK_VERSION="17"
  export JAVA_HOME="/usr/lib/jvm/ibm-semeru-openj9-jdk-17.0.2+8"
  export PATH=$JAVA_HOME/bin:$PATH
  export JVM_OPTS=""
  export TEST_SUITE_NAME="Eclipse OpenJ9 VM"
  export TEST_SUITE_OUTPUT_FOLDER="eclipse_openj9"
}

echo ""
echo "+=========================+"
echo "| [2/3] JVM Configuration |"
echo "+=========================+"
echo ""

echo "Select the JVM:"
echo "    1) - OpenJDK HotSpot VM"
echo "    2) - GraalVM CE"
echo "    3) - GraalVM EE"
echo "    4) - Eclipse OpenJ9"
echo ""

while :
do
  read -r INPUT_KEY
  case $INPUT_KEY in
	1)
    configure_openjdk_hotspot
    break
		;;
	2)
    configure_graalvm_ce
    break
		;;
	3)
    configure_graalvm_ee
    break
		;;
	4)
    configure_eclipse_open_j9
    break
		;;
	*)
		echo "Sorry, I don't understand. Try again!"
		;;
	esac
done

echo ""
echo "JDK_VERSION=${JDK_VERSION}"
echo "JAVA_HOME=${JAVA_HOME}"
echo "JVM_OPTS=${JVM_OPTS}"
echo "TEST_SUITE_NAME=${TEST_SUITE_NAME}"
echo "TEST_SUITE_OUTPUT_FOLDER=${TEST_SUITE_OUTPUT_FOLDER}"
echo ""
echo "Java version:"
java -version
echo ""