# Title     : Learning more about R vars
# Objective : Logical vars
# Created by: sid
# Created on: 14/Jun/20

#True can be denoted as T
#False can be denoted as F
# ==
# !=
# <
# >
# <=
# >=
# & AND operator
# !  NOT Operator
# | OR Operator
# isTRUE() - validates if the variable == T

#T
4 < 5
#F
4 > 5
#F
4 == 5
#T
result <- 4 != 5
typeof(result)

inverted_result <- !(result)

result | inverted_result

result & inverted_result

isTRUE(inverted_result == F)