# Practice Exercise 5
# K.Araya
# 9/27/24
# display function parameter examples in a data frame

# Create the data frame (be careful with the quotes!)
arg_matching <- data.frame(
  "Type" = c("Partial", "Positional", "Exact"),
  "Example" = c(
    paste0(
      "matrix(data = 1:9, nrow = 3, ncol = 3, ",
      "dimnames = list(c('A', 'B', 'C'), c('D', 'E', 'F')))"
    ),
    paste0(
      "matrix(1:9, 3, 3, FALSE, ",
      "list(c('A', 'B', 'C'), c('D', 'E', 'F')))"
    ),
    paste0(
      "matrix(data = 1:9, nrow = 3, ncol = 3, byrow = FALSE, ",
      "dimnames = list(c('A', 'B', 'C'), c('D', 'E', 'F')))"
    )
  )
)

# Write to CSV file
write.csv(x = arg_matching, file = 'matrix-argmatching.csv', row.names = FALSE)

# Delete from global environment
rm(arg_matching)

# Read CSV file to recreate data frame
arg_matching <- read.csv(file = 'matrix-argmatching.csv')

# Display the dataframe; use View for readability
View(arg_matching)