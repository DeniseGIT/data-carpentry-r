library(dplyr)
library(tidyr)

interviews <- read_csv("data/SAFI_clean.csv", na ="NULL")

select(interviews, village, no_membrs, years_liv) #select cols

filter(interviews, village == "God") # select rows
filter(interviews, village == "God" , no_membrs>6)

select(interviews, village, no_membrs, years_liv)
god_data <- filter(select_cols, village == "God", no_membrs >6 ) 

interviews %>%
  select(village, no_membrs, year_liv) %>%
  
  # excercise
  
  interviews %>%
  filter(memb_assoc == "yes") %>%
  select(affect_conflicts, liv_count, no_meals)
  filter(village == "God", no_membrs >6)
  
  
  interviews_ppl_room <- interviews %>%
    filter(memb_assoc == "yes") %>%
    mutate(people_per_room = no_membrs / rooms)
  
view(interviews_ppl_room) 

# exercise

interviews_total_meals <- interviews %>%
  mutate(total_meals = no_membrs * no_meals) %>%
  filter(total_meals > 20) %>%
  select(village, total_meals)

view(interviews_total_meals)
interviews_total_meals

interviews %>%
  group_by(village) %>%
  summarize(mean_no_membrs = mean(no_membrs))

interviews %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs))

# eliminate missing data or NA's
interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs))

interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs),
    min_membrs = min(no_membrs))

#arrange in smallest to largest

interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs)) %>%
arrange(min_membrs)

# change to larges to smallest
interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs)) %>%
  arrange(desc(min_membrs))

# counting

interviews %>% count(village) # this counts but doesn't srt by size 
  
interviews %>% count(village, sort=TRUE) # counts largest to smallest

# excersise
interviews %>%
  filter(!is.na(memb_assoc)) %>%
  group_by(village, memb_assoc) %>%
  summarize(mean_no_membrs = mean(no_membrs),
            min_membrs = min(no_membrs), max_membrs = max(no_membrs),
n = n())

# spreading out the data
# add another col to the dta set
interviews_spread <- interviews %>%
  mutate(wall_type_logical = TRUE) %>%
  spread(key=respondent_wall_type, value = wall_type_logical, fill = FALSE)

view(interviews_spread)

# gather data

interviews_gather <- interviews %>%
gather(key = "respondant_wall_type" , value = "wall_type_logical" , 
       burntbricks:sunbricks)  


