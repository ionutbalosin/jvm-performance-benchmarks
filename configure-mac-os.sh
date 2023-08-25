#!/bin/bash
#
# JVM Performance Benchmarks
#
# Copyright (C) 2019 - 2023 Ionut Balosin
#
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing,
# software distributed under the License is distributed on an
# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
# KIND, either express or implied.  See the License for the
# specific language governing permissions and limitations
# under the License.
#

set_environment_variables() {
  export ARCH="$(uname -m)"
  export JQ="jq/jq-osx-amd64"

  echo "Operating system: Mac OS X"
  echo "Architecture: $ARCH"
  echo "JSON processor: $JQ"
  echo ""
  read -r -p "If the above configuration is correct, press ENTER to continue or CTRL+C to abort ... "
}

echo ""
echo "+--------------------------+"
echo "| OS environment variables |"
echo "+--------------------------+"
set_environment_variables
