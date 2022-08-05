# Question 1
# Consider the vector x below and determine sort(x), order(x), rank(x):
x <- c(2, 43, 27, 96, 18)
sort(x) #Answer: 2 18 27 43 96
order(x) #Answer: 1 5 3 2 4
rank(x) #Answer: 1 4 3 5 2


# Question 2
# Continue working with the vector x defined in question 1.
# Match the following functions to their output. Options include integers 1 through 5 and none of these.     
min(x) #Answer: 2
which.min(x) #Answer: 1
max(x) #Answer: 96 or none of these
which.max(x) #Answer: 4


# Question 3
# Mandi, Amy, Nicole, and Olivia all ran different distances in different time intervals. 
# Their distances (in miles) and times (in minutes) are as follows.
# Write a line of code to convert time to hours. Remember there are 60 minutes in an hour. Then write a line of code to calculate the speed of each runner in miles per hour. Speed is distance divided by time.
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)
# How many hours did Olivia run?
time_hour <- time/60
time_hour[4] #Answer: 0.8333333 hours
# What was Mandi's speed in miles per hour?
speed <- distance/time_hour
speed[1] #Answer: 4.8 miles per hour
# Which runner had the fastest speed?
speed #Answer: Amy had the fastest speed, 6.2 miles per hour
