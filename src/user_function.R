# Title     : User functions
# Objective : Learn how to create your own functions
# Created by: sid
# Created on: 19/Jun/20

#create a function and add parameters

myplot <- function(dataset, rows = 1:10) {
  Data <- dataset[rows, , drop = F]
  matplot(t(Data), , "b", pch = 15:18, col = c(1:4, 6))
  legend("bottomleft", "bottomleft", inset = 0.01, legend = Players[rows], col = c(1:4, 6), pch = 15:18, horiz = F)

}

myplot(MinutesPlayed / Games, 3)