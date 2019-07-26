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

