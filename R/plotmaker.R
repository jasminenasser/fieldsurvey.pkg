#' Creates a scatter plot given the data column in field data.
#' 
#' Utilizes the ggplot2 package and the function geom_scatter to plot field data.
#' Returns a plot that illustrates the relationship of the variables/data.
#' 
#' @param data_name the name of the data frame you wish to use 
#' @param column_one the name of the column for the independent variable
#' @param column_two the name of the column for the dependent variable 
#' @param column_three the name of the column for facet plot sections
#' @return a scatter plot that shows independent and dependent variables
#' 
#' @export

scatter_plot <- function(data_name,column_one,column_two,column_three){
scatter <- data_name %>%
ggplot(data= data_name, mapping=aes(x={{column_one}},y={{column_two}}))+ geom_point(stat="identity")+ facet_wrap(facets=vars({{column_three}}))+ theme_bw()
return(scatter)
}
