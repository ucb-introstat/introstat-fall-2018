
library(dplyr)
library(ggplot2)

dat <- read.csv('../../data/nba_players.csv')
dat$salary <- dat$salary / 1000000

# points anda salary by team
by_team <- dat %>% 
  group_by(team) %>%
  summarise(
    avg_pts = mean(points, na.rm = TRUE),
    avg_sal = mean(salary, na.rm = TRUE),
    med_sal = median(salary, na.rm = TRUE))

by_team


# scatterplots
ggplot(data = by_team, aes(x = avg_pts, y = avg_sal)) +
  geom_point() +
  geom_text(aes(label = team),alpha = 0.8)


ggplot(data = by_team, aes(x = avg_pts, y = med_sal)) +
  geom_point() +
  geom_text(aes(label = team),alpha = 0.8)
