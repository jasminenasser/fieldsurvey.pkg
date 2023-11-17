# nasser.pkg

## An R package for analyzing field data

# Overview:

In this package, the data collected in the field can be analyzed and easily manipulated using simple functions and calculations. This package is also able to analyze non-numeric data using statistical analyses geared toward difficult data. This package can also promote map making for field sites.

# Functions:

scrap_col()   gets rid of unnecessary columns not needed for analysis
data_mean()   creates a new mean column for averages for a specified numeric column
density_plot()creates a density plot for the specified variables
lm_model()    creates a linear model summary for the specified variables
custom_plot() creates a plot with the specified columns and a specified plot type
manova_maker()creates a manova analysis for the columns specified

For a more detailed review of the functions in this package look at the articles and under the FieldSurveyTutorial. 

# Installations:
It is recommended for these packages to be installed so functions run smoothly. Install at your own will. You can use the code below to help. 

install.packages("nasser.pkg")
library(nasser.pkg)

install.packages("tidyverse")
library(tidyverse)

install.packages("ggplot2")
library(ggplot2)

install.packages("googlesheets4")
library(googlesheets4)

```{r}
googlesheets4::gs4_auth()
AGP_data <- read_sheet("https://docs.google.com/spreadsheets/d/1hH39exibZwdQyr3IsLzxBMXpfCz0qVN-4mAe673PPpQ/edit?usp=sharing")
```

# Usage:
This package can be used using any data frame you have, however downloading new data frames is also available. To download the data frame used in the tutorial of this package begin with installing the package called "googlesheets4" this package allows you to search google sheets that are open to the public for use. The code above shows the keystrokes for downloading the public google sheets called "AGP_data".

If you wish to export your own data frame from your computer into your R studio then open the File tab of whatever software holds the data frame and under the Export tab there is another category that says change the file type. Click change file type and select the CSV file type. CSV files are easily read by and exported in R. 

# The Functions of this package and how to use them:
The functions in this package utilize of packages as well, I recommend installing the other packages as well to ensure optimum progress in the analyses. 

Cleaning/ Reorganizing the data
The scrap_col() function will get rid of certain columns that do not seem to hold value for further analyses.To better understand this function search the tutorial for scrap_col() or enter the code below to get a look at what this function does to data.

```{r}
scrap_col(AGP_data,c("recap","notes","username","recent","tagnum"))
```

Manipulation of the data
The data_mean() function will generate a new column that hold averages of a column that has numeric values. To better understand this function search the tutorial for data_mean() or copy the code below and take a look at the results.

```{r}
data_mean(AGP_data,mass)
```

Linear Model summary 
The lm_model() function will create a summary of the linear relationships and if there is a significance in those interactions.To better understand this function search the tutorial for lm_model() or copy the code below and take a look at the results.

```{r}
lm_model(AGP_data,"svl","stage","critter")
```

Visulaizing data through plots
The custom_plot function creates a plot of your choosing and will also facet the information to appeal more visually. To better understand this function search the tutorial for custom_plot() or copy the code below to better look at the plot. 


```{r}
custom_plot(AGP_data,stage,svl,critter,"scatter")
```

MANOVA anysis 
The manova_maker() function generates a summary of the manova analysis and uses significance for determining the value of the association of the variables. For more information on the MANOVA function the tutorial can be found in the articles tab or copy the code to analyze the results.

```{r}
manova_maker(AGP_data,"mass","svl","critter")
```

Density plot maker 
The density_plot() function will create a density plot for the fluctuations of numeric data. To better understand this function take a look at the tutorial found in the articles tab or copy the code below and take a look at the results. 

```{r}
density_plot(AGP_data,"mass","critter","stage")
```

For more information on this package take a look here https://github.com/jasminenasser/nasser.pkg.git
