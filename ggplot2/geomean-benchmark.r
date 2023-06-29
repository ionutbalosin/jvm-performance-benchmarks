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

source("./ggplot2/geomean-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
geometric_mean_output_folder <- args[2]
openjdk_hotspot_vm_identifier <- args[3]
graalvm_ce_identifier <- args[4]
graalvm_ee_identifier <- args[5]
azul_prime_vm_identifier <- args[6]

# Define the JIT Compiler benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
jit_benchmark_files <- list(
  "BranchlessBitwiseBenchmark.csv",
  "CanonicalizeInductionVariableBenchmark.csv",
  "CodeCacheBusterBenchmark.csv",
  "DeadLocalAllocationStoreBenchmark.csv",
  "DeadMethodCallStoreBenchmark.csv",
  "EnumValueLookupBenchmark.csv",
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
macro_benchmark_files <- list(
  "FactorialBenchmark.csv",
  "FibonacciBenchmark.csv",
  "HuffmanCodingBenchmark.csv",
  "PalindromeBenchmark.csv",
  "PopulationVarianceBenchmark.csv",
  "PrimesBenchmark.csv",
  "WordFrequencyBenchmark.csv"
)

#-----------------------------#
# JIT Compiler geometric mean #
#-----------------------------#

openjdk_hotspot_vm_jit_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, jit_benchmark_files)
graalvm_ce_jit_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, jit_benchmark_files)
graalvm_ee_jit_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, jit_benchmark_files)
azul_prime_vm_jit_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, azul_prime_vm_identifier, jit_benchmark_files)
# normalize the resulting geometric mean to C2 JIT
# Note: the geometric mean can be used even if the numbers are not normalized but the resulting means can then be normalized
jit_summary <- data.frame(
  "JIT" = c("C2 JIT", "GraalVM CE JIT", "GraalVM EE JIT", "Azul Prime JIT"),
  "Normalized Geometric Mean" = c(
    1,
    round(graalvm_ce_jit_summary$geomean / openjdk_hotspot_vm_jit_summary$geomean, 2),
    round(graalvm_ee_jit_summary$geomean / openjdk_hotspot_vm_jit_summary$geomean, 2),
    round(azul_prime_vm_jit_summary$geomean / openjdk_hotspot_vm_jit_summary$geomean, 2)
  ),
  "Nr of Benchmarks" = c(
    openjdk_hotspot_vm_jit_summary$benchmarks,
    graalvm_ce_jit_summary$benchmarks,
    graalvm_ee_jit_summary$benchmarks,
    azul_prime_vm_jit_summary$benchmarks
  ),
  "Benchmarks Unit" = c("ns/op", "ns/op", "ns/op", "ns/op")
)
writeJmhCsvResults(geometric_mean_output_folder, "jit.csv", jit_summary)

#----------------------#
# Macro geometric mean #
#----------------------#

openjdk_hotspot_vm_macro_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, macro_benchmark_files)
graalvm_ce_macro_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, macro_benchmark_files)
graalvm_ee_macro_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, macro_benchmark_files)
azul_prime_vm_macro_summary <- geometricMeanSummaryForAverageTimeJmhResults(jmh_output_folder, azul_prime_vm_identifier, macro_benchmark_files)
# normalize the resulting geometric mean to OpenJDK
# Note: the geometric mean can be used even if the numbers are not normalized but the resulting means can then be normalized
macro_summary <- data.frame(
  "VM" = c("OpenJDK HotSpot VM", "GraalVM CE", "GraalVM EE", "Azul Prime"),
  "Normalized Geometric Mean" = c(
    1,
    round(graalvm_ce_macro_summary$geomean / openjdk_hotspot_vm_macro_summary$geomean, 2),
    round(graalvm_ee_macro_summary$geomean / openjdk_hotspot_vm_macro_summary$geomean, 2),
    round(azul_prime_vm_macro_summary$geomean / openjdk_hotspot_vm_macro_summary$geomean, 2)
  ),
  "Nr of Benchmarks" = c(
    openjdk_hotspot_vm_macro_summary$benchmarks,
    graalvm_ce_macro_summary$benchmarks,
    graalvm_ee_macro_summary$benchmarks,
    azul_prime_vm_macro_summary$benchmarks
  ),
  "Benchmarks Unit" = c("ns/op", "ns/op", "ns/op", "ns/op")
)
writeJmhCsvResults(geometric_mean_output_folder, "macro.csv", macro_summary)
