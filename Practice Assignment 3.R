# COP2073C Practice Module 3 
# Kathryn Araya
# 9/20/2024 
# Extended Data Types and Data Structures

# a. Create and save the following data as a data frame, ensuring the PERSON 
#column is a character string, and both GENDER and FUNNY columns are factors with 
#the levels M/F and Low/Med/High, respectively:
DF <- data.frame(
  PERSON = c("Stan","Francine", "Steve", "Roger", "Haley", "Klaus"),
  GENDER = factor(c("M", "F", "M", "M", "F", "M"), levels = c("M", "F")),
  FUNNY = factor(c("High", "Med", "Low", "High", "Med", "Med"), levels = c("Low", "Med", "High")),stringsAsFactors=FALSE)
#
# b. Use the str() function to verify the characteristics of each column. 
str(DF)
#
#c. Add an AGE column to the data frame with the following ages:  
DF$AGE <- c(41, 28, 33, 56, 45, 60)
#
str(DF)
#
# d. Use column indexing to swap the AGE and FUNNY columns so that AGE becomes 
#the 3rd column and FUNNY becomes the 4th column. 
DF <- DF[,c("PERSON", "GENDER", "AGE", "FUNNY")]
str(DF)
#
# e. Add the following row to your data frame: "Sally", "F", 37, "High". 
newRow <- data.frame(PERSON = "Sally", GENDER = factor("F", levels = c("M", "F")), AGE = 37, FUNNY = factor("High", levels = c("Low", "Med", "High")), stringsAsFactors = FALSE)
DF <- rbind(DF,newRow)
str(DF)
# f. t str() indicates the AGE column is stored as a character vector. 
# Convert that column to a numeric type. ( I don't know what I did differently, but AGE was always a numeric value?)
DF$AGE <- as.numeric(DF$AGE)
#g. Display your final data frame and use str() to verify the structure, 
#ensuring PERSON is a character vector, GENDER and FUNNY are factors, and AGE is numeric. 
str(DF)
#
print(DF)
#(( I don't know what I did differently, but AGE was always a numeric value??) - Is it because I didn't use quotation marks on input?)