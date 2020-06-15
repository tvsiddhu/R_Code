# Title     : Learning Vectors
# Objective : Creating Vectors
# Created by: sid
# Created on: 16/Jun/20

#double vector using the combine or "c" function
MyFirstVector <- c(3, 45, 56, 67, 78)
print(MyFirstVector)
paste("Type of vector:", typeof(MyFirstVector))
paste("Is it a double:", is.double(MyFirstVector))
paste("Is it numeric:", is.numeric(MyFirstVector))
paste("Is it an int:", is.integer(MyFirstVector))

#integer vector
IntVectors <- c(1L, 23L, 12L, 33L)
print(IntVectors)
paste("Type of vector:", typeof(IntVectors))
paste("Is it a double:", is.double(IntVectors))
paste("Is it numeric:", is.numeric(IntVectors))
paste("Is it an int:", is.integer(IntVectors))


#character vector

CharVectors <- c("a", "123", "04-04-1944")
print(CharVectors)
paste("Type of vector:", typeof(CharVectors))
paste("Is it a character:", is.character(CharVectors))
paste("Is it numeric:", is.numeric(CharVectors))
paste("Is it an int:", is.integer(CharVectors))


#sequence - seq() or ":". You can use step with seq but not with ":"
SequenceVector1 <- seq(1, 15, 2)
SequenceVector2 <- 1:15

print(SequenceVector1)
print(SequenceVector2)


#replicate
ReplicateVector <- rep(3, 50)
print(ReplicateVector)

#replicating vectors

BaseVector <- c(80, 20)

ReplicatedBasedVector <- rep(BaseVector, 15)
print(ReplicatedBasedVector)