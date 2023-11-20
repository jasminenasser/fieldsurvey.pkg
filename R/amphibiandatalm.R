#' Creates a linear model using two predictor variables 
#' 
#' Uses the lm function to analyze and create linear models for data sets with more than one predictor variable of a desired response variable.
#' Returns a linear model summary that illustrates significance.
#' 
#' @param data_name the name of the data set being used
#' @param column_one the response variable desired
#' @param column_two the first predictor variable 
#' @param column_three the second predictor variable 
#' @return a linear model summary 

#' @export 

lm_model <- function(data_name, column_one, column_two, column_three) {
  if (!is.numeric(data_name[[column_one]])) {
    print("Response variable is not numeric.")
    return(NULL)  
  } else {
  formula_str <- paste(column_one, "~", column_two, "+", column_three)
  model_fit <- lm(formula_str, data = data_name)
  return(summary(model_fit))
}
}