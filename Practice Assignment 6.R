# Practice Exercise 6
# K. Araya
# 10/06/24
# R script to test a custom function and for loop

# sqAddFive function squares input vector and adds 5 to each element
sqAddFive <- function(x) {
  result <- rep(0, length(x))
  for (i in 1:length(x))
    result[i] <- x[i]^2 + 5
  return(result)
  # result # another way to return the value
}

# test the function
v <- 1:5
cat(sqAddFive(v))