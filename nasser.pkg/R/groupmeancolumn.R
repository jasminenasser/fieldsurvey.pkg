#' calculates mean of more than one column and places into new column
#' 
#' Uses the mean function of the specified column to calculate the mean of the column and places new mean calculation into a new column.
#' Returns data set with new column filled with the calculated mean of a column. 
#' 
#' @param data_name Name of the data set you are working within
#' @param column_list Name of the column(s) you wish to calculate the mean for
#' @param new_column Name of a new column to place calculations in
#' @return calculations of mean for the specified column (numeric)
#' 
#' @export

group_mean <- function(data_name,column_list,new_column){
  groupies <- {{data_name}} %>%
    group_by({{column_list}}) %>%
    summarize(new_column=mean({{column_list}}))
  return(groupies)
}

#This function will create columns for the average of columns. Basically multiple columns getting averaged in one function.
