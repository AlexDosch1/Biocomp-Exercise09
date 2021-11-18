## write function that takes directory name as argument called dir 
    #and any other necessary arguments
# read data from each file in the directory and calculate coefficient of 
  # variation (=stdv/mean) of a user specified column; return as vector
# default to report error for <50 observations, with override power to user

#set up empty list for output 
output <- vector(mode="numeric")
answer <- vector( mode="logical", length=1L)
  # write function name with inputs dir= directory and col = user-specified
  #column for the calculations
cvCalc <- function(dir, col)
  #for loop to iterate calculations in each file
    #read file
    #calculate the coefficient of variation
for (file in dir) {
  data <- read.table("file", header=TRUE,sep=",",stringsAsFactors=FALSE)
  #if-else statement: for files with at least 50 observations, run the code 
  if (length(data[,col]) >= 50) {
    cvVal <- sd((data[, col]))/mean(data[,col])
    output<- append(output, cvCalc)
    return(output)
    # for files with fewer than 50 observations, print warning, if they want to 
      #continue they can, if not, loop breaks
  } else if (length(data[,col]) < 50 ) {
  print("Warning: less than 50 observations")
  answer <-readline("Would you like to continue anyway? Type TRUE to continue or FALSE to stop")
  if (answer=="TRUE") {
    cvVal <- sd((data[, col]))/mean(data[,col])
    output<- append(output, cvCalc)
  } else {
    break
  }
}
}
