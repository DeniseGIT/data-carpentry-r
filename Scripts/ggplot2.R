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