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

amphib_lm <- function(data_name,column_one,column_two,column_three){
model_fit <- lm(eval(as.name(column_one)) ~ eval(as.name(column_two)) + eval(as.name(column_three)), data = data_name)
stat <- summary(model_fit)
return(stat)
}


#This function creates a linear model with two predictor variables and one response 
#variable. Still trying to figure out a way to gear this towards the Lepidosaurs/Amphibia.