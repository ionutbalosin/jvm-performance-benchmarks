#
# JVM Performance Benchmarks
#
# Copyright (C) 2019-2025 Ionut Balosin
# Website:      www.ionutbalosin.com
# Social Media:
#   LinkedIn:   ionutbalosin
#   Bluesky:    @ionutbalosin.bsky.social
#   X:          @ionutbalosin
#   Mastodon:   ionutbalosin@mastodon.social
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
source("./scripts/ggplot2/utils.r")

# Function to split benchmark results from a single data frame based on a specified column and values
splitBenchmarkResults <- function(path, benchmark_file, column_name, column_values) {
  result <- data.frame()

  benchmark_file_path <- file.path(path, benchmark_file)
  cat("Splitting", benchmark_file_path, "benchmark ...\n")
  data <- readCsvResultsFromFile(benchmark_file_path)

  # Check if the specified column exists in the data frame
  if (column_name %in% colnames(data)) {
    result <- data[data[[column_name]] %in% column_values, ]
  }

  return(result)
}

# Function to split and write benchmark results to an output file
splitAndWriteBenchmarkResultsToFile <- function(jmh_output_folder, jvm_identifier, benchmark_file, column_name, column_values, output_file) {
  benchmark_base_path <- file.path(jmh_output_folder, jvm_identifier)
  data <- splitBenchmarkResults(benchmark_base_path, benchmark_file, column_name, column_values)

  if (nrow(data) > 0) {
    output_path <- file.path(benchmark_base_path, output_file)
    writeDataToCsvFile(benchmark_base_path, output_file, data)
  }
}
