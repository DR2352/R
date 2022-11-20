library(dplyr)
library(ggplot2)
airquality %>% 
  group_by(Day) %>% 
  summarise(mean_wind = mean(Wind)) %>% 
  ggplot() + 
  geom_area(aes(x = Day, y = mean_wind)) + 
  labs(title = "Area Chart of Average Wind per Day",
       subtitle = "using airquality data",
       y = "Mean Wind")