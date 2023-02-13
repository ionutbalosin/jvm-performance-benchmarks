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

# define the color palette for the plot bars
colorPalette <- c("OpenJDK HotSpot VM" = "#648FFF", "GraalVM CE" = "#FFB000", "GraalVM EE" = "#FE6100")

plot <- generateJmhBarPlot(data, "JvmIdentifier", "Legend", "Method", "Plot", benchmark_basename, colorPalette)

ggsave(file = paste(output_folder, paste(benchmark_basename, "svg", sep = "."), sep = "/"), plot = plot, width = 16, dpi = 320)
