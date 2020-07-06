# Title     : World Trends Assignment
# Objective : Import the CSV and R data files and create a visualization based on requirements
# Created by: sid
# Created on: 6/Jul/20

#find current working folder - this should be the rcourse folder
getwd()

#set the working directory to the Data folder

setwd("Data")

#read the csv file into a frame
csvdata <- read.csv("P2-Section5-Homework-Data.csv")

#filter the data into two frames - one for 1960 and another for 2013
data1960 <- csvdata[csvdata$Year == 1960,]
data2013 <- csvdata[csvdata$Year == 2013,]


#count the number of rows
nrow(data1960)
nrow(data2013)

#additional data frames
add1960 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_1960)
add2013 <- data.frame(Code = Country_Code, Life.Exp = Life_Expectancy_At_Birth_2013)

#merge the data frames for each reporting year
merged1960 <- merge(data1960, add1960, by.x = "Country.Code", by.y = "Code")
merged2013 <- merge(data2013, add2013, by.x = "Country.Code", by.y = "Code")

#removing the Year column since it has only one value which is filtered to either 1960 or 2013
merged1960$Year <- NULL
merged2013$Year <- NULL

qplot(data = merged1960, x = Fertility.Rate, y = Life.Exp, colour = Region, size = I(5), alpha = I(0.5), main = "1960 -> Life Expectancy / Fertility Rate")

qplot(data = merged2013, x = Fertility.Rate, y = Life.Exp, colour = Region, size = I(5), alpha = I(0.5), main = "2013 -> Life Expectancy / Fertility Rate")