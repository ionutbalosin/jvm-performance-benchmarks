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

# Split the benchmark results from a single data frame based on
# column "<column_name>":"<column_values>" as a criteria differentiator
splitJmhCsvResults <- function(path, benchmark_file, column_name, column_values) {
  result <- data.frame()

  benchmark_file_path <- paste(path, benchmark_file, sep = "/")
  print(paste("Splitting", benchmark_file_path, "benchmark ...", sep = " "))
  data <- readJmhCsvResults(benchmark_file_path)
  if (!empty(data)) {
    result <- data[data[[column_name]] %in% column_values, ]
  }

  result
}

# Split and write the benchmark results to an output file
processJmhCsvResults <- function(jmh_output_folder, jvm_identifier, benchmark_file, column_name, column_values, output_file) {
  benchmark_base_path <- paste(jmh_output_folder, jvm_identifier, sep = "/")
  data <- splitJmhCsvResults(benchmark_base_path, benchmark_file, column_name, column_values)

  writeJmhCsvResults(benchmark_base_path, output_file, data)
}
