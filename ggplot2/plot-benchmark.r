source("./ggplot2/plot-utils.r")

# apply styles to all R and/or Rmd files in the directory
style_dir()

# retrieve command line arguments in a very specific order
args <- commandArgs(TRUE)
benchmark_basename <- args[1]
openjdk_hotspot_vm_result <- args[2]
graalvm_ce_result <- args[3]
graalvm_ee_result <- args[4]
output_folder <- args[5]

# read all CSV files and append an identifier column
# Note: all CSV files must have the same structure (i.e., we rely on JMH for this)
data1 <- readJmhCsvResults(openjdk_hotspot_vm_result, "OpenJDK HotSpot VM")
data2 <- readJmhCsvResults(graalvm_ce_result, "GraalVM CE")
data3 <- readJmhCsvResults(graalvm_ee_result, "GraalVM EE")

# append all CSV rows to one data frame
data <- rbind(data1, data2)
data <- rbind(data, data3)

data <- processJmhCsvResults(data)

# trim the benchmark scores to 2 decimal places
data$Score <- round(data$Score, 2)

# Extract in a parameters column the substring from data$Benchmark between the first "(" and the last ")"
# Extract in a benchmark name column the actual benchmark name
# Note: This is necessary to sort the benchmarks by parameters and then by benchmark name
data$Parameters <- gsub(".*\\((.*)\\).*", "\\1", data$Benchmark)
data$BenchmarkName <- gsub("\\(.*\\)", "", data$Benchmark)

# sort the data frame by parameters and then by benchmark name
data <- data[order(rev(data$Parameters), data$BenchmarkName), ]

# Insert a new line after the benchmark name and before the parameters
# This is necessary to avoid the parameters to be displayed on the same line as the benchmark name
data$Benchmark <- gsub("\\(", "\n\\(", data$Benchmark)

# Set the Benchmark as the data frame factor in order to keep the order of the benchmarks
# This is necessary because the default order of the factor is alphabetical
data$Benchmark <- factor(data$Benchmark, levels = unique(data$Benchmark))

# define the color palette for the plot bars
colorPalette <- c("OpenJDK HotSpot VM" = "#648FFF", "GraalVM CE" = "#FFB000", "GraalVM EE" = "#FE6100")

plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Method", "Plot", benchmark_basename, colorPalette)

ggsave(file = paste(output_folder, paste(benchmark_basename, "svg", sep = "."), sep = "/"), plot = plot, width = 16, dpi = 320)
