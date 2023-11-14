#' Creates a multivariate analysis on field data
#' 
#' Utilizes the manova function to make a multivariate analysis.
#' Return a summary fit indicating the variance of the data set among variables.
#' 
#' @param data_name name of the data set being used
#' @param column_one the name of the column being used as the response variable
#' @param column_two the name of the column being used as the second response variable 
#' @param column_three the name of the column being used as the predictor variable
#' @return a density plot for the columns specified
#' 
#' @export

manova_maker <- function(data_name, column_one, column_two, column_three) {
analysis <- manova(cbind(data_name[[column_one]], data_name[[column_two]]) ~ data_name[[column_three]], data=data_name)
analysis_summary <- summary(analysis)
return(analysis_summary)
}



