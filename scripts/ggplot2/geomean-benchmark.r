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

# Load the necessary utilities
source("./scripts/ggplot2/geomean-utils.r")

# Retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
print(length(args))

if (length(args) < 18) {
  stop("Usage: Rscript script.R <jmh_output_folder> <geometric_mean_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>
        <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>
        <openjdk_hotspot_vm_jit> <graalvm_ce_jit> <graalvm_ee_jit> <azul_prime_vm_jit>
        <jit_benchmark_files_length> <macro_benchmark_files_length> <jit_benchmark_files> <macro_benchmark_files>")
}

jmh_output_folder <- args[1]
geometric_mean_output_folder <- args[2]
jvm_identifiers <- args[3:6]
jvm_names <- args[7:10]
jit_names <- args[11:14]
jit_benchmark_files_length <- as.integer(args[15])
macro_benchmark_files_length <- as.integer(args[16])
jit_benchmark_files <- args[17:(16 + jit_benchmark_files_length)]
macro_benchmark_files <- args[(17 + jit_benchmark_files_length):(16 + jit_benchmark_files_length + macro_benchmark_files_length)]

# Creates maps with labels as values for the identifiers
jvm_names_map <- setNames(as.list(jvm_names), jvm_identifiers)
jit_names_map <- setNames(as.list(jit_names), jvm_identifiers)

# Define the list of benchmarks to be excluded from the geometric mean calculation
excluded_benchmark_files <- c(
  "InfrastructureBaselineBenchmark.csv",
  "TypeCheckBenchmark.csv"
)

# Remove duplicate elements to ensure the benchmark list has unique entries
jit_benchmark_files <- unique(jit_benchmark_files)
macro_benchmark_files <- unique(macro_benchmark_files)

# Remove elements that are present in the exclusion list
jit_benchmark_files <- jit_benchmark_files[!(unlist(jit_benchmark_files) %in% unlist(excluded_benchmark_files))]
macro_benchmark_files <- macro_benchmark_files[!(unlist(macro_benchmark_files) %in% unlist(excluded_benchmark_files))]

cat("Extracted", length(jit_benchmark_files), "'jit' benchmarks (post-filtering).\n")
cat("Extracted", length(macro_benchmark_files), "'macro' benchmarks (post-filtering).\n")

# Function to calculate and normalize geometric mean
calculateNormalizedGeometricMean <- function(jvm_identifier, map, benchmark_files, reference_geomean, column_name) {
  report_geomean <- calculateGeometricMeanReport(jmh_output_folder, jvm_identifier, benchmark_files)
  normalized_geomean <- report_geomean$geomean / reference_geomean
  result_df <- data.frame(
    Identifier = map[[jvm_identifier]],
    "Normalized Geometric Mean" = round(normalized_geomean, 2),
    "Nr of Benchmarks" = report_geomean$benchmarks,
    "Benchmarks Unit" = "ns/op"
  )
  # Rename the first column to the specified name
  colnames(result_df)[1] <- column_name

  return(result_df)
}

# Calculate the geometric mean of JIT compiler
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, jit_benchmark_files)$geomean
jit_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = jit_names_map, benchmark_files = jit_benchmark_files, reference_geomean = reference_geomean, column_name = "JIT")
writeDataToCsvFile(geometric_mean_output_folder, "jit.csv", do.call(rbind, jit_summaries))

# Calculate the geometric mean of macro benchmarks
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, macro_benchmark_files)$geomean
macro_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = jvm_names_map, benchmark_files = macro_benchmark_files, reference_geomean = reference_geomean, column_name = "VM")
writeDataToCsvFile(geometric_mean_output_folder, "macro.csv", do.call(rbind, macro_summaries))
