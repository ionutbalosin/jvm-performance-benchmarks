#!/bin/bash

if [ "Linux" != "$(uname -s)" ]; then
  echo "WARNING: Not a Linux OS"
  exit 1
fi

# disable turbo boost
echo "TODO: Disable turbo boost"

# disable hyper-threading
echo "TODO: Disable hyper-threading"

# set 'scaling_governor' to 'performance'
echo "TODO: Set 'scaling_governor' to 'performance'"

# set cpu affinity
echo "TODO: Set cpu affinity"

# set process priority
echo "TODO: Set process priority"