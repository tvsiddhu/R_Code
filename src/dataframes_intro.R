# Title     : Data Frames
# Objective : Learning dataframes based on the Demographic Analysis project brief
# Created by: sid
# Created on: 19/Jun/20


#Method #1 - manually choosing a file

#Method #2 - selecting a working directory (Preferred)

# 1st Step - get current working directory using
getwd()

# 2nd Step - set the working directory to where the data files are located
# on windows use "\\Users\\sid\DevWorkspace\\Code\\rcourse\\Data"
# on Mac use "/Users/sid/DevWorkspace/Code/rcourse/Data

setwd("/Users/sid/DevWorkspace/Code/rcourse")
getwd()

rm(stats)
stats <- read.csv("Data/P2-Demographic-Data.csv")
stats

#----------------------Exploring the data set
#display number of rows
nrow(stats)
#display number of cols
ncol(stats)
#display top n, default=6
head(stats, n = 10)
#display bottom n, default=6
tail(stats, n = 8)
#structure of data frame  -- descriptor
str(stats)
#summary
summary(stats)


#----------------------Using the $ sign

head(stats)
#using R,C
stats[3, 3]

#or using named columns
stats[3, "Birth.rate"]
#this returns the full column data for Internet.users as a vector
stats$Internet.users

#to filter on that vector we can use
stats$Internet.users[2]

#to determine the levels of the data frame for a particular column, we can use
levels(stats$Internet.users)


#----------------------Basic Data frame operations

#sub-setting / getting 1st 10 rows
stats[1:10,] # << selecting rows 1 to 10
stats[3:9,] # << selecting rows 3 to 9
stats[c(4, 100),] # << selecting the 4th and the 100th row

# check if the below is a vector or a dataframe
stats[1,] # << return the 1st row

is.vector(stats[1,]) # returns FALSE. it's not a vector.

is.data.frame(stats[1,]) # returns TRUE, it's a data frame

#selecting the first column
stats[, 1]

is.data.frame(stats[, 1]) # returns FALSE. THis means it's a vector. TO ensure that we get a dataframe, we use the drop=F flag to preserve the dimension

is.data.frame(stats[, 1, drop = F])

#mulitplying two columns together
stats$Birth.rate * stats$Internet.users # << you can also do adding/subtracting and dividing columns


#adding a column. Important to remember that values repeat
head(stats)
stats$MyCal <- stats$Birth.rate * stats$Internet.users
stats$MyCal

#removing a column
stats$MyCal <- NULL

#----------------------Filtering a data frame
head(stats)
head(stats$Internet.users)
objFilter <- stats$Internet.users < 2 #this will return a vector filled with FALSE and a few TRUE values

stats[objFilter,] # << with this statement, only those rows that have a TRUE value are displayed and others discarded

#we can also use the below statement to filter based on a specific condition
stats[stats$Internet.users < 2,]

stats[stats$Birth.rate > 40,]

#to filter based on both Internet users <2 and Birth rate > 40

stats[stats$Birth.rate > 40 & stats$Internet.users < 2,]

#finding levels of High Income group countries

stats[stats$Income.Group == "High income",]

levels(stats$Income.Group)

#Filtering out all details for Malta, we say

stats[stats$Country.Name == "Malta",]

#----------------------using QPlot

qplot(data = stats, x = Internet.users)
#use size = I(#) to control the size of the markers, color = I(#) to control the color of the markers
qplot(data = stats, x = Income.Group, y = Birth.rate, size = I(3), color = I("blue"))

#changing the graphic to a box plot
qplot(data = stats, x = Income.Group, y = Birth.rate, geom = "boxplot")

#changing the graphic to a violin chart and playing with colours
qplot(data = stats, x = Income.Group, y = Birth.rate, geom = "violin", colour = I("red"))


#----------------------Visualizing what we need
#creating a scatter plot with uniform dot size
qplot(data = stats, x = Internet.users, y = Birth.rate, size = I(3))

qplot(data = stats, x = Internet.users, y = Birth.rate, size = I(4), colour = I("red"))

#categorize by income group of the country

qplot(data = stats, x = Internet.users, y = Birth.rate, size = Birth.rate, colour = Income.Group)

#----------------------Creating data frames
# we need the country region vectors file (CountryRegionVectors.R) from the course website

mydf <- data.frame(Countries_2012_Dataset, Codes_2012_Dataset, Regions_2012_Dataset)

head(mydf)

#changing column names
colnames(mydf) <- c("Country", "Codes", "Regions")

#we can also create a data frame with custom columns straightway
rm(mydf)
mydf <- data.frame(Country = Countries_2012_Dataset, Code = Codes_2012_Dataset, Region = Regions_2012_Dataset)

head(mydf)
tail(mydf)
summary(mydf)

#----------------------Merging data frames
#x refers to stats data frame and y refers to mydf data frame
merged <- merge(stats, mydf, by.x = "Country.Code", by.y = "Code")

# this results in a new data frame with a single code column (since that's used to join the 2 data frames)
# and a duplicate column (Country.Name & Country). We can remove the duplicate Country column by setting to Null

merged$Country <- NULL

summary(merged)
str(merged)
tail(merged)