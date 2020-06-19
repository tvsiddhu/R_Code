# Title     : Visualizing Subsets
# Objective : Learning how to visualize subsets
# Created by: sid
# Created on: 19/Jun/20

#let's get the overall dataset to see how it looks like before subsetting

matplot(MinutesPlayed, , "b", pch = 15:18, col = c(1:4, 6))
#setting legend to Players below - provides full data set
legend("bottomleft", "bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15:18, horiz = F)

#subsetting to only get Kobe's data
Data <- MinutesPlayed[1, , drop = F]
matplot(t(Data), , "b", pch = 15:18, col = c(1:4, 6))
#setting legend to Players[1] below ensures only that 1 player's values are shown in the legend
legend("bottomleft", "bottomleft", inset = 0.01, legend = Players[1], col = c(1:4, 6), pch = 15:18, horiz = F)