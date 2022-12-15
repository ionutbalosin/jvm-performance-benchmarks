#!/usr/bin/sudo bash

set_environment_variables() {
  export ARCH="$(uname -m)"
  export JQ="jq/jq-win64.exe"
  echo "Architecture: $ARCH"
  echo "JSON processor executable: $JQ"
  echo ""
  read -r -p "If the above configuration is correct, press ENTER to continue or CRTL+C to abort ... "
}

echo ""
echo "+---------------------------+"
echo "| Set environment variables |"
echo "+---------------------------+"
set_environment_variables