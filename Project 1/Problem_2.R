# Load the USArrests dataset
data("USArrests")

# Part (a): Plot the UrbanPop variable.
hist(USArrests$UrbanPop, main="Histogram of UrbanPop", xlab="Urban Population Percentage")

# Part (b): Find the mean and standard deviation of UrbanPop and fit a Normal density.
mean_urban_pop <- mean(USArrests$UrbanPop)
sd_urban_pop <- sd(USArrests$UrbanPop)

# Density Plot for UrbanPop
x <- seq(min(USArrests$UrbanPop), max(USArrests$UrbanPop), length=100)
y <- dnorm(x, mean=mean_urban_pop, sd=sd_urban_pop)
plot(x, y, type="l", main="Normal Density of UrbanPop", xlab="Urban Population Percentage", ylab="Density")

# Part (c): Construct and plot a cumulative distribution function (CDF) for UrbanPop.
y_cdf <- pnorm(x, mean=mean_urban_pop, sd=sd_urban_pop)
plot(x, y_cdf, type="l", main="CDF for UrbanPop", xlab="Urban Population Percentage", ylab="Cumulative Probability")

# Part (d): Calculate the probability that the percentage of people in a state living in urban areas is less than or equal to 60.
prob_less_than_60 <- pnorm(60, mean=mean_urban_pop, sd=sd_urban_pop)

# Part (e): Calculate the probability that the percentage of people in a state living in urban areas is between 50 and 80.
prob_between_50_80 <- pnorm(80, mean=mean_urban_pop, sd=sd_urban_pop) - pnorm(50, mean=mean_urban_pop, sd=sd_urban_pop)

# Part (f): What is the 75th percentile for the UrbanPop variable?
percentile_75th <- qnorm(0.75, mean=mean_urban_pop, sd=sd_urban_pop)

# Print the results
print(paste("Mean of UrbanPop:", mean_urban_pop))
print(paste("Standard Deviation of UrbanPop:", sd_urban_pop))
print(paste("Probability less than or equal to 60:", prob_less_than_60))
print(paste("Probability between 50 and 80:", prob_between_50_80))
print(paste("75th percentile of UrbanPop:", percentile_75th))

