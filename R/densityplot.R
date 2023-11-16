#' Creates a density plot for field surveys.
#' 
#' Utilizes the geom_density plot in the ggplot2 package to create a density plot.
#' Returns a plot with the variables inputted.
#' 
#' @param data_name name of the data set being used
#' @param column_one name of the column used for the x-axis (must be a numeric value) 
#' @param column_two name of the column used for the y-axis
#' @param column_three name of the column used to color the data by
#' @return a density plot
#' 
#' @export

density_plot <- function(data, column_one, column_two, column_three, position = "jitter", adjust = 1/16) {
  if (is.numeric(column_one)){ 
    plot <- data %>%
      na.omit() %>% 
      ggplot(data= data, mapping= aes(x = {{column_one}}, y = {{column_two}}, color= {{column_three}})) +
      geom_density(stat = "density", position = position, adjust = adjust)
   print("Column one needs to be numeric.")
  } else {
    return(plot)
  }
}

