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
