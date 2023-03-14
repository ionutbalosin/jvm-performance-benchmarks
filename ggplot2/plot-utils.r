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

isFilenamePatternMatching <- function(list, filename) {
  result <- FALSE

  for (file_list in list) {
    if (grepl(file_list, filename, fixed = FALSE)) {
      result <- TRUE
      break
    }
  }

  result
}

# Read the CSV file containing the benchmark results and append a JVM column identifier to the data frame
readAndAppendJvmIdentifierToJmhCsvResults <- function(benchmark_file_path, identifier) {
  result <- readJmhCsvResults(benchmark_file_path)

  if (!empty(result)) {
    result <- cbind(result, "JvmIdentifier" = identifier)
  }

  result
}

# Concatenates all benchmark Param columns by prepending the name to each value
# Output format: [param1:value1, param2:value2 ...]
# example: [iterations:16384, size:32, threads:2 ...]
concatJmhCsvParamCols <- function(data) {
  result <- c()

  # extract all Param columns in a data frame
  params <- data[, grep("^(Param)", colnames(data)), drop = FALSE]

  # extract Param column names (and delete the Param prefix)
  paramNames <- colnames(params)
  paramNames <- gsub("Param..", "", paramNames)

  # concatenate all Param names:values (in a row-column fashion)
  row <- 1
  while (row <= nrow(params)) {
    concatParams <- NULL
    col <- 1
    while (col <= ncol(params)) {
      value <- params[row, col]
      name <- paramNames[col]
      nameValue <- paste(name, value, sep = ":")

      if (is.null(concatParams)) {
        concatParams <- nameValue
      } else {
        concatParams <- paste(concatParams, nameValue, sep = ", ")
      }

      col <- col + 1
    }

    result <- append(result, concatParams)
    row <- row + 1
  }

  result
}

# Apply further column transformations on the data frame (i.e., JMH results)
processJmhCsvResults <- function(data) {
  # delete the rows containing profile stats in the Benchmark name (e.g., gc:·gc.alloc.rate)
  data <- data[!grepl(":.", data$Benchmark), ]

  # delete the package name from the Benchmark name (it just pollutes the generated plot)
  data$Benchmark <- sub("^.+\\.", "", data$Benchmark)

  # rename Error column
  colnames(data)[colnames(data) == "Score.Error..99.9.."] <- "Error"

  # replace commas with dots for Score and Error columns
  # Note: this is needed for consistency across different platforms (e.g., Linux, macOS, etc.)
  # Example: on Linux the decimal separator could be "." but on macOS is ",", hence we need to make it consistent
  data$Score <- as.numeric(gsub(",", ".", data$Score))
  data$Error <- as.numeric(gsub(",", ".", data$Error))

  # trim the Score column to 2 decimal places (i.e., for a nicer view in the generated plot)
  data$Score <- round(data$Score, 2)

  # add a new Parameters column with the concatenated Param names:values
  # Note: this is necessary to group the Benchmark methods in the generated plot
  data$Parameters <- concatJmhCsvParamCols(data)

  # keep only the necessary data frame columns for plotting
  data <- data[, grep("^(Benchmark|Score|Error|Unit|JvmIdentifier|Parameters)$", colnames(data))]

  # if Parameters column exist, sort the data frame by Parameters and then by Benchmark columns
  # Note: this sorting order is important for the generated plot
  if (!is.null(data$Parameters)) {
    data <- data[order(rev(data$Parameters), data$Benchmark), ]
  }

  # if Parameters column exist, concat the Benchmark and Parameters columns. In addition, insert a new line
  # in between to avoid the parameters to be displayed on the same line as the benchmark name in the the generated plot
  if (!is.null(data$Parameters)) {
    data$Benchmark <- paste(data$Benchmark, "\n", "(", data$Parameters, ")", sep = "")
  }

  # set the Benchmark column as the data frame factor in order to keep the order of the benchmarks
  # Note: this is necessary because the default order of the factor is alphabetical
  data$Benchmark <- factor(data$Benchmark, levels = unique(data$Benchmark))

  data
}

# Generate the plot (i.e., bar chart plot)
generateJmhBarPlot <- function(data, fill, fillLabel, xLabel, yLabel, title, color_palette) {
  plot <- ggplot(data, aes(x = Benchmark, y = Score, fill = data[, fill], ymin = Score - Error, ymax = Score + Error))
  plot <- plot + geom_bar(stat = "identity", color = NA, position = "dodge", width = .7)
  plot <- plot + geom_text(aes(label = paste(Score, Unit, sep = " ")), color = "black", hjust = -0.05, vjust = -.75, position = position_dodge(.7), size = 4)
  plot <- plot + geom_errorbar(width = .175, linewidth = .6, alpha = .7, position = position_dodge(.7))
  plot <- plot + labs(x = xLabel, y = yLabel, fill = fillLabel, title = title)
  plot <- plot + geom_hline(yintercept = 0)
  plot <- plot + coord_flip(clip = "off")
  plot <- plot + theme(
    text = element_text(size = 18),
    panel.background = element_rect(fill = NA, colour = NA, linewidth = 0.5, linetype = "solid"),
    panel.grid.major = element_line(linewidth = 0.5, linetype = "solid", colour = "grey95"),
    panel.grid.minor = element_line(linewidth = 0.25, linetype = "solid", colour = "grey95"),
    legend.spacing.y = unit(0.3, "cm"),
    legend.position = "bottom",
    plot.title = element_text(size = 18),
    plot.caption.position = "plot",
    plot.caption = element_text(hjust = 1),
    plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "cm")
  )
  plot <- plot + guides(fill = guide_legend(byrow = TRUE))
  plot <- plot + scale_fill_manual(fillLabel, values = color_palette)

  plot
}

# Generate and save the plot to a SVG output file
saveJmhBarPlot <- function(data, plot, path, benchmark_file_basename) {
  if (!empty(data)) {
    # set the height proportional to the number of rows plus 4 cm (as a minimum)
    # TODO: may be this could be replaced by another formula
    height <- nrow(data) * 2 + 4

    # create the path if does not exist
    if (!dir.exists(path)) {
      dir.create(path)
    }

    # save the plot
    ggsave(
      file = paste(path, paste(benchmark_file_basename, "svg", sep = "."), sep = "/"),
      plot = plot,
      width = 50.8, # 1920 pixels
      height = height,
      dpi = 320,
      units = "cm",
      limitsize = FALSE,
      scale = 1
    )
  }
}
