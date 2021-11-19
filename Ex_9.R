## write function that takes directory name as argument called dir 
    #and any other necessary arguments
# read data from each file in the directory and calculate coefficient of 
  # variation (=stdv/mean) of a user specified column; return as vector
# default to report error for <50 observations, with override power to user

#set up empty list for output 
output <- vector(mode="numeric")
answer <- vector( mode="logical", length = 1L)
  # write function name with inputs dir= directory and col = user-specified
  #column for the calculations
cvCalc <- function(dir, col){
  #list files in directory
  files <- list.files(dir, all.files = FALSE, include.dirs = FALSE, full.names = TRUE)
  #for loop to iterate calculations in each file
    #read file
    #calculate the coefficient of variation
for (i in files) {
  data <- read.table(i, header=FALSE,sep=",", stringsAsFactors = TRUE)
  #if-else statement: for files with at least 50 observations, run the code 
  if (nrow(data) < 50) {
    # for files with fewer than 50 observations, print warning, if they want to 
      #continue they can, if not, the loop breaks
  print("Warning: less than 50 observations")
  answer <-readline("Would you like to continue anyway? Type TRUE to continue or FALSE to stop")
   if (answer!="TRUE") {
   next
     }
  }
  cvVal <- sd((data[, col]), na.rm = TRUE)/mean(data[, col], na.rm = TRUE)
  output<- append(output, cvVal)
}
  return(output)
}
