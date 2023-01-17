# use a large positive value like 999 to prevent the scientific notation
options(scipen = 999)

loadLibrary <- function(name) {
  if (!require(name, character.only = TRUE)) {
    install.packages(name)
    library(name, character.only = TRUE)
  }
}

loadLibrary("ggplot2")
loadLibrary("svglite")
loadLibrary("styler")

# Read the CSV results. Optionally, append an extra column as a JVM identifier with the same value for all the rows
# Note: the JVM identifier column is necessary to group the benchmarks in the final generated plot
readJmhCsvResults <- function(path, identifier = NULL) {
  result <- read.csv(path, sep = ",", header = TRUE)

  # append the identifier column if specified
  if (!is.null(identifier)) {
    result <- cbind(result, "JvmIdentifier" = identifier)
  }

  result
}

# Concatenates all Param columns (names:values) and prepend the Benchmark name
# Note: this is necessary to group the benchmarks methods in the generated plot
# TODO: refactor this method to rely more on the "R" approach
concatJmhCsvParamCols <- function(data) {
  result <- c()

  # extract Param columns
  params <- data[, grep("^(Param)", colnames(data))]

  # extract Param column names (and delete the Param prefix)
  paramNames <- colnames(params)
  paramNames <- gsub("Param..", "", paramNames)

  row <- 1
  while (row <= nrow(params)) {
    # concatenate all Param names:values
    # format: paramName1:paramValue1, paramName2:paramValue2 ...
    # example: iterations:16384, size:32, threads:2
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

    # wrap the concatenated Param names:values in brackets ()
    if (!is.null(concatParams)) {
      concatParams <- paste("(", concatParams, ")", sep = "")
    }

    # prepend the benchmark name
    concatParams <- paste(data$Benchmark[row], concatParams, sep = "")

    result <- append(result, concatParams)
    row <- row + 1
  }

  result
}

# Apply further column transformations on the JMH data results
processJmhCsvResults <- function(data) {
  # delete the benchmark package name and keep only the basename (it just pollutes the generated plot)
  data$Benchmark <- sub("^.+\\.", "", data$Benchmark)

  # rename Error column
  colnames(data)[colnames(data) == "Score.Error..99.9.."] <- "Error"

  # replace the Benchmark column with the concatenated Param names:values
  data$Benchmark <- concatJmhCsvParamCols(data)

  # keep only these columns (i.e., the really necessary ones)
  data <- data[, grep("^(Benchmark|Score|Error|Unit|JvmIdentifier)$", colnames(data))]

  data
}

# Generate the plot (i.e., bar chart)
generateJmhBarPlot <- function(data, fill, fillLabel, xLabel, yLabel, title, colorPalette) {
  plot <- ggplot(data, aes(x = gsub("\\(", "\n\\(", Benchmark), y = Score, fill = data[, fill], ymin = Score - Error, ymax = Score + Error))
  plot <- plot + geom_bar(stat = "identity", color = NA, position = "dodge", width = .7)
  plot <- plot + geom_text(aes(label = paste(Score, Unit, sep = " ")), color = "black", hjust = 0, position = position_dodge(.7), size = 4)
  plot <- plot + geom_errorbar(width = .2, linewidth = .4, alpha = .5, position = position_dodge(.7))
  plot <- plot + labs(x = xLabel, y = yLabel, fill = fillLabel, title = title, caption = "...")
  plot <- plot + geom_hline(yintercept = 0)
  plot <- plot + coord_flip()
  plot <- plot + theme(
    panel.background = element_rect(fill = NA, colour = NA, linewidth = 0.5, linetype = "solid"),
    panel.grid.major = element_line(linewidth = 0.5, linetype = "solid", colour = "grey95"),
    panel.grid.minor = element_line(linewidth = 0.25, linetype = "solid", colour = "grey95"),
    legend.spacing.y = unit(0.3, "cm"),
    legend.position = "bottom",
    plot.caption.position = "plot",
    plot.caption = element_text(hjust = 1),
    text = element_text(size = 16),
    plot.margin = unit(c(0.5, 0.5, 0.5, 0.5), "cm")
  )
  plot <- plot + guides(fill = guide_legend(byrow = TRUE))
  plot <- plot + scale_fill_manual(fillLabel, values = colorPalette)

  plot
}
