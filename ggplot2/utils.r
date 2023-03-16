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

loadLibrary <- function(name) {
  if (!require(name, character.only = TRUE)) {
    install.packages(name)
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

# apply styles to all R and/or Rmd files in the directory
style_dir()

# use a large positive value like 999 to prevent the scientific notation
options(scipen = 999)

# Read the CSV results from file
readJmhCsvResults <- function(file_path) {
  result <- data.frame()

  tryCatch(
    {
      result <- read.csv(file_path, sep = ",", header = TRUE)
    },
    warning = function(w) {
      print(paste("Cannot read from", file_path, "File skipped.", sep = " "))
    },
    error = function(e) {
      print(paste("Cannot read from", file_path, "File skipped.", sep = " "))
    }
  )

  result
}

# Write the CSV results to file
writeJmhCsvResults <- function(path, file, data) {
  tryCatch(
    {
      if (!dir.exists(path)) {
        dir.create(path)
      }
      write.table(data, paste(path, file, sep = "/"), sep = ",", row.names = FALSE)
    },
    warning = function(w) {
      print(paste("Cannot write to", file_path, "File skipped.", sep = " "))
    },
    error = function(e) {
      print(paste("Cannot write to", file_path, "File skipped.", sep = " "))
    }
  )
}
