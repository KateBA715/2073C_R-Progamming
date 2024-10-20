# cop2073c-pe3Solve.R
# D. Singletary
# 1/9/20
# miscellaneous data frame operations

# create the data frame
dframe <- data.frame(PERSON=c("Stan","Francine","Steve","Roger","Hayley","Klaus"),GENDER=factor(x=c("M","F","M","M","F","M")),FUNNY=factor(x=c("High","Med","Low","High","Med","Med"),levels=c("Low","Med","High")))

# verify the column structure
str(dframe)

# add an AGE column
dframe$AGE <- c(41,28,33,56,45,60)

# reorder columns 3 and 4
dframe <- dframe[,c(1,2,4,3)]

# add the new row
dframe <- rbind(dframe, c("Sally", "F", 37, "High"))

# change AGE from character to numeric
dframe$AGE <- as.numeric(dframe$AGE)

# display and verify structure
dframe
str(dframe)