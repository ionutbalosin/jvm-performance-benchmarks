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

configure_openjdk11_hotspot_vm() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="OpenJDK HotSpot VM"
  export JVM_IDENTIFIER="openjdk-hotspot-vm"
}

configure_openjdk17_hotspot_vm() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="OpenJDK HotSpot VM"
  export JVM_IDENTIFIER="openjdk-hotspot-vm"
}

configure_graalvm_ce_jdk11() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM CE"
  export JVM_IDENTIFIER="graalvm-ce"
}

configure_graalvm_ce_jdk17() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM CE"
  export JVM_IDENTIFIER="graalvm-ce"
}

configure_graalvm_ee_jdk11() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM EE"
  export JVM_IDENTIFIER="graalvm-ee"
}

configure_graalvm_ee_jdk17() {
  export JAVA_HOME="<path_to_jdk>"
  export JVM_NAME="GraalVM EE"
  export JVM_IDENTIFIER="graalvm-ee"
}

echo "Select the JDK/JVM:"
echo "    1) - jdk-11 / OpenJDK HotSpot VM"
echo "    2) - jdk-11 / GraalVM CE"
echo "    3) - jdk-11 / GraalVM EE"
echo "    4) - jdk-17 / OpenJDK HotSpot VM"
echo "    5) - jdk-17 / GraalVM CE"
echo "    6) - jdk-17 / GraalVM EE"
echo ""

while :; do
  read -r INPUT_KEY
  case $INPUT_KEY in
  1)
    configure_openjdk11_hotspot_vm
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
    configure_openjdk17_hotspot_vm
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

if [ ! -x "$JAVA_HOME"/bin/java ]; then
  echo ""
  echo "ERROR: Cannot properly execute '$JAVA_HOME/bin/java' command, unable to continue!"
  exit 1
fi

export PATH=$JAVA_HOME/bin:$PATH
export JDK_VERSION=$(java -XshowSettings:properties 2>&1 >/dev/null | grep 'java.specification.version' | awk '{split($0, array, "="); print array[2]}' | xargs echo -n)

echo ""
echo "Java home: $JAVA_HOME"
echo "JDK version: $JDK_VERSION"
echo "JVM name: $JVM_NAME"
echo "JVM benchmarks identifier: $JVM_IDENTIFIER"
echo ""

read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "
