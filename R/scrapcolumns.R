#' Scraps the unnecessary columns in the data that is not needed for manipulations
#' 
#' Uses select function to get rid of columns that are not useful in the analyses
#' Returns a data set without the columns inputted as an argument
#' 
#' @param data_name name of the data set used
#' @param column_list name of column(s) that aren't useful
#' @return data set without the specified columns 
#' 
#' @export

scrap_col <- function(data_name,column_list){
if (!is.character(column_list)){
print("Column argument must be a variable that represents string values or a single string value.")
} else {
clean <- {{data_name}} %>%
select(-c({{column_list}}))
return(clean)
}
}

#This function will scrap or get rid of unnecessary columns that does not serve a major role
#in the potential functions I would like to create. Like narrowing the scope of my data so
#I can focus on the information that can potentially mean something later. 