# Title     : R Functions
# Objective : Learning functions
# Created by: sid
# Created on: 17/Jun/20

#rnorm, c, seq, rep, rm, print, is.numeric, is.boolean, is.integer, is.double, is.character, typeof, sqrt, paste

#along.with allows creation of sequences based on the length of another vector
x <- c(1, 2, 3, 4, 5)
seq(1, 20, along.with = x)

#replicate function using 1:20 for times gives the result 1:20, 1:20,...20 times
rep(1:20, 10)
#whereas replicate function with "each" parameter will give the result 1 x 20 times, 2 x 20 times,...20x20 times
rep(1:20, each = 10)

#rep also can take a vector as parameter
rep(x, 5)

#you can pass a vector as a parameter for sqrt and then use save the sqrt values to another vector
a <- seq(1, 20, along.with = x)
sqrt(a)
b <- sqrt(a)