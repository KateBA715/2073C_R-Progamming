# Practice Exercise 4
# Kathryn Araya
# 9/20/2024

# create weight and height vectors
w <- c(55,85,75,42,93,63,58,75,89,67)
h <- c(161,185,174,154,188,178,170,167,181,178)

# set levels for sex as factor
s <- factor(
  c("female","male","male","female","male",
    "male","female","male","male","female"))

# let qplot do its thing
qplot(w, h, color=s, shape=s, xlab="Weight (kg)", ylab="Height (cm)",
      main="Height vs. weight for 10 people") + geom_point(size=4)