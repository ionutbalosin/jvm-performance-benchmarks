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

# Load the necessary utilities
source("./ggplot2/utils.r")

# Merge all benchmark results for different JIT results into a single data frame
# and append a new column "<column_name>":"<column_values>" as a differentiator
mergeJmhJitResults <- function(path, benchmark_file_paths, column_name, column_values) {
  result <- data.frame()

  for (i in seq_along(benchmark_file_paths)) {
    benchmark_file_path <- file.path(path, benchmark_file_paths[i])
    cat("Merging", benchmark_file_path, "benchmark ...\n")

    data <- readJmhCsvResults(benchmark_file_path)

    if (nrow(data) > 0) {
      data[, column_name] <- column_values[i]
      result <- rbind(result, data)
    }
  }

  return(result)
}

# Merge and write to a single output file multiple benchmark results for different JIT results, corresponding to a single JVM
processJmhJitResults <- function(jmh_output_folder, jvm_identifier, benchmark_file_paths, column_name, column_values, output_file) {
  if (length(benchmark_file_paths) != length(column_values)) {
    cat("Error: the number of files must be equal to the number of columns\n")
    return(NULL)
  }

  benchmark_base_path <- file.path(jmh_output_folder, jvm_identifier)
  data <- mergeJmhJitResults(benchmark_base_path, benchmark_file_paths, column_name, column_values)

  if (nrow(data) > 0) {
    writeJmhCsvResults(benchmark_base_path, output_file, data)
  }
}
