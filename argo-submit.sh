#!/bin/bash

set -euo pipefail

SCRIPT_PATH=$( dirname ${BASH_SOURCE[0]:-$0} );

PARALLELISM=${1:-30}
BENCHMARK_RUN_PROFILE=${2:-STANDARD}
LIMIT=${3:-}

echo "Create Github Secret"
kubectl delete secret github-token \
  --namespace workflows \
  --ignore-not-found
kubectl create secret generic github-token \
  --namespace workflows \
  --from-literal=GITHUB_TOKEN=$(gh auth token)

echo "Update benchmark templates"
argo template update ${SCRIPT_PATH}/argocd/benchmarks-workflow-tpls.yaml -n workflows ||
  argo template create ${SCRIPT_PATH}/ argocd/benchmarks-workflow-tpls.yaml -n workflows

CMD="""
argo submit --namespace workflows
 -p image-build-repository=us-central1-docker.pkg.dev/ecosystems-squad/dev-benchmarks
 -p benchmarks-bucket=dev-benchmarks
 -p benchmarks-build-profile=jdk21_profile
 -p target-jdk-image=us-central1-docker.pkg.dev/ecosystems-squad/dev-benchmarks/jdk:openjdk-21.0.5
 -p target-jre-image=us-central1-docker.pkg.dev/ecosystems-squad/dev-benchmarks/jre:openjdk-21.0.5
 -p reference-jdk-image=eclipse-temurin:21.0.5_11-jdk
 -p reference-jre-image=eclipse-temurin:21.0.5_11-jre
 -p benchmarks-run-profile=${BENCHMARK_RUN_PROFILE}
 -p parallelism=${PARALLELISM}
"""
if [[ "${LIMIT}" != "" ]]; then
  CMD="${CMD} -p limit=${LIMIT}"
fi
CMD="${CMD} ${SCRIPT_PATH}/argocd/benchmark-compare-workflow.yaml"

echo "Trigger benchmark"
${CMD}
