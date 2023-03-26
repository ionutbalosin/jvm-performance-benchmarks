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

source("./ggplot2/merge-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Merge multiple Garbage Collector benchmark result files. Each result file must follow a specific naming convention.
# During merging, the "*Benchmark_((gc))_*.csv" is substituted with the values from a predefined Garbage Collectors list
# Note: if, during substitution, any benchmark result file is not available it is skipped. This is why the list
# contains the list of all possible Garbage Collectors and not JVM/JDK specific
gc_list <- list("serialGC", "parallelGC", "g1GC", "zGC", "shenandoahGC", "epsilonGC")
benchmark_files <- list(
  "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv",
  "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv",
  "ReadBarriersChainOfReferencesBenchmark_((gc)).csv",
  "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv",
  "ReadWriteBarriersBenchmark_((gc)).csv",
  "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv"
)
for (benchmark_file in benchmark_files) {
  processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, gc_list)
  processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, benchmark_file, gc_list)
  processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, benchmark_file, gc_list)
}

# Merge multiple benchmark result files and extends the data frame by adding a new column identifier
# to each (e.g., column "<column_name>" with values from "<column_values>")
# Note: the lists benchmark_files and column_values must have the same length
benchmark_files <- list(
  "LockCoarseningBenchmark_withBiasedLocking.csv",
  "LockCoarseningBenchmark_withoutBiasedLocking.csv"
)
column_name <- "Param..biasedLocking"
column_values <- list("enabled", "disabled")
output_file <- "LockCoarseningBenchmark.csv"
processJmhJitResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_files, column_name, column_values, output_file)
processJmhJitResults(jmh_output_folder, graalvm_ce_identifier, benchmark_files, column_name, column_values, output_file)
processJmhJitResults(jmh_output_folder, graalvm_ee_identifier, benchmark_files, column_name, column_values, output_file)
