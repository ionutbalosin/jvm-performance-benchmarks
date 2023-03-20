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

# Convert all average time scores to "ns/op" (for consistency across all benchmark results)
convertAverageTimeInNs <- function(data) {
  data$Score[data$Unit == "sec/op"] <- as.numeric(data$Score[data$Unit == "sec/op"]) * 1000 * 1000 * 1000
  data$Unit[data$Unit == "sec/op"] <- "ns/op"

  data$Score[data$Unit == "ms/op"] <- as.numeric(data$Score[data$Unit == "ms/op"]) * 1000 * 1000
  data$Unit[data$Unit == "ms/op"] <- "ns/op"

  data$Score[data$Unit == "us/op"] <- as.numeric(data$Score[data$Unit == "us/op"]) * 1000
  data$Unit[data$Unit == "us/op"] <- "ns/op"

  data
}

# Convert all throughput scores to "ops/ms" (for consistency across all benchmark results)
convertThroughputInMs <- function(data) {
  data$Score[data$Unit == "ops/s"] <- as.numeric(data$Score[data$Unit == "ops/s"]) * 1000
  data$Unit[data$Unit == "ops/s"] <- "ops/ms"

  data$Score[data$Unit == "ops/us"] <- as.numeric(data$Score[data$Unit == "ops/us"]) / 1000
  data$Unit[data$Unit == "ops/us"] <- "ops/ms"

  data$Score[data$Unit == "ops/ns"] <- as.numeric(data$Score[data$Unit == "ops/ns"]) / (1000 * 1000)
  data$Unit[data$Unit == "ops/ns"] <- "ops/ms"

  data
}

# Apply column sanitizations on the data frame
sanitizeJmhCsvResults <- function(data) {
  # delete the rows containing profile stats in the Benchmark name (e.g., gc:·gc.alloc.rate)
  data <- data[!grepl(":.", data$Benchmark), ]

  # replace commas with dots for Score and Error columns
  # Note: this is needed for consistency across different platforms (e.g., Linux, macOS, etc.)
  # Example: on Linux the decimal separator could be "." but on macOS is ",", hence we need to make it consistent
  data$Score <- as.numeric(gsub(",", ".", data$Score))

  # keep only the necessary data frame columns for plotting
  data <- data[, grep("^(Benchmark|Score|Unit|Param..gc)$", colnames(data))]

  data
}

# Merge and sanitize all benchmark results for different benchmark results into a single data frame
mergeJmhCsvResults <- function(jmh_output_folder, jvm_identifier, benchmark_files) {
  result <- data.frame()

  for (benchmark_file in benchmark_files) {
    benchmark_file_basename <- file_path_sans_ext(benchmark_file)

    benchmark_file_path <- paste(jmh_output_folder, jvm_identifier, benchmark_file, sep = "/")
    data <- readJmhCsvResults(benchmark_file_path)
    if (!empty(data)) {
      data <- sanitizeJmhCsvResults(data)
      result <- rbind(result, data)
    }
  }

  result
}

# Calculate the geometric mean for average time scores within a data frame
geometricMeanForAverageTimeJmhResults <- function(jmh_output_folder, jvm_identifier, benchmark_files) {
  data <- mergeJmhCsvResults(jmh_output_folder, jvm_identifier, benchmark_files)
  data <- convertAverageTimeInNs(data)
  print(paste("The", jvm_identifier, "category contains", nrow(data), "benchmarks", sep = " "))

  geomean <- geometric.mean(data$Score)
  round(geomean, 2)
}

# Calculate the geometric mean for Garbage Collector throughput scores within a data frame
geometricMeanForThroughputJmhGcResults <- function(jmh_output_folder, jvm_identifier, benchmark_files, gc) {
  data <- mergeJmhCsvResults(jmh_output_folder, jvm_identifier, benchmark_files)
  data <- convertThroughputInMs(data)
  print(paste("The", jvm_identifier, "category contains", nrow(data), "benchmarks", sep = " "))

  geomean <- geometric.mean(data[data$Param..gc == gc, ]$Score)
  round(geomean, 2)
}
