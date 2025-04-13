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
source("./scripts/ggplot2/geomean-utils.r")

# Retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
print(length(args))

if (length(args) < 20) {
  stop("Usage: Rscript script.R <jmh_output_folder> <geometric_mean_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>
        <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>
        <openjdk_hotspot_vm_compiler> <graalvm_ce_compiler> <graalvm_ee_compiler> <azul_prime_vm_compiler>
        <api_benchmark_files_length> <compiler_benchmark_files_length> <miscellaneous_benchmark_files_length>
        <api_benchmark_files> <compiler_benchmark_files> <miscellaneous_benchmark_files>")
}

jmh_output_folder <- args[1]
geometric_mean_output_folder <- args[2]

jvm_identifiers <- args[3:6]
jvm_names <- args[7:10]
compiler_names <- args[11:14]

api_benchmark_files_length <- as.integer(args[15])
compiler_benchmark_files_length <- as.integer(args[16])
miscellaneous_benchmark_files_length <- as.integer(args[17])

api_benchmark_files <- args[18:(17 + api_benchmark_files_length)]
compiler_benchmark_files <- args[(18 + api_benchmark_files_length):(17 + api_benchmark_files_length + compiler_benchmark_files_length)]
miscellaneous_benchmark_files <- args[(18 + api_benchmark_files_length + compiler_benchmark_files_length):(17 + api_benchmark_files_length + compiler_benchmark_files_length + miscellaneous_benchmark_files_length)]

# Creates maps with labels as values for the identifiers
jvm_names_map <- setNames(as.list(jvm_names), jvm_identifiers)
compiler_names_map <- setNames(as.list(compiler_names), jvm_identifiers)

# Define the list of benchmarks to be excluded from the geometric mean calculation
excluded_benchmark_files <- c(
  "InfrastructureBaselineBenchmark.csv"
)

# Remove duplicate elements to ensure the benchmark list has unique entries
api_benchmark_files <- unique(api_benchmark_files)
compiler_benchmark_files <- unique(compiler_benchmark_files)
miscellaneous_benchmark_files <- unique(miscellaneous_benchmark_files)

# Remove elements that are present in the exclusion list
api_benchmark_files <- api_benchmark_files[!(unlist(api_benchmark_files) %in% unlist(excluded_benchmark_files))]
compiler_benchmark_files <- compiler_benchmark_files[!(unlist(compiler_benchmark_files) %in% unlist(excluded_benchmark_files))]
miscellaneous_benchmark_files <- miscellaneous_benchmark_files[!(unlist(miscellaneous_benchmark_files) %in% unlist(excluded_benchmark_files))]
all_benchmark_files <- c(api_benchmark_files, compiler_benchmark_files, miscellaneous_benchmark_files)

cat("Extracted", length(api_benchmark_files), "'api' benchmarks (post-filtering).\n")
cat("Extracted", length(compiler_benchmark_files), "'compiler' benchmarks (post-filtering).\n")
cat("Extracted", length(miscellaneous_benchmark_files), "'miscellaneous' benchmarks (post-filtering).\n")
cat("Extracted", length(all_benchmark_files), "'all' benchmarks (post-filtering).\n")

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

# Calculate the geometric mean of API benchmarks
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, api_benchmark_files)$geomean
api_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = jvm_names_map, benchmark_files = api_benchmark_files, reference_geomean = reference_geomean, column_name = "VM")
writeDataToCsvFile(geometric_mean_output_folder, "api.csv", do.call(rbind, api_summaries))

# Calculate the geometric mean of Compiler benchmarks
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, compiler_benchmark_files)$geomean
compiler_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = compiler_names_map, benchmark_files = compiler_benchmark_files, reference_geomean = reference_geomean, column_name = "Compiler")
writeDataToCsvFile(geometric_mean_output_folder, "compiler.csv", do.call(rbind, compiler_summaries))

# Calculate the geometric mean of miscellaneous benchmarks
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, miscellaneous_benchmark_files)$geomean
miscellaneous_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = jvm_names_map, benchmark_files = miscellaneous_benchmark_files, reference_geomean = reference_geomean, column_name = "VM")
writeDataToCsvFile(geometric_mean_output_folder, "miscellaneous.csv", do.call(rbind, miscellaneous_summaries))

# Calculate the geometric mean of all benchmarks
# Note: Use "openjdk-hotspot-vm" as the reference, which is conventionally passed in the 3rd argument
openjdk_hotspot_vm <- args[3]
reference_geomean <- calculateGeometricMeanReport(jmh_output_folder, openjdk_hotspot_vm, all_benchmark_files)$geomean
all_summaries <- lapply(jvm_identifiers, calculateNormalizedGeometricMean, map = jvm_names_map, benchmark_files = all_benchmark_files, reference_geomean = reference_geomean, column_name = "VM")
writeDataToCsvFile(geometric_mean_output_folder, "summary.csv", do.call(rbind, all_summaries))

# To prevent the "all connections are in use" error that can occur when dealing with multiple file connections and not closing them properly
closeAllConnections()
