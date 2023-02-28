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

source("./ggplot2/plot-utils.r")

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
jmh_output_folder <- args[1]
openjdk_hotspot_vm_identifier <- args[2]
graalvm_ce_identifier <- args[3]
graalvm_ee_identifier <- args[4]
benchmark_file_basename <- args[5]
benchmark_file <- args[5]

# generate the full benchmark result file paths
openjdk_hotspot_vm_benchmark_file <- paste(jmh_output_folder, openjdk_hotspot_vm_identifier, benchmark_file, sep = "/")
graalvm_ce_benchmark_file <- paste(jmh_output_folder, graalvm_ce_identifier, benchmark_file, sep = "/")
graalvm_ee_benchmark_file <- paste(jmh_output_folder, graalvm_ee_identifier, benchmark_file, sep = "/")

# read all CSV files and append an identifier column
# Note: all CSV files must have the same structure (i.e., we rely on JMH for this)
data1 <- readJmhCsvResults(openjdk_hotspot_vm_benchmark_file)
data1 <- appendJvmIdentifierCol(data1, "OpenJDK HotSpot VM")

data2 <- readJmhCsvResults(graalvm_ce_benchmark_file)
data2 <- appendJvmIdentifierCol(data2, "GraalVM CE")

data3 <- readJmhCsvResults(graalvm_ee_benchmark_file)
data3 <- appendJvmIdentifierCol(data3, "GraalVM EE")

# append all CSV rows to one data frame
data <- rbind(data1, data2)
data <- rbind(data, data3)

# process data frame (e.g., rename, merge, append and sort columns, etc.)
data <- processJmhCsvResults(data)

# define the color palette for the plot bars
colorPalette <- c("OpenJDK HotSpot VM" = "#648FFF", "GraalVM CE" = "#FFB000", "GraalVM EE" = "#FE6100")

# extract the unit from the data frame
unit <- data$Unit[1]

plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Benchmark", unit, benchmark_file_basename, colorPalette)

# set the height proportional to the number of rows plus 4 cm (as a minimum)
# TODO: may be this could be replaced by another formula
height <- nrow(data) * 2 + 4
ggsave(
  file = paste(jmh_output_folder, paste(benchmark_file_basename, "svg", sep = "."), sep = "/"),
  plot = plot,
  width = 50.8, # 1920 pixels
  height = height,
  dpi = 320,
  units = "cm",
  limitsize = FALSE,
  scale = 1
)
