# install the data.table package before you use it!
install.packages("data.table")

# load data.table package
library(data.table)

# load other packages and datasets
library(tidyverse)
library(dplyr)
library(dslabs)
data(murders)

# convert the data frame into a data.table object
murders <- setDT(murders)

# selecting in dplyr
select(murders, state, region)

# selecting in data.table - 2 methods
murders[, c("state", "region")] |> head()
murders[, .(state, region)] |> head()

# adding or changing a column in dplyr
murders <- mutate(murders, rate = total / population * 10^5)

# adding or changing a column in data.table
murders[, rate := total / population * 100000]
head(murders)
murders[, ":="(rate = total / population * 100000, rank = rank(population))]

# y is referring to x and := changes by reference
x <- data.table(a = 1)
y <- x

x[,a := 2]
y

y[,a := 1]
x

# use copy to make an actual copy
x <- data.table(a = 1)
y <- copy(x)
x[,a := 2]
y


# Subsetting with data.table
# subsetting in dplyr
filter(murders, rate <= 0.7)

# subsetting in data.table
murders[rate <= 0.7]

# combining filter and select in data.table
murders[rate <= 0.7, .(state, rate)]

# combining filter and select in dplyr
murders %>% filter(rate <= 0.7) %>% select(state, rate)


# Summarizing with data.table
# summarizing in dplyr
data(heights)
heights <- setDT(heights)

s <- heights %>% 
  summarize(average = mean(height), standard_deviation = sd(height))

# summarizing in data.table
s <- heights[, .(average = mean(height), standard_deviation = sd(height))]

# subsetting and then summarizing in dplyr
s <- heights %>% 
  filter(sex == "Female") %>%
  summarize(average = mean(height), standard_deviation = sd(height))

# subsetting and then summarizing in data.table
s <- heights[sex == "Female", .(average = mean(height), standard_deviation = sd(height))]

# previously defined function
median_min_max <- function(x){
  qs <- quantile(x, c(0.5, 0, 1))
  data.frame(median = qs[1], minimum = qs[2], maximum = qs[3])
}

# multiple summaries in data.table
heights[, .(median_min_max(height))]

# grouping then summarizing in data.table
heights[, .(average = mean(height), standard_deviation = sd(height)), by = sex]


# Sorting data frames
# order by population
murders[order(population)] |> head()

# order by population in descending order
murders[order(population, decreasing = TRUE)] 

# order by region and then murder rate
murders[order(region, rate)]

