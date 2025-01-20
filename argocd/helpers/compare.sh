#!/bin/bash

set -euo pipefail

if [ $# -ne 2 ]; then
    echo "Usage: ./compare.sh [first results file] [second results file]"
    exit 1
fi

target=${1}
reference=${2}

if [ ! -f ${target} ]; then
    echo "Target benchmarks file $1 not found"
    exit 1
fi
if [ ! -f ${reference} ]; then
    echo "Reference benchmarks file $1 not found"
    exit 1
fi

cat<<EOF | jq '
      [ .[] | map(.name="\(.benchmark)(\(.params))") ]
      | . as $parent
      | [.[][].name] | sort | unique
      | map( { "name": . } )
      | map(
          .name as $name |
          {
            "name": (.name | tostring),
            "target": ([$parent[0][] | select(.name == $name)][0]),
            "reference": ([$parent[1][] | select(.name == $name)][0])
          }
        )
      | map(
          if ( .target != null and .reference != null )
          then
            .score_diff = ((
              if .target.primaryMetric.score <= .reference.primaryMetric.score
              then
              ((.reference.primaryMetric.score / .target.primaryMetric.score))
              else
              ((.target.primaryMetric.score / .reference.primaryMetric.score))
              end
            ) * 10000 | round / 10000)
          end
        )
      | map(del(.target.name, .reference.name))
      | {
          "benchmarks": .,
          "missing_count": {
            "target": {
              "count": ( [.[] | select(.target==null)] | length),
              "names": ( [.[] | select(.target==null) | .name ] )
            },
            "reference": {
              "count": ([.[] | select(.reference==null)] | length),
              "names": ( [.[] | select(.reference==null) | .name ] )
            }
          }
        }'
[
$(cat ${target}),
$(cat ${reference})
]
EOF
