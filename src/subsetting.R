# Title     : Subsetting Data
# Objective : Learning how to subset large data
# Created by: sid
# Created on: 19/Jun/20

x <- c("a", "b", "c", "d", "e")

x[c(1, 5)]
x[1]

Games[1:3, 6:10]
Games[c(1, 10),]
Games[, c("2008", "2009")]

#this creates a vector and not a matrix <-- something to be really careful about..
Games[1, 5]
is.matrix(Games[1, 5]) #<--- this will return as false since this will really return a vector

#to force returning a matrix, use drop
Games[1, 5, drop = F]

is.matrix(Games[1, 5, drop = F]) # <-- this will return true

Games[1,] #<- this will return a vector
Games[1, , drop = F] #<-- this will return a matrix