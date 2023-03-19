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

#--------------------#
# JIT geometric mean #
#--------------------#

openjdk_hotspot_vm_jit_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, jit_benchmark_files)
graalvm_ce_jit_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, jit_benchmark_files)
graalvm_ee_jit_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, jit_benchmark_files)
jit_geomean <- c(
  "C2 JIT" = openjdk_hotspot_vm_jit_geomean,
  "GraalVM CE JIT" = graalvm_ce_jit_geomean,
  "GraalVM EE JIT" = graalvm_ee_jit_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(geometric_mean_output_folder, "jit.csv", data.frame(t(sapply(jit_geomean, c))))

#----------------------#
# Macro geometric mean #
#----------------------#

openjdk_hotspot_vm_macro_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, openjdk_hotspot_vm_identifier, macro_benchmark_files)
graalvm_ce_macro_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ce_identifier, macro_benchmark_files)
graalvm_ee_macro_geomean <- geometricMeanForAverageTimeJmhResults(jmh_output_folder, graalvm_ee_identifier, macro_benchmark_files)
macro_geomean <- c(
  "OpenJDK HotSpot VM" = openjdk_hotspot_vm_macro_geomean,
  "GraalVM CE" = graalvm_ce_macro_geomean,
  "GraalVM EE" = graalvm_ee_macro_geomean,
  "Unit" = "ns/op"
)
writeJmhCsvResults(geometric_mean_output_folder, "macro.csv", data.frame(t(sapply(macro_geomean, c))))

#--------------------#
# GCs geometric mean #
#--------------------#

# OpenJDK GC geometric mean
openjdk_hotspot_vm_serial_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files, "serialGC")
openjdk_hotspot_vm_parallel_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files, "parallelGC")
openjdk_hotspot_vm_g1_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files, "g1GC")
openjdk_hotspot_vm_z_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files, "zGC")
openjdk_hotspot_vm_shenandoah_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, gc_benchmark_files, "shenandoahGC")
openjdk_hotspot_vm_gc_geomean <- c(
  "Serial GC" = openjdk_hotspot_vm_serial_gc_geomean,
  "Parallel GC" = openjdk_hotspot_vm_parallel_gc_geomean,
  "G1 GC" = openjdk_hotspot_vm_g1_gc_geomean,
  "ZGC" = openjdk_hotspot_vm_z_gc_geomean,
  "Shenandoah GC" = openjdk_hotspot_vm_shenandoah_gc_geomean,
  "Unit" = "ops/ms"
)
writeJmhCsvResults(geometric_mean_output_folder, "gc_openjdk_hotspot_vm.csv", data.frame(t(sapply(openjdk_hotspot_vm_gc_geomean, c))))

# GraalVM CE GC geometric mean
graalvm_ce_serial_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files, "serialGC")
graalvm_ce_parallel_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files, "parallelGC")
graalvm_ce_g1_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files, "g1GC")
graalvm_ce_z_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files, "zGC")
graalvm_ce_shenandoah_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ce_identifier, gc_benchmark_files, "shenandoahGC")
graalvm_ce_gc_geomean <- c(
  "Serial GC" = graalvm_ce_serial_gc_geomean,
  "Parallel GC" = graalvm_ce_parallel_gc_geomean,
  "G1 GC" = graalvm_ce_g1_gc_geomean,
  "ZGC" = graalvm_ce_z_gc_geomean,
  "Shenandoah GC" = graalvm_ce_shenandoah_gc_geomean,
  "Unit" = "ops/ms"
)
writeJmhCsvResults(geometric_mean_output_folder, "gc_graalvm_ce.csv", data.frame(t(sapply(graalvm_ce_gc_geomean, c))))

# GraalVM EE GC geometric mean
graalvm_ee_serial_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files, "serialGC")
graalvm_ee_parallel_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files, "parallelGC")
graalvm_ee_g1_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files, "g1GC")
graalvm_ee_z_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files, "zGC")
graalvm_ee_shenandoah_gc_geomean <- geometricMeanForThroughputJmhGcResults(jmh_output_folder, graalvm_ee_identifier, gc_benchmark_files, "shenandoahGC")
graalvm_ee_gc_geomean <- c(
  "Serial GC" = graalvm_ee_serial_gc_geomean,
  "Parallel GC" = graalvm_ee_parallel_gc_geomean,
  "G1 GC" = graalvm_ee_g1_gc_geomean,
  "ZGC" = graalvm_ee_z_gc_geomean,
  "Shenandoah GC" = graalvm_ee_shenandoah_gc_geomean,
  "Unit" = "ops/ms"
)
writeJmhCsvResults(geometric_mean_output_folder, "gc_graalvm_ee.csv", data.frame(t(sapply(graalvm_ee_gc_geomean, c))))
