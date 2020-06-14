# Title     : iterator functions
# Objective : Learning how to use R loops
# Created by: sid
# Created on: 14/Jun/20

intWhileCounter <- 1
charBegin_Message <- "Hello there for the "
charEnd_Message <- "time"

while (intWhileCounter <= 10) {
  charOutput <- paste(charBegin_Message, intWhileCounter)
  print(paste(charOutput, charEnd_Message))
  intWhileCounter <- intWhileCounter + 1
}

for (intForCounter in 1:10) {
  charOutput <- paste(charBegin_Message, "<<", intForCounter)
  print(paste(charOutput, ">>", charEnd_Message))
}