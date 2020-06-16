# Title     : Accessing elements of a vector
# Objective : Using [] to retrieve the element
# Created by: sid
# Created on: 16/Jun/20

dblVector <- c(1, 123, 234, 345)
seqVector <- seq(201, 250, 2)
charVector1 <- rep("Hello", 3)
charVector2 <- c("a", "b", "c", "d", "e", "f")

dblVector[1]
seqVector[2]
charVector1[3]
charVector2[5]

#getting access to all letters except the first one
dblVector[-1]

#getting access to all letters except the third one
dblVector[-3]

#accessing multiple elements of a vector
seqVector[2:4]

#filtering vector into another variable
FilteredVector <- seqVector[2:7]
FilteredVector
FilteredVector <- seqVector[c(-2, -4)]
FilteredVector
-3:-5
charVector2[-3:-5]
charVector2[c(1, 2, 4)]