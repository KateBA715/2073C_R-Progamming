# cop2073c-pe7Solve.R
# K. Araya
# 10/19/24
# Calculates probabilities based on a normal distribution

mean_value <- 17  # Mean time to complete the question (minutes)
sd_value <- 4.5   # Standard deviation of time (minutes)

# Probability of taking more than 20 minutes
time_more_than_20 <- 20
prob_more_than_20 <- 1 - pnorm(time_more_than_20, mean = mean_value, 
                               sd = sd_value)

# Probability of taking between 5 and 10 minutes
time_lower <- 5
time_upper <- 10
prob_between_5_and_10 <- pnorm(time_upper, mean = mean_value, sd = sd_value) - 
  pnorm(time_lower, mean = mean_value, sd = sd_value)

# Mark off slowest 10%
quantile <- 0.1
time_slowest_10_percent <- qnorm(quantile, mean = mean_value, sd = sd_value)

# Output results
cat("1. Probability of more than 20 minutes:", 
    prob_more_than_20, "\n")
cat("2. Probability of between 5 and 10 minutes:", 
    prob_between_5_and_10, "\n")
cat("3. Time for slowest 10%:", 
    time_slowest_10_percent, "minutes\n")