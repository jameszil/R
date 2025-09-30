
library(ggplot2)
library(readr)
library(dplyr)
hw <- read_csv("***INSERT FILE PATH HERE***/healthandwealth.csv")
View(hw)

ggplot(data=hw,aes(x=Economy,y=Health)) + geom_point(aes(color=Region))

ggplot(data=hw) + 
  geom_point(mapping = aes(x = Economy, y = Health,color=Region))

ggplot(data=hw) + geom_smooth(mapping = aes(x = Economy, y = Health))

ggplot(data=hw,aes(x=Economy,y=Health)) + geom_point(aes(color=Region)) +
  geom_smooth(mapping = aes(x = Economy, y = Health)) +
  labs(title="Health vs Wealth", subtitle = "By region", caption = "data collected from The World Happiness Report 2017")

ggplot(data=hw,aes(x=Economy,y=Health)) + geom_point(aes(color=Region))+
  facet_wrap(~Region)

ggplot(data=hw) + geom_smooth(mapping = aes(x = Economy, y = Health))+
  facet_wrap(~Region)

ssa <- filter(hw, Region == 'Sub-Saharan Africa')
View(ssa)
ggplot(data = ssa) +
  geom_point(mapping = aes(x = Economy, y = Health))

