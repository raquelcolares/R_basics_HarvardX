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

# Question 4c
# Subset the sex column of the dataset by the index in 4b to determine the individual’s sex.
heights$sex[ind]
# Answer: Male

# Question 5
# This question takes you through three steps to determine how many of the integer height values between the minimum and maximum heights are not actual heights of individuals in the heights dataset.
# Question 5a
# Determine the maximum height.
max(heights$height)
# Answer: 82.7

# Question 5b
# Write code to create a vector x that includes the integers between the minimum and maximum heights in this dataset (as numbers).
x <- 50:82
# Answer: x <- 50:82

# Question 5c
# How many of the integers in x are NOT heights in the dataset?
ind <- !x%in%heights$height
sum(ind)
# Answer: 3

# Question 6
# Using the heights dataset, create a new column of heights in centimeters named ht_cm. Recall that 1 inch = 2.54 centimeters. Save the resulting dataset as heights2.
# Question 6a
# What is the height in centimeters of the 18th individual (index 18)?
heights2 <- mutate(heights, ht_cm = heights$height * 2.54)
heights2$ht_cm[18]
# Answer: 163

# Question 6b
# What is the mean height in centimeters?
mean(heights2$ht_cm)
# Answer: 174

# Question 7a
# How many females are in the heights2 dataset?
female2 <-  heights2$sex == "Female"
sum(female2)
# Answer: 238

# Question 7b
# What is the mean height of the females in centimeters?
females <- heights2 %>% filter(sex == "Female") %>% select(ht_cm)
mean(females$ht_cm)
# Answer: 165

# Question 8
# The olive dataset in dslabs contains composition in percentage of eight fatty acids found in the lipid fraction of 572 Italian olive oils:
library(dslabs)
data(olive)
head(olive)
#Plot the percent palmitic acid versus palmitoleic acid in a scatterplot. What relationship do you see?
x <- olive$palmitic
y <- olive$palmitoleic
plot(x, y)
# Answer: There is a positive linear relationship between palmitic and palmitoleic.

# Question 9
# Create a histogram of the percentage of eicosenoic acid in olive.
# Which of the following is true?
hist(olive$eicosenoic)  
# Answer: The most common value of eicosenoic acid is below 0.05%.

# Question 10
# Make a boxplot of palmitic acid percentage in olive with separate distributions for each region.
# Which region has the highest median palmitic acid percentage?
boxplot(palmitoleic~region, data = olive)
# Which region has the highest median palmitic acid percentage?
# Answer: Southern Italy
# Which region has the most variable palmitic acid percentage?
# Answer: Southern Italy
