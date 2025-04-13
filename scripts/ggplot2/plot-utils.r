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

# Load the necessary utilities
source("./scripts/ggplot2/utils.r")

# Function to read the benchmark results from a CSV file and append a JVM column identifier
readBenchmarkResultsWithJvmIdentifier <- function(benchmark_file_path, identifier) {
  result <- readCsvResultsFromFile(benchmark_file_path)

  if (nrow(result) > 0) {
    result <- cbind(result, "JvmIdentifier" = identifier)
  }

  result
}

# Function to concatenate all benchmark Param columns
concatenateBenchmarkParamColumns <- function(data) {
  result <- c()

  # Extract all Param columns in a data frame
  params <- data[, grep("^(Param)", colnames(data)), drop = FALSE]

  # Extract Param column names (and delete the Param prefix)
  paramNames <- colnames(params)
  paramNames <- gsub("Param..", "", paramNames)

  # Concatenate all Param names:values (in a row-column fashion)
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

# Function to process the benchmark results
cleanAndPrepareBenchmarkData <- function(data) {
  # Delete rows containing profile stats in the Benchmark name
  data <- data[!grepl(":.", data$Benchmark), ]

  # Remove the package name from the Benchmark name
  data$Benchmark <- sub("^.+\\.", "", data$Benchmark)

  # Rename Error column
  colnames(data)[colnames(data) == "Score.Error..99.9.."] <- "Error"

  # Replace commas with dots for Score and Error columns
  data$Score <- as.numeric(gsub(",", ".", data$Score))
  data$Error <- as.numeric(gsub(",", ".", data$Error))

  # Trim the Score column to 2 decimal places
  data$Score <- round(data$Score, 2)

  # Add a new Parameters column with concatenated Param names:values
  data$Parameters <- concatenateBenchmarkParamColumns(data)

  # Keep only necessary columns for plotting
  data <- data[, grep("^(Benchmark|Score|Error|Unit|JvmIdentifier|Parameters)$", colnames(data))]

  # Sort by Parameters and then by Benchmark columns
  if (!is.null(data$Parameters)) {
    data <- data[order(rev(data$Parameters), data$Benchmark), ]
  }

  # Concatenate Benchmark and Parameters columns with a line break
  if (!is.null(data$Parameters)) {
    data$Benchmark <- paste(data$Benchmark, "\n", "(", data$Parameters, ")", sep = "")
  }

  # Set the Benchmark column as a factor to maintain order
  data$Benchmark <- factor(data$Benchmark, levels = unique(data$Benchmark))

  return(data)
}

# Function to generate a bar chart plot
createBenchmarkBarChart <- function(data, fill, fillLabel, xLabel, yLabel, title, caption, color_palette) {
  plot <- ggplot(data, aes(x = Benchmark, y = Score, fill = data[, fill], ymin = Score - Error, ymax = Score + Error))
  plot <- plot + geom_bar(stat = "identity", color = NA, position = "dodge", width = .7)
  plot <- plot + geom_text(aes(label = paste(Score, Unit, sep = " ")), color = "black", hjust = -0.05, vjust = -.75, position = position_dodge(.7), size = 4)
  plot <- plot + geom_errorbar(width = .175, linewidth = .6, alpha = .7, position = position_dodge(.7))
  plot <- plot + labs(x = xLabel, y = yLabel, fill = fillLabel, title = title, caption = caption)
  plot <- plot + geom_hline(yintercept = 0)
  plot <- plot + coord_flip(clip = "off")
  plot <- plot + theme(
    text = element_text(size = unit(18, "pt")),
    panel.background = element_rect(fill = NA, colour = NA, linewidth = unit(0.5, "pt"), linetype = "solid"),
    panel.grid.major = element_line(linewidth = unit(0.5, "pt"), linetype = "solid", colour = "grey95"),
    panel.grid.minor = element_line(linewidth = unit(0.25, "pt"), linetype = "solid", colour = "grey95"),
    legend.spacing.y = unit(0.3, "cm"),
    legend.position = "bottom",
    plot.title = element_text(size = 18),
    plot.caption.position = "plot",
    plot.caption = element_text(hjust = 1),
    plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "cm")
  )
  plot <- plot + guides(fill = guide_legend(byrow = TRUE, reverse = TRUE))
  plot <- plot + scale_fill_manual(fillLabel, values = color_palette)

  return(plot)
}

# Function to save the plot to an SVG output file
saveBenchmarkBarChartToSVG <- function(data, plot, path, benchmark_file_basename) {
  if (nrow(data) > 0) {
    # Set the height proportional to the number of rows plus 4 cm (as a minimum)
    # TODO: may be this could be replaced by another formula
    height <- nrow(data) * 2 + 4

    # Create the path if it does not exist
    if (!dir.exists(path)) {
      dir.create(path)
    }

    # Save the plot
    ggsave(
      file = file.path(path, paste(benchmark_file_basename, "svg", sep = ".")),
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
