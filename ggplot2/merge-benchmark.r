#
#  JVM Performance Benchmarks
#
#  Copyright (C) 2019 - 2022 Ionut Balosin
#  Website: www.ionutbalosin.com
#  Twitter: @ionutbalosin
#
#  Co-author: Florin Blanaru
#  Twitter: @gigiblender
#
#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <http://www.gnu.org/licenses/>.
#

source("./ggplot2/merge-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Merge multiple Garbage Collector benchmark results. Each result file must follow a specific naming convention.
# During merging, the "*Benchmark_((gc))_*.csv" is substituted with the values from a predefined Garbage Collectors list
# Note: if, during substitution, any benchmark result file is not available it is skipped. This is why the list
# contains the list of all possible Garbage Collectors and not JVM/JDK specific
gc_list <- list("serialGC", "parallelGC", "g1GC", "zGC", "shenandoahGC", "epsilonGC")
benchmark_list <- list(
  "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread",
  "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv",
  "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv"
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv",
  "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv",
  "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv",
  "ReadBarriersChainOfReferencesBenchmark_((gc)).csv",
  "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv",
  "ReadWriteBarriersBenchmark_((gc)).csv",
  "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
for (benchmark_result_file in benchmark_list) {
  processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_result_file, gc_list)
  processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, benchmark_result_file, gc_list)
  processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, benchmark_result_file, gc_list)
}

# Merge multiple benchmark results from different files and extends the data frame by adding
# a new column identifier to each (e.g., "Param..<param_name>" with the values from "<param_values>")
# Note: the lists benchmark_list and param_values must have the same length
benchmark_list <- list(
  "LockCoarseningBenchmark_withBiasedLocking.csv",
  "LockCoarseningBenchmark_withoutBiasedLocking.csv")
param_name <- "biasedLocking"
param_values <- list("enabled", "disabled")
output_file <- "LockCoarseningBenchmark.csv"
processJmhJitResults(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_list, param_name, param_values, output_file)
processJmhJitResults(jmh_output_folder, graalvm_ce_identifier, benchmark_list, param_name, param_values, output_file)
processJmhJitResults(jmh_output_folder, graalvm_ee_identifier, benchmark_list, param_name, param_values, output_file)
