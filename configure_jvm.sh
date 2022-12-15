#!/bin/bash

configure_openjdk_hotspot_jdk11() {
  export JAVA_HOME="/usr/lib/jvm/openjdk-11"
  export JAVA_VM_NAME="OpenJDK HotSpot VM"
  export JAVA_VM_IDENTIFIER="openjdk_hotspot"
}

configure_openjdk_hotspot_jdk17() {
  export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk-17.0.2.jdk/Contents/Home"
  export JAVA_VM_NAME="OpenJDK HotSpot VM"
  export JAVA_VM_IDENTIFIER="openjdk_hotspot"
}

configure_graalvm_ce_jdk11() {
  export JAVA_HOME="/usr/lib/jvm/graalvm-ce-java11-22.2.0"
  export JAVA_VM_NAME="GraalVM CE"
  export JAVA_VM_IDENTIFIER="graalvm_ce"
}

configure_graalvm_ce_jdk17() {
  export JAVA_HOME="/usr/lib/jvm/graalvm-ce-java17-22.2.0"
  export JAVA_VM_NAME="GraalVM CE"
  export JAVA_VM_IDENTIFIER="graalvm_ce"
}

configure_graalvm_ee_jdk11() {
  export JAVA_HOME="/usr/lib/jvm/graalvm-ee-java11-22.2.0.1"
  export JAVA_VM_NAME="GraalVM EE"
  export JAVA_VM_IDENTIFIER="graalvm_ee"
}

configure_graalvm_ee_jdk17() {
  export JAVA_HOME="/usr/lib/jvm/graalvm-ee-java17-22.2.0.1"
  export JAVA_VM_NAME="GraalVM EE"
  export JAVA_VM_IDENTIFIER="graalvm_ee"
}

configure_eclipse_open_j9_jdk11() {
  export JAVA_HOME="/usr/lib/jvm/ibm-semeru-openj9-jdk-11.0.14.1+1"
  export JAVA_VM_NAME="Eclipse OpenJ9 VM"
  export JAVA_VM_IDENTIFIER="eclipse_openj9"
}

configure_eclipse_open_j9_jdk17() {
  export JAVA_HOME="/usr/lib/jvm/ibm-semeru-openj9-jdk-17.0.2+8"
  export JAVA_VM_NAME="Eclipse OpenJ9 VM"
  export JAVA_VM_IDENTIFIER="eclipse_openj9"
}

echo "Select the JDK/JVM:"
echo "    1) - jdk_11 / OpenJDK HotSpot VM"
echo "    2) - jdk_11 / GraalVM CE"
echo "    3) - jdk_11 / GraalVM EE"
echo "    4) - jdk_11 / Eclipse OpenJ9"
echo "    5) - jdk_17 / OpenJDK HotSpot VM"
echo "    6) - jdk_17 / GraalVM CE"
echo "    7) - jdk_17 / GraalVM EE"
echo "    8) - jdk_17 / Eclipse OpenJ9"
echo ""

while :
do
  read -r INPUT_KEY
  case $INPUT_KEY in
	1)
    configure_openjdk_hotspot_jdk11
    break
		;;
	2)
    configure_graalvm_ce_jdk11
    break
		;;
	3)
    configure_graalvm_ee_jdk11
    break
		;;
	4)
    configure_eclipse_open_j9_jdk11
    break
		;;
	5)
    configure_openjdk_hotspot_jdk17
    break
		;;
	6)
    configure_graalvm_ce_jdk17
    break
		;;
	7)
    configure_graalvm_ee_jdk17
    break
		;;
	8)
    configure_eclipse_open_j9_jdk17
    break
		;;
	*)
		echo "Sorry, I don't understand. Try again!"
		;;
	esac
done

export PATH=$JAVA_HOME/bin:$PATH
export JAVA_VERSION=$(java -XshowSettings:properties 2>&1 >/dev/null | grep 'java.specification.version' | awk '{split($0, array, "="); print array[2]}' | xargs echo -n)

if ! $JAVA_HOME/bin/java -version; then
  echo ""
  echo "ERROR: Java is not properly set, unable to continue!"
  exit 1
fi

echo ""
echo "Java home: $JAVA_HOME"
echo "Java version: $JAVA_VERSION"
echo "JVM: $JAVA_VM_NAME"
echo "JVM benchmarks identifier: $JAVA_VM_IDENTIFIER"
echo ""

read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "