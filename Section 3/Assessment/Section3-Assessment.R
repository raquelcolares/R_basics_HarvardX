library(dslabs)
data(heights)
options(digits = 3)    # report 3 significant digits for all answers

class(heights)
heights

# Question 1
# First, determine the average height in this dataset. Then create a logical vector ind with the indices for those individuals who are above average height.
# How many individuals in the dataset are above average height?
avg <- mean(heights$height)
avg
ind <- sum(heights$height > avg)
ind
# Answer: 532 individuals

# Question 2
# How many individuals in the dataset are above average height and are female?
ind_fem <- heights %>% 
  filter(sex == "Female") %>%
  summarize(height > avg)
sum(ind_fem)
# Answer: 31 individuals

# Question 3
# What proportion of individuals in the dataset are female?
mean(female)
# Answer: 0.227

# Question 4
# Question 4a
# Determine the minimum height in the heights dataset.
min(heights$height)
# Answer: 50

# Question 4b
# Use the match() function to determine the index of the first individual with the minimum height.
ind <- match(50, heights$height)
ind
# Answer: 1032

