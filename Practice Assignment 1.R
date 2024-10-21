# COP2073C Practice Exercise 1 Solution
# Module 1 Ungraded Practice Exercise
# K. Araya
# 8/30/2024
# miscellaneous R tasks to demonstrate an R script
# a. Create and store a sequence of values from 5 to -11 that progresses in steps of 0.3
a <- seq(from=5,to=-11,by=-0.3)
a
# b. Repeat the vector c(-1,3,-5,7,-9) twice, with each element repeated 10 times, and store the result. Display the result sorted from largest to smallest.
b <- rep(x=c(-1,3,-5,7,-9),times=2, each=10)
b
# sort will display sorted vector
sort(b,decreasing=T)
# c. Create a vector containing 15 values in a sequence from 10 to 19
c <- seq(from=10,to=19,length.out=15)
c