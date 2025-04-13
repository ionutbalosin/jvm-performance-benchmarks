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

# Function to load a library and install if not available
loadLibrary <- function(name) {
  if (!require(name, character.only = TRUE)) {
    install.packages(name, repos = "http://cran.us.r-project.org")
    library(name, character.only = TRUE)
  }
}

# Load the necessary libraries
loadLibrary("ggplot2")
loadLibrary("svglite")
loadLibrary("styler")
loadLibrary("plyr")
loadLibrary("psych")
loadLibrary("tools")

# Apply styles to all R and/or Rmd files in the directory
style_dir()

# Use a large positive value like 999 to prevent scientific notation
options(scipen = 999)

# Read the CSV results from file
readCsvResultsFromFile <- function(file_path) {
  result <- data.frame()

  tryCatch(
    {
      csv_file <- file(file_path, "r")
      result <- read.csv(csv_file, sep = ",", header = TRUE)
    },
    warning = function(w) {
      # cat("Cannot read from", file_path, "File skipped.\n")
    },
    error = function(e) {
      # cat("Cannot read from", file_path, "File skipped.\n")
    },
    finally = {
      if (exists("csv_file")) {
        close(csv_file)
      }
    }
  )

  return(result)
}

# Write the CSV results to file
writeDataToCsvFile <- function(path, file, data) {
  tryCatch(
    {
      if (!dir.exists(path)) {
        dir.create(path)
      }
      csv_file <- file(file.path(path, file), "w")
      write.table(data, csv_file, sep = ",", row.names = FALSE)
    },
    warning = function(w) {
      cat("Warning: ", conditionMessage(w), "\n")
      cat("Cannot write to", file.path(path, file), "File skipped.\n")
    },
    error = function(e) {
      cat("Error: ", conditionMessage(e), "\n")
      cat("Cannot write to", file.path(path, file), "File skipped.\n")
    },
    finally = {
      if (exists("csv_file")) {
        close(csv_file)
      }
    }
  )
}
