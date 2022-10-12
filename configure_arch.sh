#!/bin/bash

configure_amd64()
{
  export ARCH="amd64"
}

configure_aarch64()
{
  export ARCH="aarch64"
}

configure_aarch64_m1()
{
  export ARCH="aarch64_m1"
}

echo ""
echo "+==================================+"
echo "| [1/3] Architecture Configuration |"
echo "+==================================+"
echo ""

echo "Select the architecture:"
echo "    1) - amd64 (x86_64)"
echo "    2) - aarch64 (arm64)"
echo "    3) - aarch64/M1 (arm64/)"
echo ""
echo "NOTE: This is only informative and only used to create the test structure output folder."
echo ""

while :
do
  read -r INPUT_KEY
  case $INPUT_KEY in
	1)
    configure_amd64
    break
		;;
	2)
    configure_aarch64
    break
		;;
	3)
    configure_aarch64_m1
    break
		;;
	*)
		echo "Sorry, I don't understand. Try again!"
		;;
	esac
done

echo ""
echo "ARCH=${ARCH}"
echo ""