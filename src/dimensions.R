# Title     : Naming Dimensions
# Objective : Learning how to access specific data elements in a vector using named dimensions
# Created by: sid
# Created on: 19/Jun/20

#Named Vectors

Charlie <- 1:5

names(Charlie) <- c("a", "b", "c", "d", "e")

#clearning the named vectors

names(Charlie) <- NULL

#Naming Dimensions

temp.vec <- rep(c("a", "B", "zZ"), each = 3)

Bravo <- matrix(temp.vec, 3, 3)

rownames(Bravo) <- c("How", "are", "you")
Bravo

colnames(Bravo) <- c("X", "Y", "Z")
Bravo

Bravo["are", "Y"] <- 0
Bravo

