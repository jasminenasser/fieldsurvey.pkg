# nasser.pkg

## An R package for analyzing field data

Overview:
In this package, the data collected in the field can be analyzed and easily manipulated using simple functions and calculations. This package is also able to analyze non-numeric data using statistical analyses geared toward difficult data. This package can also promote map making for field sites.

Functions:
scrap_col() gets rid of unnecessary columns not needed for analysis
data_mean() creates a new mean column for averages for a specified numeric column
densityplot() creates a density plot for the specified variables
amphib_lm() creates a linear model summary for the specified variables
custom_plot() creates a plot with the specified columns and a specified plot type
manova_maker() creates a manova analysis for the columns specified

For a more detailed review of the functions in this package look at vignettes(nasser.pkg)

Installations:

install.packages("nasser.pkg")

install.packages("tidyverse")

install.packages("ggplot2")

Usage:

library(nasser.pkg)




