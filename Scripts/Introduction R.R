# Load required packages
# install.packages("tidyverse")
library(tidyverse)

print("hello, world")

area_hectares <-1 # land area in hectares 

area_hectares

1
2.47 * area_hectares # convert to acres
area_acres

length <- 1 # length in metres
width <- 10 # width in metres
area <- length * width
area

# writing functions
b <- sqrt(a) # b will be the square root of a

round(3.14159, digits = 2)

no_members <- c(3, 7, 10, 6) # c is for combining numbers into a vector
length(no_members)

str(no_members)

rooms <- c(2,1,1,NA,4)
mean(rooms)
max(rooms)
mean(rooms, na.rm = TRUE)
!is.na(rooms)
rooms[!is.na(rooms)]