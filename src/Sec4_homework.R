# Title     : Section 4 Homework
# Objective : Identifying Basketball Free Throws
# Created by: sid
# Created on: 19/Jun/20

#create 3 plots to show:
#Free Throw Attempts per game
#Accuracy of Free Throws
#Player playing style (2 vs 3 point preference) excluding Free Throws (which are worth 1 point)
#Data is available as vectors and need to be converted into 2 matrices for analysis


#Matrix 1 - FreeThrowAttempts
FreeThrowAttempts <- rbind(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
rm(KobeBryant_FTA, JoeJohnson_FTA, LeBronJames_FTA, CarmeloAnthony_FTA, DwightHoward_FTA, ChrisBosh_FTA, ChrisPaul_FTA, KevinDurant_FTA, DerrickRose_FTA, DwayneWade_FTA)
colnames(FreeThrowAttempts) <- Seasons
rownames(FreeThrowAttempts) <- Players

#Matrix 2 - FreeThrowAttempts
FreeThrows <- rbind(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)
rm(KobeBryant_FT, JoeJohnson_FT, LeBronJames_FT, CarmeloAnthony_FT, DwightHoward_FT, ChrisBosh_FT, ChrisPaul_FT, KevinDurant_FT, DerrickRose_FT, DwayneWade_FT)

colnames(FreeThrows) <- Seasons
rownames(FreeThrows) <- Players

#Free Throw Attempts per game
myplot(FreeThrowAttempts / Games)

#Accuracy of Free Throws
myplot(FreeThrows / FreeThrowAttempts)

#Player playing style (2 vs 3 point preference)
myplot((Points - FreeThrows) / FieldGoals)