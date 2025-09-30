
library(readr)
mincpcap_cppp <- read_csv("***INSERT FILE PATH HERE***/mincpcap_cppp.csv")
View(mincpcap_cppp)

library(readr)
mincpcap_cppp_country <- read_csv("***INSERT FILE PATH HERE***/mincpcap_cppp country.csv")
View(mincpcap_cppp_country)

library(ggplot2)
library(tidyverse)
library(forcats)
library(dplyr)

str(mincpcap_cppp)
str(mincpcap_cppp_country)

filtered_data <- mincpcap_cppp_country%>%
  filter(`Year` < 2030)

ggplot(filtered_data, aes(x = Year, y = China)) +
  geom_area(aes(group = 1), fill = "lightblue", alpha = 0.5) +
  geom_line(aes(group = 1), color = "blue", linewidth = 0.5) +
  labs(title = "Average daily income ($/person/day, inflation & price adjusted)",
       subtitle = "China by Year", caption = 
         "source: Gapminder
       https://www.gapminder.org/data/
       http://gapm.io/dmincpcap_cppp",
       x = "Year", 
       y = "Avg Income per Day") +
  theme_minimal()


ggplot(filtered_data, aes(x = Year, y = USA)) +
  geom_area(aes(group = 1), fill = "lightblue", alpha = 0.5) +  # Fill color matches the line color
  geom_line(aes(group = 1), color = "blue", linewidth = 0.5) +  # Connect points with a line
  labs(title = "Average daily income ($/person/day, inflation & price adjusted)",
       subtitle = "United States by Year", caption = "source: Gapminder
       https://www.gapminder.org/data/
  http://gapm.io/dmincpcap_cppp",
       x = "Year", 
       y = "Avg Income per Day") +
  theme_minimal()


