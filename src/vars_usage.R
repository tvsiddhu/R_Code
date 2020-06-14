# Title     : Using Variables
# Objective : Learn how to use R Variables
# Created by: sid
# Created on: 14/Jun/20


#basic assignment of output of 2 variables into another
var_a <- 10
var_b <-20
var_c <- var_a + var_b

  #print an object by just entering the object name
  var_c

#variables to show a basic mathematical operation
var1 <- 2.5
var2 <- 4
var1_div_var2 <- var1 / var2
squared_answer <- sqrt(var1_div_var2)
squared_answer

#variables to show charachter manipulation
message <- "Hello"
user_name <- "Sid"
greeting <- paste(message, user_name)
greeting
