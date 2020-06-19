# Title     : Matrix Operations
# Objective : Learning matrix ops based on the BasketBall raw data
# Created by: sid
# Created on: 19/Jun/20


Games
rownames(Games)
colnames(Games)
Games["KobeBryant", "2014"]

FieldGoals

#directly divide the entire matrix with another matrix
round(FieldGoals / Games, 1)

#finding out minutes played by games
round(MinutesPlayed / Games)

#finding out the number of attempts per minutes played
round(FieldGoalAttempts / MinutesPlayed, 1)

#salary/minutes played
round(Salary / MinutesPlayed)

