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

# excercise

interviews_100 <- interviews[100,]
nrow <- (interviews)
tail(as.data.frame(interviews_100))
inteviews_last <- tail(as.data.frame(interviews_100))
nrow(inteviews_last)                   
interviews_last <- tail(interviews, 1)


# Factors

floor_types <- factor(c("earth", "cement", "cement","earth"))
levels(floor_types)
nlevels(floor_types)       

## Reordering
floor_types <- factor(c("earth", "cement", "cement","earth"), levels=c("earth","cement"))

levels(floor_types)[2] <- "brick"
levels(floor_types)
floor_types

as.character(floor_types)

year_fct <- factor(c(1990, 1983, 1977, 1998, 1990))

as.numeric(year_fct)

#to avoid this 

as.character(year_fct)
as.numeric(as.character(year_fct))

levels(year_fct)[year_fct]
as.numeric(levels(year_fct))[year_fct]

table(year_nmb)
table(year_fct)
summary(year_fct)           


affect_conflicts <- interviews$affect_conflicts

affect_conflicts <- as.factor(affect_conflicts) 

plot(affect_conflicts)

#to avoid missing data
affect_conflicts <- interviews$affect_conflicts
affect_conflicts [is.na(affect_conflicts)] <- "undetermined"
affect_conflicts <- as.factor(affect_conflicts)
plot(affect_conflicts)


