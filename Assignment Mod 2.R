# COP2073C Module 2 Assignment
# Kate Araya
# 9/08/2024
# vector, matrix, and array operations


#a. 
#Create two vectors representing the populations for the years 2000 and 2010. 
#Then, use cbind to create a 4x2 population matrix from these two vectors. 

a2000 <- c(4447100, 626932, 5130632, 2673400)
a2010 <- c(4779735, 710231, 6329013, 2915921)
a2000
a2010
pop_matrix <- cbind(a2000, a2010)
pop_matrix
# I first tried 
#  pop <- matrix(c(...all numbers separated by comma...), 
#  nrow = 4, ncol = 2, byrow = t) 
#  colnames(pop) <- c("a2000", "a2010") 
#  a2100
#  a2010
# but by the instructions - I was first to create the vectors - so   
# that would technically not have been following instructions. 
# Just think designating nrow and ncol and naming columns is cool. :) 

#b. 
#Using element extraction with vector operations create a vector that 
#contains the percentage increase in population for each state between 
#2000 and 2010. 
#• Hint: Use this formulat: (2010 value - 2000 value) / 2000 value. 
pop_increase <- c((a2010 - a2000) / a2000)
pop_increase

#c. 
#Use the percentage increase vector from step b and continuing to use 
#element extraction with vector operations, calculate a new vector that  
#predicts the populations for the year 2020. 
#• Hint: Use this formula: 2010 value * (1 + percentage increase value). 
a2020 <- c(a2010 * (1 + pop_increase))
a2020

#d.
#Use cbind to add the estimated 2020 population vector to the population matrix.
#Overwrite the original matrix object with this new one.
pop_matrix <- cbind(pop_matrix, a2020)
pop_matrix