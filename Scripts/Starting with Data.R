library(tidyverse)

interviews <- read_csv("data/SAFI_clean.csv", na="NULL")

view(interviews) # Opens new tab with data set out in a table view like xls

dim(interviews) # how big is my data frame, gives number of rows and cols

nrow(interviews) # rows
ncol(interviews) # columns 

dim(interviews)[1] # rows also
dim(interviews)[-2] 

dim(interviews)[1] == nrow(interviews)

interviews
head(as.data.frame(interviews)) # gives top of data
tail(as.data.frame(interviews)) # gives bottom of data

names(interviews) # gives names of cols
str(interviews) # gives more info about the col
summary(interviews) # gives some stats of each col

# subsets for data frames

interviews[1,1] # gives value in row 1 col 1

interviews[1,6] # gives value in row 1 col 6

interviews[,1] # gives value in all rows and col 1
interviews[1] # same as above
interviews[1, ]


interviews[1:3]

1:3

interviews[1:3, 7]

interviews[3,] # gives you all of row 3

interviews[1:6, ]
interviews[, -1] # removes 1st col
interviews
interviews_no_id <- interviews[, -1] # removes 1st col permanently