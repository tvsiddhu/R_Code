# Title     : Learning Matrices
# Objective : Complete Basketball trends project
# Created by: sid
# Created on: 18/Jun/20

#years, gp - games played, minutes per game (mpg), field goals(FG%), Points per game (PPG)

#uses s4-BasketballData.R file

#starting with creating a matrix using matrix function
my.data <- 1:20

#ensure rows * col = length of vector, default population by cols
matrix_A <- matrix(my.data, 4, 5)

#forcing matrix creation using rows
matrix_B <- matrix(my.data, 4, 5, T)

#creatiing a matrix using the rbind function. matrix enforces all data types to be the same hence
# even the #s below are of type char

vector_r1 <- c("I", "am", "happy")
vector_r2 <- c("What", "a", "day")
vector_r3 <- c(1, 2, 3)

matrix_rbind_r1r2r3 <- rbind(vector_r1, vector_r2, vector_r3)

vector_c1 <- 1:5
vector_c2 <- -1:-5

matrix_cbind_r1r2r3 <- cbind(vector_c1, vector_c2)

