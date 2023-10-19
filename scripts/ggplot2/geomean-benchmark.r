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
if (length(args) != 14) {
  stop("Usage: Rscript script.R <jmh_output_folder> <geometric_mean_output_folder>
        <openjdk_hotspot_vm_identifier> <graalvm_ce_identifier> <graalvm_ee_identifier> <azul_prime_vm_identifier>
        <openjdk_hotspot_vm_name> <graalvm_ce_name> <graalvm_ee_name> <azul_prime_vm_name>
        <openjdk_hotspot_vm_jit> <graalvm_ce_jit> <graalvm_ee_jit> <azul_prime_vm_jit>")
}
jmh_output_folder <- args[1]
geometric_mean_output_folder <- args[2]
jvm_identifiers <- args[3:6]
jvm_names <- args[7:10]
jit_names <- args[11:14]

# Creates maps with labels as values for the identifiers
jvm_names_map <- setNames(as.list(jvm_names), jvm_identifiers)
jit_names_map <- setNames(as.list(jit_names), jvm_identifiers)

# Define the JIT Compiler benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
jit_benchmark_files <- c(
  "BranchlessBitwiseBenchmark.csv",
  "CanonicalizeInductionVariableBenchmark.csv",
  "CodeCacheBusterBenchmark.csv",
  "DeadLocalAllocationStoreBenchmark.csv",
  "DeadMethodCallStoreBenchmark.csv",
  "EnumValuesLookupBenchmark.csv",
  "FalseSharingBenchmark.csv",
  "IfConditionalBranchBenchmark.csv",
  "JustInTimeConstantsBenchmark.csv",
  "LockCoarseningBenchmark.csv",
  "LockElisionBenchmark.csv",
  "LoopFissionBenchmark.csv",
  "LoopFusionBenchmark.csv",
  "LoopInterchangeBenchmark.csv",
  "LoopInvariantCodeMotionBenchmark.csv",
  "LoopReductionBenchmark.csv",
  "LoopUnswitchBenchmark.csv",
  "MandelbrotVectorApiBenchmark.csv",
  "MegamorphicInterfaceCallBenchmark.csv",
  "MegamorphicMethodCallBenchmark.csv",
  "MethodArgsBusterBenchmark.csv",
  "NpeControlFlowBenchmark.csv",
  "NpeThrowBenchmark.csv",
  "RecursiveMethodCallBenchmark.csv",
  "ScalarEvolutionAndLoopOptimizationBenchmark.csv",
  "ScalarReplacementBenchmark.csv",
  "SepiaVectorApiBenchmark.csv",
  "SortVectorApiBenchmark.csv",
  "StackSpillingBenchmark.csv",
  "StrengthReductionBenchmark.csv",
  "StringConcatenationBenchmark.csv",
  "StringPatternMatcherBenchmark.csv",
  "StringPatternSplitBenchmark.csv",
  "TailRecursionBenchmark.csv",
  "TypeCheckScalabilityBenchmark.csv",
  "TypeCheckSlowPathBenchmark.csv",
  "VarArgsBenchmark.csv",
  "VectorApiBenchmark.csv",
  "VectorizationPatternsMultipleFloatArraysBenchmark.csv",
  "VectorizationPatternsMultipleIntArraysBenchmark.csv",
  "VectorizationPatternsSingleIntArrayBenchmark.csv",
  "VectorizationScatterGatherPatternBenchmark.csv"
)

# Define the macro benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
macro_benchmark_files <- c(
  "FactorialBenchmark.csv",
  "FibonacciBenchmark.csv",
  "HuffmanCodingBenchmark.csv",
  "PalindromeBenchmark.csv",
  "PopulationVarianceBenchmark.csv",
  "PrimesBenchmark.csv",
  "WordFrequencyBenchmark.csv"
)

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
