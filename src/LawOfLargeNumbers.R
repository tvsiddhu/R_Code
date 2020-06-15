# Title     : Learning Law of Large Numbers using R
# Objective : Creating a script to test this law
# Created by: sid
# Created on: 15/Jun/20

#1. create a random variable and reset it during the loop
#2. count number of times the value of the random variable is between 1 and -1
#3. divide step 3 by total number of tries
#4. E(X) = 68.2%
#5. Mean(Xn) -> E(X)

intLoopCounter <- 1
intMaxLoopCounter <- 10000
dblNumberInScope <- 0.0
dblExpectedValue <- 68.2
dblMeanValue <- 0.0

for (dblNumberInScope in rnorm(intMaxLoopCounter)) {

  if (dblNumberInScope < 1 & dblNumberInScope > -1) {
    intLoopCounter <- intLoopCounter + 1
  }
}

dblMeanValue <- (intLoopCounter / intMaxLoopCounter) * 100
print(dblMeanValue)