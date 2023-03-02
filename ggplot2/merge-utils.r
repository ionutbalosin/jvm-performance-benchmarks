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

# Merge all benchmark results for different Garbage Collector types into a single data frame
# and append a new column "Param..gc":"<gc_list>" as a differentiator
mergeJmhGcResults <- function(path, file, gc_list) {
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

# Merge and write to a single output file multiple benchmark results for different Garbage Collector types, corresponding to a single JVM
# Note: this relies on the fact that the benchmark result filenames are generated, by convention, as "*Benchmark_((gc))_*.csv"
processJmhGcResults <- function(jmh_output_folder, jvm_identifier, file, gc_list) {
  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- mergeJmhGcResults(benchmark_base_path, file, gc_list)

  output_file <- gsub("_\\(\\(gc\\)\\)", "", file)
  writeJmhCsvResults(benchmark_base_path, output_file, data)
}

# Merge all benchmark results for different JIT results into a single data frame
# and append a new column "Param..<param_name>":"<param_values>" as a differentiator
mergeJmhJitResults <- function(path, benchmark_list, param_name, param_values) {
  result <- data.frame()

  index <- 0
  for (i in benchmark_list) {
    index <- index + 1
    data <- readJmhCsvResults(paste(path, benchmark_list[index], sep = "/"))
    if (!empty(data)) {
      data[, param_name] <- param_values[index]
      result <- rbind(result, data)
    }
  }

  result
}

# Merge and write to a single output file multiple benchmark results for different JIT results, corresponding to a single JVM
# Note: the benchmark result filenames could have a different names, not necessarily following a specific pattern
processJmhJitResults <- function(jmh_output_folder, jvm_identifier, benchmark_list, param_name, param_values, output_file) {
  if (length(benchmark_list) != length(param_values)) {
    print(paste("Error: the number of files must be equal to the number of parameters", length(benchmark_list), length(param_values), sep = " "))
  }

  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- mergeJmhJitResults(benchmark_base_path, benchmark_list, param_name, param_values)

  writeJmhCsvResults(benchmark_base_path, output_file, data)
}
