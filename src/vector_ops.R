# Title     : Vector Operations
# Objective : Learning how to work with multiple operators
# Created by: sid
# Created on: 16/Jun/20

# sample vectors
dblVector1 <- c(1, 2, 3, 4, 5, 6, 7)
dblVector2 <- c(10, 20, 30, 40, 50, 60, 70)

#Adding
addVector_result <- dblVector1 + dblVector2
addVector_result

#subtracting
subVector_result <- dblVector1 - dblVector2
subVector_result

#multiplying
multiplyVector_result <- dblVector1 * dblVector2
multiplyVector_result

#dividing
divVector_result <- dblVector2 / dblVector1
divVector_result

#comparing vectors 1 and 2
isTRUE(dblVector1 > dblVector2)
isTRUE(dblVector2 > dblVector1)
isTRUE(dblVector2 == dblVector1)
isTRUE(dblVector2 != dblVector1)

dblVector1 > dblVector2
dblVector2 > dblVector1
dblVector1 == dblVector2