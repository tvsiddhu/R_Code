# Title     : TODO
# Objective : TODO
# Created by: sid
# Created on: 14/Jun/20

mydata <- read.csv(file.choose())

install.packages("ggplot2")

ggplot(data = mydata[mydata$carat<2.5,], aes(x = carat, y = price, colour = clarity)) +
  geom_point(alpha = 0.1) +
  geom_smooth()
