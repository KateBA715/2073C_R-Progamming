# COP2073C Module 3 Assignment
# Kate Araya
# 9/15/2024
# Extended Data Types and Data Structures

#1. Create a data frame from the data shown in the attached table. Use the provided 
#column headings as the column names. Ensure the LastName column is not treated 
#as a factor by using the appropriate option. 

DF <- data.frame(
  EmployeeID = c(1001, 1002, 1003, 1004, 1005),
  LastName = c("Smith", "Norris", "Johnson", "Hart", "Owens"),
  Salary = c(45000, 51000, 36000, 39000, 42000),
  stringsAsFactors = FALSE
)

#2. Run the summary() function to display a summary of the data frame. 
summary(DF)
#3. Use the cbind() function to add a new column to your data frame named Exempt, 
#which indicates whether the employee is exempt from overtime. Use subsetting and a 
#logical condition to calculate the values. Any employee with a salary over 50,000 
#should be exempt ("Y"), while others should be nonexempt ("N"). #
#Hint: Create a vector with the two possible values ("Y" and "N"). 
#Use subsetting to assign the correct value by evaluating whether each employee's salary is over 50,000. 
#Keep in mind that logical conditions return TRUE (1) or FALSE (0), so you'll need #
#to add 1 to the logical result in order to correctly index into your vector of "Y" and "N". 

ExemptStatus <- factor(c("Y","N"))

DF <- cbind(DF, Exempt=ExemptStatus[(DF$Salary > 50000) + 1])

#4. Display the updated data frame 


print(DF)

#5. Extract and display the first two rows of your data frame. 

print(DF[1:2, ])
#6. Use the str() function to display the structure of the data frame, paying attention to how the 
#Exempt column is stored. 
str(DF)
#7. Add an additional row for the following employee using rbind: EmployeeID: 1006 LastName: Rogers Salary: 55000 Exempt: Y 
newEmp <- data.frame(
  EmployeeID = 1006, 
  LastName = "Rogers",
  Salary = 55000,
  Exempt = factor("Y", levels=c("Y", "N")),
  stringsAsFactors = FALSE
)
DF <- rbind(DF, newEmp)
#8. Display the final version of your data frame

print(DF)

