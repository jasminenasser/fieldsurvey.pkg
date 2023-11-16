#' Creates a multivariate analysis on field data
#' 
#' Utilizes the manova function to make a multivariate analysis.
#' Return a summary fit indicating the variance of the data set among variables.
#' 
#' @param data_name name of the data set being used
#' @param column_one the name of the column being used as the response variable (must be a numeric variable)
#' @param column_two the name of the column being used as the second response variable (must be a numeric variable)
#' @param column_three the name of the column being used as the predictor variable (must be a categorical variable)
#' @return a manova summary for the columns specified
#' 
#' @export

manova_maker <- function(data_name, column_one, column_two, column_three) {
  predictor <- data_name %>% 
    select({{column_three}})
  if(any(is.numeric(predictor))){
    print("Predictor must be categorical")
  }else{
  manova_summary <- data_name %>% 
    select(response = quo_name(column_one), response1=quo_name(column_two), predictor = quo_name(column_three)) %>% 
    manova(cbind(response, response1) ~ predictor, data = .) %>% 
  summary()
  }
return(manova_summary)
}
