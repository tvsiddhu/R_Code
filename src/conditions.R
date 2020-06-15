# Title     : conditional statement execution
# Objective : learning if and other conditional statements
# Created by: sid
# Created on: 14/Jun/20

#resetting the variable value
 rm(random_variable)

#creating the random variable
random_variable <- rnorm(1)


if (random_variable < 0) {
  print(random_variable)
  print("<<-- this  variable is less than zero")
} else if (random_variable > 0) {
  print(random_variable)
  print("<<-- this  variable is greater than zero")
} else {
  print(random_variable)
  print("<<-- this  variable is equal than zero")
}


