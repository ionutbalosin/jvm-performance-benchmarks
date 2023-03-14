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

source("./ggplot2/utils.r")

# Merge all benchmark results for different Garbage Collector types into a single data frame
# and append a new column "Param..gc":"<gc_list>" as a differentiator
mergeJmhGcResults <- function(path, file, gc_list) {
  result <- data.frame()

  for (gc in gc_list) {
    benchmark_result_file <- gsub("\\(\\(gc\\)\\)", gc, file)
    benchmark_file_path <- paste(path, benchmark_result_file, sep = "/")
    print(paste("Merging", benchmark_file_path, "benchmark ...", sep = " "))
    data <- readJmhCsvResults(benchmark_file_path)
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
# and append a new column "<column_name>":"<column_values>" as a differentiator
mergeJmhJitResults <- function(path, benchmark_list, column_name, column_values) {
  result <- data.frame()

  index <- 0
  for (i in benchmark_list) {
    index <- index + 1
    benchmark_file_path <- paste(path, benchmark_list[index], sep = "/")
    print(paste("Merging", benchmark_file_path, "benchmark ...", sep = " "))
    data <- readJmhCsvResults(benchmark_file_path)
    if (!empty(data)) {
      data[, column_name] <- column_values[index]
      result <- rbind(result, data)
    }
  }

  result
}

# Merge and write to a single output file multiple benchmark results for different JIT results, corresponding to a single JVM
# Note: the benchmark result filenames could have a different names, not necessarily following a specific pattern
processJmhJitResults <- function(jmh_output_folder, jvm_identifier, benchmark_list, column_name, column_values, output_file) {
  if (length(benchmark_list) != length(column_values)) {
    print(paste("Error: the number of files must be equal to the number of columns", length(benchmark_list), length(column_values), sep = " "))
  }

  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- mergeJmhJitResults(benchmark_base_path, benchmark_list, column_name, column_values)

  writeJmhCsvResults(benchmark_base_path, output_file, data)
}
