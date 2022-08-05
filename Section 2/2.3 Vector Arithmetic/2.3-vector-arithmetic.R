# The name of the state with the maximum population is found by doing the following
murders$state[which.max(murders$population)]

# How to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# Ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]
