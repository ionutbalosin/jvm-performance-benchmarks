#!/bin/bash

set -euo pipefail

parallelism=${1:-30}
limit=${2:-$parallelism}

if [ ${parallelism} -lt 1 ]; then
  echo "Benchmark parallelism can't be less that 1"
  exit 1
fi

echo "["
cat <<EOF
  {
    "id": "0",
    "split_arg": "0/${parallelism}"
  }
EOF
for group in $(seq 1 1 $((${parallelism}-1))); do
  if [ ${group} -ge ${limit} ]; then
    break;
  fi
  cat <<EOF
  ,{
    "id": "${group}",
    "split_arg": "${group}/${parallelism}"
  }
EOF
done
echo "]"
