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

source("./scripts/ggplot2/plot-utils.r")

# Retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
if (length(args) != 16) {
  stop("Usage: Rscript script.R <jdk_version> <arch>
        <geometric_mean_output_folder> <jmh_output_folder> <geometric_mean_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>
        <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>
        <openjdk_hotspot_vm_color_palette> <graalvm_ce_color_palette> <graalvm_ee_color_palette> <azul_prime_vm_color_palette>")
}
jdk_version <- args[1]
arch <- args[2]
jmh_output_folder <- args[3]
plot_output_folder <- args[4]
jvm_identifiers <- args[5:8]
jvm_names <- args[9:12]
jvm_color_palettes <- args[13:16]

# Creates maps
jvm_names_map <- setNames(as.list(jvm_names), jvm_identifiers)
jvm_color_palettes_map <- setNames(as.list(jvm_color_palettes), jvm_names)

# The corresponding benchmark files should have matching names and be located in the same folder structure:
# e.g.,
#   <jdk-version>
#     +--> <arch>
#       +--> /openjdk-hotspot-vm/BenchmarkResult.csv
#       +--> /graalvm-ce/BenchmarkResult.csv
#       +--> /graalvm-ee/BenchmarkResult.csv
#       +--> /azul-prime-vm/BenchmarkResult.csv
# Use "openjdk-hotspot-vm" as the reference, which is conventionally passed as the 3rd argument.
openjdk_hotspot_vm <- args[5]
reference_path <- paste(jmh_output_folder, openjdk_hotspot_vm, sep = "/")

benchmark_files <- list.files(path = reference_path, full.names = FALSE)
benchmark_jdk_arch <- paste("JDK-", jdk_version, " / ", arch, sep = "")

for (benchmark_file in benchmark_files) {
  benchmark_file_basename <- tools::file_path_sans_ext(benchmark_file)

  cat("Plotting", benchmark_file_basename, "benchmark ...\n")

  data <- NULL
  summary <- character(0)
  for (jvm_identifier in jvm_identifiers) {
    benchmark_file_path <- paste(jmh_output_folder, jvm_identifier, benchmark_file, sep = "/")
    benchmark_data <- readBenchmarkResultsWithJvmIdentifier(benchmark_file_path, jvm_names_map[[jvm_identifier]])

    if (nrow(benchmark_data) > 0) {
      status <- "✓"
    } else {
      status <- "✗"
    }

    summary <- paste(summary, paste(jvm_identifier, status, sep = ":"), sep = " ")
    data <- rbind(data, benchmark_data)
  }

  data <- cleanAndPrepareBenchmarkData(data)
  plot <- createBenchmarkBarChart(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, benchmark_jdk_arch, jvm_color_palettes_map)
  saveBenchmarkBarChartToSVG(data, plot, plot_output_folder, benchmark_file_basename)

  cat("Summary:", trimws(summary, "both"), "\n")

  # To prevent the "all connections are in use" error that can occur when dealing with multiple file connections and not closing them properly
  closeAllConnections()
}
