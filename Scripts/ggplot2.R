library(ggplot2)

Interviews_plotting <- readRDS("~/Desktop/data-carpentry-r/Data/Interviews_plotting.rds")

## ggplot(data = interviews_plotting, mapping = aes(<MAPPING>)) + <GEOM_FUNCTION>()

Interviews_plotting <- readRDS("~/Desktop/data-carpentry-r/Data/Interviews_plotting.rds")

ggplot(data = Interviews_plotting, aes(x=no_membrs, y = number_items)) +
  geom_point()


ggplot(data = Interviews_plotting, aes(x=no_membrs, y = number_items)) +
  geom_point(alpha = 0.4)

ggplot(data = Interviews_plotting, aes(x=no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4)

ggplot(data = Interviews_plotting, aes(x=no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4, color = "blue")

ggplot(data = Interviews_plotting, aes(x=no_membrs, y = number_items)) +
  geom_jitter(alpha = 0.4, aes(color = village))

ggplot(data = Interviews_plotting, aes(x = no_membrs, y = number_items,color = village)) +
  geom_jitter(alpha = 0.4) 


# Excersie

ggplot(data = Interviews_plotting, aes(x = village, y = rooms)) +
  geom_jitter(aes(color = respondent_wall_type))


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms)) +
  geom_boxplot() +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2)

ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
geom_boxplot() 

ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = rooms)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
  geom_violin() 

ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count)) +
  geom_jitter(alpha = 0.5, color = "tomato", width = 0.2) +
  geom_boxplot()


ggplot(data = Interviews_plotting, aes(x = respondent_wall_type, y = liv_count)) +
  geom_boxplot(alpha = 0) +
  geom_jitter(aes(color = memb_assoc), alpha = 0.5)



# excersie

percent_memb_assoc <- Interviews_plotting %>%
  filter(!is.na(memb_assoc)) %>%
  count(village, memb_assoc) %>%
  group_by(village) %>%
  mutate(percent = n / sum(n)) %>%
  ungroup()

ggplot(percent_memb_assoc, aes(x = village, y = percent, fill = memb_assoc)) +
  geom_bar(stat = "identity", position = "dodge")


