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

source("./ggplot2/utils.r")

# apply styles to all R and/or Rmd files in the directory
style_dir()

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Merge all Garbage Collector benchmark results corresponding to a simple JVM and append a new Param..gc column (as a differentiator)
mergeJmhGcResults <- function(path, file) {
  # define the full list of available Garbage Collectors
  # Note: if some of the Garbage Collectors is not available, the merging logic already handles this case
  gc_list <- list("serialGC", "parallelGC", "g1GC", "zGC", "shenandoahGC", "epsilonGC")

  result <- data.frame()

  for (gc in gc_list) {
    benchmark_result_file <- gsub("\\(\\(gc\\)\\)", gc, file)
    data <- readJmhCsvResults(paste(path, benchmark_result_file, sep = "/"))
    if (!empty(data)) {
      data <- cbind(data, "Param..gc" = gc)
      result <- rbind(result, data)
    }
  }

  result
}

# Merge and write to an output file the Garbage Collector benchmark results corresponding to a simple JVM
# Note: this relies on the fact that the benchmark result files are generated with the "_((gc))_" in the filename,
# where the gc is {"serialGC", "parallelGC", "g1GC", "zGC", "shenandoahGC", "epsilonGC"}
processJmhGcResults <- function(jmh_output_folder, jvm_identifier, file) {
  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- mergeJmhGcResults(benchmark_base_path, file)

  output_file <- gsub("_\\(\\(gc\\)\\)", "", file)
  writeJmhCsvResults(benchmark_base_path, output_file, data)
}

# Merge BurstHeapMemoryAllocatorBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryBandwidthAllocatorBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")

# Merge ReadBarriersChainOfReferencesBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")

# Merge ReadBarriersLoopingOverArrayBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")

# Merge ReadWriteBarriersBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")

# Merge WriteBarriersLoopingOverArrayBenchmark Garbage Collector results for each JVM into separate files
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
