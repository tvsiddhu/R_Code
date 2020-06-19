# Title     : Matplot
# Objective : Learning how to use matplot to graphically plot matrix columns
# Created by: sid
# Created on: 19/Jun/20

#plotting by season
#matplot(FieldGoals)

#to plot by playername first ensure that you transpose the values from rows to columns so
# rows are seasons and cols are player names

t(FieldGoals / Games)
matplot(FieldGoals, , "b", pch = 15:18, col = c(1:4, 6))
legend("bottomleft", "bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15:18, horiz = F)

matplot(t(FieldGoals / FieldGoalAttempts), , "b", pch = 15:18, col = c(1:4, 6))
legend("bottomleft", "bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15:18, horiz = F)

matplot(t(Points / Salary), , "b", pch = 15:18, col = c(1:4, 6))
legend("bottomleft", "bottomleft", inset = 0.01, legend = Players, col = c(1:4, 6), pch = 15:18, horiz = F)
