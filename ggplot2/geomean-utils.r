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
  geomean <- geometric.mean(data$Score)

  geomean
}

# Calculate the geometric mean for Garbage Collector throughput scores within a data frame
geometricMeanForThroughputJmhGcResults <- function(jmh_output_folder, jvm_identifier, benchmark_files) {
  data <- mergeJmhCsvResults(jmh_output_folder, jvm_identifier, benchmark_files)
  data <- convertThroughputInMs(data)

  serial_gc_geomean <- geometric.mean(data[data$Param..gc == "serialGC", ]$Score)
  parallel_gc_geomean <- geometric.mean(data[data$Param..gc == "parallelGC", ]$Score)
  g1_gc_geomean <- geometric.mean(data[data$Param..gc == "g1GC", ]$Score)
  z_gc_geomean <- geometric.mean(data[data$Param..gc == "zGC", ]$Score)
  shenandoah_gc_geomean <- geometric.mean(data[data$Param..gc == "shenandoahGC", ]$Score)

  gc_geomean <- c(
    "serialGC" = serial_gc_geomean,
    "parallelGC" = parallel_gc_geomean,
    "g1GC" = g1_gc_geomean,
    "zGC" = z_gc_geomean,
    "shenandoahGC" = shenandoah_gc_geomean,
    "Unit" = "ops/ms"
  )

  data.frame(t(sapply(gc_geomean, c)))
}
