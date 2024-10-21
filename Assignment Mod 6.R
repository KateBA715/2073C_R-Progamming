# Module 6 Assignment
# COP2073C-Fall 24
# Kate Araya
# October 6, 2024
#	Improve the solution to the Module 6 practice exercise by doing the following: 

sqAdd5 <- function(x) {
  # •	Replace the for loop in the custom function with a vectorized operation
  vecOper <- try( {
    result <- x^2 + 5
  }, silent = TRUE)
  if (class(vecOper) == "try-error") {
    # If the exception is thrown, return a vector of NAs
    return(rep(NA, length(x)))
  } else {
    return(result)
  }
}

# Test(change the direct call to the function with one of the apply functions)
v <- 1:5
appFunction <- sapply(v, sqAdd5)
cat(appFunction, "\n")

# •	Add a second test with a numeric vector that also includes a string element 
# to test your exception handler 
numVec <- c("dog", 2, "lily", 4, 5, "taco")
appFunction <- sapply(numVec, sqAdd5)
print(appFunction)