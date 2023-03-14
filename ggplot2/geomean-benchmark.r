#
# JVM Performance Benchmarks
#
# Copyright (C) 2019 - 2023 Ionut Balosin
#
# Author: Ionut Balosin
# Website: www.ionutbalosin.com
# Twitter: @ionutbalosin / Mastodon: ionutbalosin@mastodon.social
#
# Co-author: Florin Blanaru
# Twitter: @gigiblender / Mastodon: gigiblender@mastodon.online
#
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

# Define the Compiler benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
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
  "TailRecursionBenchmark.csv",
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

# Define the Garbage Collector benchmark results for that we will compute the geometric mean (i.e., geomean) as a separate category
gc_benchmark_files <- list(
  "BurstHeapMemoryAllocatorBenchmark_1thread.csv",
  "BurstHeapMemoryAllocatorBenchmark_2threads.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_1thread.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_2threads.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_1thread.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_2threads.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_1thread.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_2threads.csv",
  "ReadBarriersChainOfReferencesBenchmark.csv",
  "ReadBarriersLoopingOverArrayBenchmark.csv",
  "ReadWriteBarriersBenchmark.csv",
  "WriteBarriersLoopingOverArrayBenchmark.csv"
)

# JIT geometric mean

openjdk_hotspot_vm_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, jit_benchmark_files)
graalvm_ce_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, jit_benchmark_files)
graalvm_ee_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, jit_benchmark_files)
jit_geomean <- c(
  "C2 JIT" = openjdk_hotspot_vm_geomean,
  "GraalVM CE JIT" = graalvm_ce_geomean,
  "GraalVM EE JIT" = graalvm_ee_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(geometric_mean_output_folder, "jit.csv", data.frame(t(sapply(jit_geomean, c))))

# Macro geometric mean

openjdk_hotspot_vm_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, macro_benchmark_files)
graalvm_ce_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, macro_benchmark_files)
graalvm_ee_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, macro_benchmark_files)
macro_geomean <- c(
  "OpenJDK HotSpot VM" = openjdk_hotspot_vm_geomean,
  "GraalVM CE" = graalvm_ce_geomean,
  "GraalVM EE" = graalvm_ee_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(geometric_mean_output_folder, "macro.csv", data.frame(t(sapply(macro_geomean, c))))

# GCs geometric mean

openjdk_hotspot_vm_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files)
writeJmhCsvResults(geometric_mean_output_folder, "gc_openjdk_hotspot_vm.csv", openjdk_hotspot_vm_gc_geomean)

graalvm_ce_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files)
writeJmhCsvResults(geometric_mean_output_folder, "gc_graalvm_ce.csv", graalvm_ce_gc_geomean)

graalvm_ee_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files)
writeJmhCsvResults(geometric_mean_output_folder, "gc_graalvm_ee.csv", graalvm_ee_gc_geomean)
