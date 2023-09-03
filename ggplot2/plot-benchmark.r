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

source("./ggplot2/plot-utils.r")

# Retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
if (length(args) != 14) {
  stop("Usage: Rscript script.R <jmh_output_folder> <geometric_mean_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>
        <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>
        <openjdk_hotspot_vm_color_palette> <graalvm_ce_color_palette> <graalvm_ee_color_palette> <azul_prime_vm_color_palette>")
}
jmh_output_folder <- args[1]
plot_output_folder <- args[2]
jvm_identifiers <- args[3:6]
jvm_names <- args[7:10]
jvm_color_palettes <- args[11:14]

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
openjdk_hotspot_vm <- args[3]
reference_path <- paste(jmh_output_folder, openjdk_hotspot_vm, sep = "/")

benchmark_files <- list.files(path = reference_path, full.names = FALSE)
for (benchmark_file in benchmark_files) {
  benchmark_file_basename <- tools::file_path_sans_ext(benchmark_file)
  print(paste("Plotting", benchmark_file_basename, "benchmark ...", sep = " "))

  data <- NULL
  for (jvm_identifier in jvm_identifiers) {
    benchmark_file_path <- paste(jmh_output_folder, jvm_identifier, benchmark_file, sep = "/")
    data <- rbind(data, readBenchmarkResultsWithJvmIdentifier(benchmark_file_path, jvm_names_map[[jvm_identifier]]))
  }

  data <- cleanAndPrepareBenchmarkData(data)
  plot <- createBenchmarkBarChart(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, jvm_color_palettes_map)
  saveBenchmarkBarChartToSVG(data, plot, plot_output_folder, benchmark_file_basename)
}
