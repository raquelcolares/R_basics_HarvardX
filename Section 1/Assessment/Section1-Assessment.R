#Question 1
#What are the two solutions to ( 2x^2 - x - 4 = 0 ) ? 
a <-2
b <--1
c <--4
(-b + sqrt(b^2 - 4*a*c))/(2*a) #Answer: 1.686141
(-b - sqrt(b^2 - 4*a*c))/(2*a) ##Answer: -1.186141

#Question 2
#Use R to compute log base 4 of 1024.
#You can use the help() function to learn how to use arguments to change the base of the log() function.
log(1024,base=4) #Answer: 5


#Load the movielens dataset:
library(dslabs)
data(movielens)

#Question 3a
#How many rows are in the dataset?
str(movielens) #Answer: 100004

#Question 3b
#How many different variables are in the dataset?
str(movielens) #Answer: 7

#Question 3c
#What is the variable type of title?
class(movielens$title) #Answer: "character"

#Question 3d
#What is the variable type of genres?
class(movielens$genres) #Answer: "factor"

#Question 4
#We already know we can use the levels() function to determine the levels of a factor. 
#A different function, nlevels(), may be used to determine the number of levels of a factor.
#Use this function to determine how many levels are in the factor genres in the movielens data frame.
nlevels(movielens$genres) #Answer: 901

