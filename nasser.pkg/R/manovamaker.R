manova_maker <- function(data_name, column_one, column_two, column_three) {
  analysis <- manova(cbind(data_name[[column_one]], data_name[[column_two]]) ~ data_name[[column_three]], data=data_name)
  analysis_summary <- summary(analysis)
  return(analysis_summary)
}


#This function creates MANOVAS for small data sets with limited numeric data and 
#more categorical data. 


