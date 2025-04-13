#
# JVM Performance Benchmarks
#
# Copyright (C) 2019-2025 Ionut Balosin
# Website:      www.ionutbalosin.com
# Social Media:
#   LinkedIn:   ionutbalosin
#   Bluesky:    @ionutbalosin.bsky.social
#   X:          @ionutbalosin
#   Mastodon:   ionutbalosin@mastodon.social
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

# Load the necessary utilities
source("./scripts/ggplot2/merge-utils.r")

# Retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
if (length(args) != 5) {
  stop("Usage: Rscript script.R <jmh_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>")
}
jmh_output_folder <- args[1]
jvm_identifiers <- args[2:5]

# Define the benchmark files and column values
benchmark_files <- list(
  "LockCoarseningBenchmark_withBiasedLocking.csv",
  "LockCoarseningBenchmark_withoutBiasedLocking.csv"
)
column_name <- "Param..biasedLocking"
column_values <- list("enabled", "disabled")
output_file <- "LockCoarseningBenchmark.csv"

# Process JMH JIT results for each JVM identifier
for (jvm_identifier in jvm_identifiers) {
  mergeAndWriteBenchmarkResultsToFile(jmh_output_folder, jvm_identifier, benchmark_files, column_name, column_values, output_file)
}

# To prevent the "all connections are in use" error that can occur when dealing with multiple file connections and not closing them properly
closeAllConnections()
