## write function that takes directory name as argument called dir 
    #and any other necessary arguments

# read data from each file in the directory and calculate coefficient of 
  # variation (=stdv/mean) ofr a user specified column; return as vector

# default to report error for <50 observations, with override power to user

#set up empty list for output 
output <- NULL

#for loop to iterate calcs for each file
function_name <- function(dir)
for (file in dir) {
  data <- read.table("*.txt", header=TRUE,sep=" ",stringsAsFactors=FALSE)
 if ()
   sd(file[i],)
}
#another loop to put data into a single vector (name of list.append (or something like that))
#use if-else boi to handle the 50 observations problem (put in the first loop)