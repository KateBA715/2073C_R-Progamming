# COP2073C-Mod 7 Assignment
# K. Araya
# 10/20/24
# Statistics,Probability,Distribution

# Instructions 
# A meticulous gardener is interested in the length of blades of grass on his lawn. 
# He believes that blade length X follows a normal distribution centered on 10 mm 
# with a variance of 2 mm. (from part 2- " where sd_value is the standard deviation, 
#  which is the square root of the variance.")
mean_value <- 10
var <- 2
sd_value <- sqrt(var)

# 1.	Find the probability that a blade of grass is between 9.5 and 11 mm long. 
#     Hint: "between" means subtract the cumulative probability at the lower 
#     bound from that at the upper bound. 

bladeShort <- 9.5
bladeTall <- 11
prob_between <- pnorm(bladeTall, mean = mean_value, sd = sd_value) - 
  pnorm(bladeShort, mean = mean_value, sd = sd_value)

# 2.	What are the standardized values (i.e., Z scores) of 9.5 and 11 in the 
#     context of this distribution? Using the standardized values, confirm that 
#     you obtain the same probability you found in (1) with the standard normal 
#     density (in other words, repeat your calculation from (1) using Z scores). 
#     Hint: Use the formula Z = (X - mean_value) / sd_value in R to calculate the 
#     Z scores, where sd_value is the standard deviation, which is the square root 
#     of the variance. Then, use pnorm() to compute the probabilities for the Z 
#     scores and subtract the lower from the upper. 
#
#     standardized values (i.e., Z scores) of 9.5 and 11
z_bladeShort <- (9.5 - mean_value) / sd_value
z_bladeTall <- (11 - mean_value) / sd_value

#     use pnorm() to compute the probabilities for the Z scores, 
#     subtract the lower from the upper. 

Prob_Zscores <- pnorm(z_bladeTall) - pnorm(z_bladeShort)


# 3.	Below which value are the shortest 2.5 percent of blade lengths found?  
#     Hint: For this percentage-based question, use the quantile function to find 
#     the blade length corresponding to the 2.5th percentile. 
quantile <- 0.025
shortest_blade_quant <- qnorm(quantile, mean = mean_value, sd = sd_value)

# 4. 	Standardize your answer from (3). 
#     Hint: Use the formula Z = (X - mean_value) / sd_value in R to convert the blade 
#     length to a Z score. 
z_shortest_blade_quant <- (shortest_blade_quant - mean_value)/ sd_value


#     Output result
cat("Probability blade is between 9.5 and 11 mm:", 
    prob_between, "\n")

cat("Probability from Z-scores for 9.5 and 11 mm:", 
    Prob_Zscores, "\n")

cat("Blade length below shortest 2.5%:", 
    shortest_blade_quant, "mm\n")

cat("Z-score of  shortest 2.5% blade:", 
    z_shortest_blade_quant, "\n")