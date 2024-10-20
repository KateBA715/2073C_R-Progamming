# COP2073C Practice Exercise 2 Solution
# K. Araya
# 8/05/2024
# vector, matrix, and array operations

# a. use the vector c(2,4,6) and the vector c(1,2)
# in conjunction with rep and * to produce the
# vector c(2,4,6,4,8,12)
#
v <- rep(x=c(2,4,6),times=2) * rep(x=c(1,2),each=3)
v
#
# rep(x=c(2,4,6) produces 2,4,6,2,4,6
# rep(x=c(1,2),each=3) produces 1,1,1,2,2,2
# * is the multiplication operator,
# we do an element-by-element multiplication:
# 2, 4, 6, 2, 4, 6
# 1, 1, 1, 2, 2, 2
# 2, 4, 6, 4, 8, 12
#
# b. create a 3x2 (3 rows, 2 cols) matrix from the
# vector produced in step a.
m <- matrix(v, nrow=3, ncol=2)
m
#
# c. use cbind to add the vector c(3,6,9) to the
# matrix produced in step b.
m2 <- cbind(m, c(3, 6, 9))
m2
#
# d. create a 3-dimensional (single-layer) array from
# the matrix produced in step c.
a <- array(m2,dim=c(3,3,1))
a
#
# e. provide an extraction expression which extracts
# the middle element (the value 8) from the array
# produced in step d.
#
a[2,2,1]
#
#
# f. use the extraction expression from step e (not
# the extracted value) to multiply all elements of
# the array produced in step d by 8.
a2 <- a * a[2,2,1]
a2
