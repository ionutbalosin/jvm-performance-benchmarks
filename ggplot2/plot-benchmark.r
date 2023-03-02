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

source("./ggplot2/plot-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]

# Define the color palette (corresponding to each JVM) used in the final generated plot
openjdk_hotspot_vm_color_palette <- c("OpenJDK HotSpot VM" = "#648FFF")
graalvm_ce_color_palette <- c("GraalVM CE" = "#FFB000")
graalvm_ee_color_palette <- c("GraalVM EE" = "#FE6100")
full_color_palette <- append(append(openjdk_hotspot_vm_color_palette, graalvm_ce_color_palette), graalvm_ee_color_palette)

# Define the Garbage Collector benchmark result list that will not be merged across multiple JVMs in the final generated plot
# Note: The regex must match all of the generated benchmark result list
gc_benchmark_files <- list(
  "^(BurstHeapMemoryAllocatorBenchmark)[_a-zA-Z0-9]*.csv",
  "^(HeapMemoryAllocatorWithConstantRetrainedHeapBenchmark)[_a-zA-Z0-9]*.csv",
  "^(HeapMemoryAllocatorWithFixedRetrainedHeapBenchmark)[_a-zA-Z0-9]*.csv",
  "^(HeapMemoryBandwidthAllocatorBenchmark)[_a-zA-Z0-9]*.csv",
  "^(ReadBarriersChainOfReferencesBenchmark)[_a-zA-Z0-9]*.csv",
  "^(ReadBarriersLoopingOverArrayBenchmark)[_a-zA-Z0-9]*.csv",
  "^(ReadWriteBarriersBenchmark)[_a-zA-Z0-9]*.csv",
  "^(WriteBarriersLoopingOverArrayBenchmark)[_a-zA-Z0-9]*.csv"
)

# Plot the benchmark results in separate (one per every JVM) SVG files
plotJvmSplitBenchmarks <- function(jmh_output_folder, openjdk_hotspot_vm_benchmark_file, graalvm_ce_benchmark_file, graalvm_ee_benchmark_file, benchmark_file, benchmark_file_basename) {
  # OpenJDK HotSpot VM
  data <- readAndAppendJvmIdentifierToJmhCsvResults(openjdk_hotspot_vm_benchmark_file, "OpenJDK HotSpot VM")
  data <- processJmhCsvResults(data)
  plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, openjdk_hotspot_vm_color_palette)
  saveJmhBarPlot(data, plot, jmh_output_folder, paste(benchmark_file_basename, "openjdk_hotspot_vm", sep = "_"))

  # GraalVM CE
  data <- readAndAppendJvmIdentifierToJmhCsvResults(graalvm_ce_benchmark_file, "GraalVM CE")
  data <- processJmhCsvResults(data)
  plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, graalvm_ce_color_palette)
  saveJmhBarPlot(data, plot, jmh_output_folder, paste(benchmark_file_basename, "graalvm_ce", sep = "_"))

  # GraalVM EE
  data <- readAndAppendJvmIdentifierToJmhCsvResults(graalvm_ee_benchmark_file, "GraalVM EE")
  data <- processJmhCsvResults(data)
  plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, graalvm_ee_color_palette)
  saveJmhBarPlot(data, plot, jmh_output_folder, paste(benchmark_file_basename, "graalvm_ee", sep = "_"))
}

# Plot the benchmark results in the same SVG file
plotJvmAggregatedBenchmarks <- function(jmh_output_folder, openjdk_hotspot_vm_benchmark_file, graalvm_ce_benchmark_file, graalvm_ee_benchmark_file, benchmark_file, benchmark_file_basename) {
  openjdk_hotspot_vm_data <- readAndAppendJvmIdentifierToJmhCsvResults(openjdk_hotspot_vm_benchmark_file, "OpenJDK HotSpot VM")
  graalvm_ce_data <- readAndAppendJvmIdentifierToJmhCsvResults(graalvm_ce_benchmark_file, "GraalVM CE")
  graalvm_ee_data <- readAndAppendJvmIdentifierToJmhCsvResults(graalvm_ee_benchmark_file, "GraalVM EE")

  # append all CSV rows to one data frame
  data <- rbind(openjdk_hotspot_vm_data, graalvm_ce_data)
  data <- rbind(data, graalvm_ee_data)

  data <- processJmhCsvResults(data)

  plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Benchmark", data$Unit[1], benchmark_file_basename, full_color_palette)
  saveJmhBarPlot(data, plot, jmh_output_folder, benchmark_file_basename)
}

# Note: the corresponding benchmark file results must have the same names and reside under the same folder structure:
# e.g.,
#   <jdk-version>
#     +--> <arch>
#           +--> /openjdk-hotspot-vm/BenchmarkResult.csv
#           +--> /graalvm-ce/BenchmarkResult.csv
#           +--> /graalvm-ee/BenchmarkResult.csv
openjdk_hotspot_vm_file_path <- paste(jmh_output_folder, openjdk_hotspot_vm_identifier, sep = "/")
benchmark_files <- list.files(path = openjdk_hotspot_vm_file_path, full.names = FALSE)
for (benchmark_file in benchmark_files) {
  benchmark_file_basename <- file_path_sans_ext(benchmark_file)
  print(paste("Plotting", benchmark_file_basename, "benchmark ...", sep = " "))

  # Generate the full benchmark result file paths (corresponding to each JVM)
  openjdk_hotspot_vm_benchmark_file <- paste(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, sep = "/")
  graalvm_ce_benchmark_file <- paste(jmh_output_folder, graalvm_ce_identifier, benchmark_file, sep = "/")
  graalvm_ee_benchmark_file <- paste(jmh_output_folder, graalvm_ee_identifier, benchmark_file, sep = "/")

  # Use a filename pattern matching approach to exclude the Garbage Collector benchmark results from being merged across multiple JVMs in the final generated plot
  if (isFilenamePatternMatching(gc_benchmark_files, benchmark_file)) {
    # Garbage Collector benchmark results are plotted in separate (one per every JVM) SVG files
    plotJvmSplitBenchmarks(jmh_output_folder, openjdk_hotspot_vm_benchmark_file, graalvm_ce_benchmark_file, graalvm_ee_benchmark_file, benchmark_file, benchmark_file_basename)
  } else {
    # any other benchmark results (e.g., JIT, macro, etc.) are merged (across JVMs) and plotted in the same SVG file
    plotJvmAggregatedBenchmarks(jmh_output_folder, openjdk_hotspot_vm_benchmark_file, graalvm_ce_benchmark_file, graalvm_ee_benchmark_file, benchmark_file, benchmark_file_basename)
  }
}
