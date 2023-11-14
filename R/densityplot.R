#' Creates a density plot for field surveys.
#' 
#' Utilizes the geom_density plot in the ggplot2 package to create a density plot.
#' Returns a plot with the variables inputted.
#' 
#' @param data_name name of the data set being used
#' @param column_one name of the column used for the x-axis 
#' @param column_two name of the column used for the y-axis
#' @param column_three name of the column used to color the data by
#' @return a density plot
#' 
#' @export

densityplot <- function(data_name, column_one, column_two, column_three) {
  plot <- ggplot(data = data_name, aes(x = {{ column_one }}, y = {{ column_two }}, color = {{ column_three }})) +
    geom_density (stat = "density", position = "jitter", adjust = 1/16) 
  if (!all(c( data_name %in% {{column_one}}, data_name %in% {{ column_two }}, data_name %in% {{ column_three }}))) {
    print("Columns need to be in the dataset.")
  } else {
  return(plot)
}
}
