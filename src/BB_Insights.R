# Title     : Basketball Insights
# Objective : Use previous knowledge to slice/dice the data and visualize it
# Created by: sid
# Created on: 19/Jun/20

#Salary

myplot(Salary)
myplot(Salary / Games)
myplot(Salary / FieldGoals)

#In-Game Metrics
myplot(MinutesPlayed)
myplot(Points)

#In-Game metrics normalized
myplot(FieldGoals / Games)
myplot(FieldGoals / FieldGoalAttempts)
myplot(FieldGoalAttempts / Games)
myplot(Points / Games)

#Interesting Observation
myplot(MinutesPlayed / Games)
myplot(Games)

#Time is valuable
myplot(FieldGoals / MinutesPlayed)

#Player Style
myplot(Points / FieldGoals)