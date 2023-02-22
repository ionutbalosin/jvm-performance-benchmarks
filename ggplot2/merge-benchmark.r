source("./ggplot2/plot-utils.r")

# apply styles to all R and/or Rmd files in the directory
style_dir()

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# define the full list of Garbage Collectors
# Note: if some of these Garbage Collectors is not available in the benchmark output, the merging logic handles this case
gc_list <- list("serialGC", "parallelGC", "g1GC", "zGC", "shenandoahGC", "epsilonGC")

mergeJmhGcResults <- function(path, file) {
  result <- data.frame()

  for (gc in gc_list) {
    benchmark_result_file <- gsub("\\(\\(gc\\)\\)", gc, file)
    data <- readJmhCsvResults(paste(path, benchmark_result_file, sep = "/"))
    if (ncol(data) != 0) {
      data <- cbind(data, "Param..gc" = gc)
      result <- rbind(result, data)
    } else {
      print(paste("Skipping empty file", benchmark_result_file, sep = " "))
    }
  }

  result
}

processJmhGcResults <- function(jmh_output_folder, jvm_identifier, file) {
  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- mergeJmhGcResults(benchmark_base_path, file)

  output_file <- gsub("_\\(\\(gc\\)\\)", "", file)
  writeJmhCsvResults(benchmark_base_path, output_file, data)
}

# Merge BurstHeapMemoryAllocatorBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "BurstHeapMemoryAllocatorBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark_((gc))_2threads.csv")

# Merge HeapMemoryBandwidthAllocatorBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_1thread.csv")

processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "HeapMemoryBandwidthAllocatorBenchmark_((gc))_2threads.csv")

# Merge ReadBarriersChainOfReferencesBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadBarriersChainOfReferencesBenchmark_((gc)).csv")

# Merge ReadBarriersLoopingOverArrayBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadBarriersLoopingOverArrayBenchmark_((gc)).csv")

# Merge ReadWriteBarriersBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "ReadWriteBarriersBenchmark_((gc)).csv")

# Merge WriteBarriersLoopingOverArrayBenchmark Garbage Collector output
processJmhGcResults(jmh_output_folder, openjdk_hotspot_vm_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ce_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
processJmhGcResults(jmh_output_folder, graalvm_ee_identifier, "WriteBarriersLoopingOverArrayBenchmark_((gc)).csv")
