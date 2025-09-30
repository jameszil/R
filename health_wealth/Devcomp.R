library(ggplot2)
library(readr)
Devcomp <- read_csv("***INSERT FILE PATH HERE***/Devcomp.csv")
library(dplyr)

# Inequality vs Violence---------------------------------

ggplot(data=Devcomp,aes(x=Gini,y=HomicideRate)) + geom_point(aes(color=Region))

ggplot(data=Devcomp,aes(x=Gini,y=HomicideRate)) + geom_point(aes(color=Subregion)) +
  geom_smooth(mapping = aes(x = Gini, y = HomicideRate)) +
  labs(title="Inequality vs Violence 2022", subtitle = "By Subregion", caption = "Data collected from CIA and UNODC")

ggplot(data=Devcomp,aes(x=Gini,y=HomicideRate)) + geom_point(aes(color=DevelopmentGroup)) +
  geom_smooth(mapping = aes(x = Gini, y = HomicideRate)) +
  labs(title="Inequality vs Violence 2022", subtitle = "By Development Group", caption = "Data collected from CIA and UNODC")

# sources: 
# https://www.cia.gov/the-world-factbook/field/gini-index-coefficient-distribution-of-family-income/country-comparison
# https://dataunodc.un.org/dp-intentional-homicide-victims
# https://en.wikipedia.org/wiki/List_of_countries_by_intentional_homicide_rate

# Median vs Mean Wealth)---------------------------------

ggplot(data=Devcomp,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

ggplot(data=Devcomp,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Subregion)) +
  geom_smooth(mapping = aes(x = MedianWealth, y = MeanWealth)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  labs(title="Median vs Mean Wealth per Adult 2022", subtitle = "By Subregion",
       caption = "Data collected from Credit Suisse Global Wealth Databook 2022")

ggplot(data=Devcomp,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=DevelopmentGroup)) +
  geom_smooth(mapping = aes(x = MedianWealth, y = MeanWealth)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  labs(title="Median vs Mean Wealth per Adult 2022", subtitle = "By Development Group",
       caption = "Data collected from Credit Suisse Global Wealth Databook 2022")

# Development Ranges
ldc <- filter(Devcomp, DevelopmentGroup == 'LOW DEVELOPMENT')
View(ldc)
ggplot(data = ldc,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

nohigh <- filter(Devcomp, DevelopmentGroup != 'VERY HIGH DEVELOPMENT')
View(nohigh)
ggplot(data = nohigh,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

lowmed <- filter(Devcomp, MedianWealth < 40000)
View(lowmed)
ggplot(data = lowmed,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

lowmean <- filter(Devcomp, MeanWealth < 40000)
View(lowmean)
ggplot(data = lowmean,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
  scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

require(gridExtra)
plot1 <- qplot(1)
plot2 <- qplot(1)
grid.arrange(plot1, plot2, ncol=2)+
  grid.arrange(ggplot(data = lowmean,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
                 scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
                 scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)), ggplot(data = lowmed,aes(x=MedianWealth,y=MeanWealth)) + geom_point(aes(color=Region)) +
                 scale_x_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
                 scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)), ncol=1)

# sources:
# https://www.credit-suisse.com/about-us-news/en/articles/news-and-expertise/credit-suisse-global-wealth-report-2022-fast-wealth-growth-in-times-of-uncertainty-202209.html
# https://en.wikipedia.org/wiki/List_of_countries_by_wealth_per_adult

# Development (HDI) vs Economy (GDP PPP)---------------------------------

library(scales)
ggplot(data=Devcomp,aes(x=HDI,y=GDPPPP)) + geom_point(aes(color=Region)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 5))

ggplot(data=Devcomp,aes(x=HDI,y=GDPPPP)) + geom_point(aes(color=Subregion)) +
  geom_smooth(mapping = aes(x =HDI, y =GDPPPP)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 5)) +
  labs(title="Human Development vs Economy 2022", subtitle = "By Subregion",
       caption = "Data collected from UNDP and IMF")

ggplot(data=Devcomp,aes(x=HDI,y=GDPPPP)) + geom_point(aes(color=DevelopmentGroup)) +
  geom_smooth(mapping = aes(x = HDI, y = GDPPPP)) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3)) +
  scale_x_continuous(breaks = scales::pretty_breaks(n = 5)) +
  labs(title="Human Development vs Economy 2022", subtitle = "By Development Group",
       caption = "Data collected from UNDP and IMF")

ggplot(data=Devcomp,aes(x=HDI,y=GDPPPP)) + geom_point(aes(color=Subregion))+
  facet_wrap(~Subregion) +
  scale_y_continuous(labels = label_number(suffix = " K", scale = 1e-3))

#sources:
# https://hdr.undp.org/data-center/human-development-index#/indicies/HDI
# https://hdr.undp.org/system/files/documents/global-report-document/hdr2021-22pdf_1.pdf
# https://en.wikipedia.org/wiki/List_of_countries_by_Human_Development_Index
# https://en.wikipedia.org/wiki/Human_Development_Index
# https://www.imf.org/en/Publications/WEO/weo-database/2022/October/weo-report?c=512,914,612,171,614,311,213,911,314,193,122,912,313,419,513,316,913,124,339,638,514,218,963,616,223,516,918,748,618,624,522,622,156,626,628,228,924,233,632,636,634,238,662,960,423,935,128,611,321,243,248,469,253,642,643,939,734,644,819,172,132,646,648,915,134,652,174,328,258,656,654,336,263,268,532,944,176,534,536,429,433,178,436,136,343,158,439,916,664,826,542,967,443,917,544,941,446,666,668,672,946,137,546,674,676,548,556,678,181,867,682,684,273,868,921,948,943,686,688,518,728,836,558,138,196,278,692,694,962,142,449,564,565,283,853,288,293,566,964,182,359,453,968,922,714,862,135,716,456,722,942,718,724,576,936,961,813,726,199,733,184,524,361,362,364,732,366,144,146,463,528,923,738,578,537,742,866,369,744,186,925,869,746,926,466,112,111,298,927,846,299,582,487,474,754,698,&s=PPPPC,&sy=2020&ey=2027&ssm=0&scsm=1&scc=0&ssd=1&ssc=0&sic=0&sort=country&ds=.&br=1
# https://www.imf.org/en/Publications/WEO/weo-database/2022/October/weo-report?a=1&c=001,998,&s=NGDPD,PPPGDP,PPPPC,PPPSH,&sy=2020&ey=2027&ssm=0&scsm=1&scc=0&ssd=1&ssc=0&sic=0&sort=country&ds=.&br=1
# https://en.wikipedia.org/wiki/List_of_countries_by_GDP_(PPP)_per_capita
