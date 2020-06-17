# Title     : Learning advanced vector ops
# Objective : practice looping and other ops with vectors
# Created by: sid
# Created on: 16/Jun/20

var_x <- rnorm(5)

intLoopCounter <- 1

print("Start -->")
for (i in var_x) {
  print(i)
}
print("<-- End ")

for (intLoopCounter in 1:5) {
  print(var_x[intLoopCounter])
}

#Vectorization and De-Vectorization
N <- 10000000
a <- rnorm(N)
b <- rnorm(N)

#Vectorized approach - this is much faster!

c <- a * b

#de-vectorized approach

#creating an empty vector by allocating memory for 100 elements -- do not use this!
d <- rep(NA, N)

for (i in 1:N) {
  d[i] <- a[i] * b[i]
}
