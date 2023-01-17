#!/bin/bash

configure_openjdk_hotspot_vm_jdk11() {
  export JAVA_HOME="/usr/lib/jvm/openjdk-11"
  export JAVA_VM_NAME="OpenJDK HotSpot VM"
  export JAVA_VM_IDENTIFIER="openjdk_hotspot_vm"
}

configure_openjdk_hotspot_vm_jdk17() {
  export JAVA_HOME="/usr/lib/jvm/openjdk-17.0.2"
  export JAVA_VM_NAME="OpenJDK HotSpot VM"
  export JAVA_VM_IDENTIFIER="openjdk_hotspot_vm"
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

echo "Select the JDK/JVM:"
echo "    1) - jdk-11 / OpenJDK HotSpot VM"
echo "    2) - jdk-11 / GraalVM CE"
echo "    3) - jdk-11 / GraalVM EE"
echo "    4) - jdk-17 / OpenJDK HotSpot VM"
echo "    5) - jdk-17 / GraalVM CE"
echo "    6) - jdk-17 / GraalVM EE"
echo ""

while :
do
  read -r INPUT_KEY
  case $INPUT_KEY in
	1)
    configure_openjdk_hotspot_vm_jdk11
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
    configure_openjdk_hotspot_vm_jdk17
    break
		;;
	5)
    configure_graalvm_ce_jdk17
    break
		;;
	6)
    configure_graalvm_ee_jdk17
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