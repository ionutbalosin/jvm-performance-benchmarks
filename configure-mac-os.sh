#!/bin/bash

set_environment_variables() {
  export ARCH="$(uname -m)"
  export JQ="jq/jq-osx-amd64"

  echo "Operating system: Mac OS X"
  echo "Architecture: $ARCH"
  echo "JSON processor: $JQ"
  echo ""
  read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "
}

echo ""
echo "+--------------------------+"
echo "| OS environment variables |"
echo "+--------------------------+"
set_environment_variables