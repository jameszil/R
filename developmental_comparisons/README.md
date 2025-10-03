<h1>Developmental Comparisons</h1>

### Date:
November 2022

### Sources:
Inequality vs Violence

[CIA World Factbook - Gini Index coefficient](https://www.cia.gov/the-world-factbook/field/gini-index-coefficient-distribution-of-family-income/country-comparison)

[UNODC - Intentional-Homicide Victims](https://dataunodc.un.org/dp-intentional-homicide-victims)

Median vs Mean Wealth

[Credit Suisse Global Wealth Databook 2022](https://www.credit-suisse.com/about-us-news/en/articles/news-and-expertise/credit-suisse-global-wealth-report-2022-fast-wealth-growth-in-times-of-uncertainty-202209.html)


Development (HDI) vs Economy (GDP PPP)

[UNDP - Human Development Index](https://hdr.undp.org/data-center/human-development-index#/indicies/HDI)

[IMF - World Economic Outlook](https://www.imf.org/en/Publications/WEO/weo-database/2022/October/weo-report?c=512,914,612,171,614,311,213,911,314,193,122,912,313,419,513,316,913,124,339,638,514,218,963,616,223,516,918,748,618,624,522,622,156,626,628,228,924,233,632,636,634,238,662,960,423,935,128,611,321,243,248,469,253,642,643,939,734,644,819,172,132,646,648,915,134,652,174,328,258,656,654,336,263,268,532,944,176,534,536,429,433,178,436,136,343,158,439,916,664,826,542,967,443,917,544,941,446,666,668,672,946,137,546,674,676,548,556,678,181,867,682,684,273,868,921,948,943,686,688,518,728,836,558,138,196,278,692,694,962,142,449,564,565,283,853,288,293,566,964,182,359,453,968,922,714,862,135,716,456,722,942,718,724,576,936,961,813,726,199,733,184,524,361,362,364,732,366,144,146,463,528,923,738,578,537,742,866,369,744,186,925,869,746,926,466,112,111,298,927,846,299,582,487,474,754,698,&s=PPPPC,&sy=2020&ey=2027&ssm=0&scsm=1&scc=0&ssd=1&ssc=0&sic=0&sort=country&ds=.&br=1)

[IMF - World Economic Outlook](https://www.imf.org/en/Publications/WEO/weo-database/2022/October/weo-report?a=1&c=001,998,&s=NGDPD,PPPGDP,PPPPC,PPPSH,&sy=2020&ey=2027&ssm=0&scsm=1&scc=0&ssd=1&ssc=0&sic=0&sort=country&ds=.&br=1)



### Background/Context:
Continuing from the previous [Health and Wealth project](https://github.com/jameszil/R/tree/main/health_wealth), I wanted to create more scatterplots to show relationships between different sets of fields. I compiled several data sources including the UN's Human Development Report, the IMF's World Economic Outlook Database, and the CIA's World Factbook.

### Objective:
Create several different scatterplots to show how different x and y axis combinations can easily be changed to perform analysis. Conduct linear regression analysis for Inequality vs Violence, Median vs Mean Wealth, and Development (HDI) vs Economy (GDP PPP) by both Subregion and Development Group for each, seeking to discover correlations utilizing ggplot2.

### Packages/Libraries used:
ggplot2, readr, dplyr, scales using RStudio


<h2>Script Output:</h2>

#### Inequality vs Violence

Adjusting some of my original code, I created a scatterplot of inequality by using the Gini Coefficient which measures the degree of inequality in the distribution of family income in a country (x) and violence by the Homicide Rate of each country (y). I grouped this plot by Subregion, I used aes and geom_point to define and populate the dot plots, geom_smooth to create a trending line, and I added a title, subtitle, and caption to add context to the visual.
<br />

<p align="left">
<img src="https://github.com/jameszil/pictures/blob/main/R/Inequality%20vs%20Violence%20R%20ggplot2.PNG?raw=true" height="80%" width="80%" alt="Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/homicide%20vs%20gini.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
<br />
At first glance, we see that the trending line is slightly diagonal indicating a slight trend, however this would probably not be enough to make the conclusion that these two factors are entirely correlated. We see many countries across all regions with very low homicide rates regardless of inequality level, and most of the countries with largest homicide rate fall near the middle of the gini coefficient between 35-50. As the coloring of Subregion looked a little too busy, I then created a second plot grouping countries by Development Group.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/Inequality%20vs%20Violence%202022.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
<br />
This looks much nicer as we can easily see the different development groups. Interestingly enough, we are able to see that countries with Very High Development and countries with Low Development do not typically have high levels of violence or inequality. The countries with High Development and and Medium Development are most likely to have both higher levels of violence and higher levels of inequality. To be fair, this data is very scattered and there are many outliers, it would be naive to draw any major conclusions from this view. I'd like to point out here that correlation does not mean causation, however, causations are typically correlated. Given we cannot see a direct line just by looking at the dots alone, I think one insight that I can draw from this plot is that while inequality may be a factor, there may be other factors other than inequality that have a higher correlation and potentially a higher impact on driving high homicide rates and vice versa. Plots like these shift how I see things, realizing issues can be more complex than we sometimes try to make them out to be.
  
[This definitely sparked curiosity to seek further understanding.](https://github.com/jameszil/Tableau/blob/main/developmental_comparisons_qc/README.md#gun-ownership) 
In the meantime, let's plot our next dataset!

  
#### Median vs Mean Wealth
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/Devcomp%20Median%20vs%20Mean%20Wealth%20code.png?raw=true" height="70%" width="70%" alt="Steps"/>
I then created another plot looking at Median vs Mean Wealth per Adult by Country and Development Group. I had to use scale to resize the hundred thousands values enabling it to fit on the scatterplot for each axis and distribute the data evenly for both accuracy and readability.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/median%20vs%20mean%202.png?raw=true" height="70%" width="70%" alt="Steps"/>
Okay great, we can see the Very High Development group is taking up most of the space and each group seem to follow the order in a perfect order. Populating by the Subregion may prove to be a more helpful view.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/median%20vs%20mean.png?raw=true" height="70%" width="70%" alt="Steps"/>
As these are both wealth metrics, I'd expect a much stronger correlation than the previous comparison. There is a much more defined diagonal line in the first half of the the plot, however, it curves at about the mid way point after 200k median and 400k mean. There are only 6 countries that have median wealth over 200k. These countries are Hong Kong, Belgium, New Zealand, Australia, Iceland, and Luxembourg which vary significantly for mean wealth. Apart from these, given that most of the world's countries are in the first half of the data, it is safe to say these two values still have a strong correlation up until a certain point. Maybe someday this general trend will change after many other countries reach a very high amount of wealth.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/Devcomp%20filters.png?raw=true" height="70%" width="70%" alt="Steps"/>
As many countries were stacked together in the lower left quadrant of the original Median vs Mean Wealth plot, I also experimented with filters to see if I could look at only countries under a certain threshold. I wanted to seek to confirm the diagonal trend for most countries.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/median%20vs%20mean%20low%20dev.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
By filtering the median wealth down and showing only continental regions, I was able to see a broad view on a much more detailed level. From this I can see an almost direct line just by using the dots representing each country!

#### Development (HDI) vs Economy (GDP PPP)


Lastly, I plotted similar views for Development using the Human Development Index and Economy using the Gross Domestic Product Purchasing Power Parity per Capita. Again I had to adjust the scaling to best fit this graph.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/Devcomp%20HDI%20vs%20GDP.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/hdi%20vs%20gdp%202.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
As expected, the Development Groups follow each other perfectly according to the Human Development Index.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/hdi%20vs%20gdp.png?raw=true" height="70%" width="70%" alt="Steps"/>
<br />
<br />
This trend shows that bigger economies do have higher levels of development. Some countries are on different levels of development and economy, and there are a few countries with much bigger economies than the rest of the world, but the gray area in the trendline indicates that overall, countries are closely clustered together.
<br />
<br />
Countries wealth and development vary by region but are not distinguishable by region. The late Hans Rosling showed that trying to understand the world by strictly classifying it into geographic regions is not always the most insightful. My personal analysis of UN and IMF data further solidifies his point.

Here we are able to see the world is not split by development levels according to region. There are countries of every level of development in virtually every region of the world. This chart where all countries are closely joined together resembles a skittles bag. That is the world. We are a giant bag of skittles, and each bag of skittles are not separated by their individual flavors. That is to say, when we look at the first chart we see a very stark world, one where there are divisive grid lines that detach countries and regions from one another, but this graph disproves that theory. When we look at this graph we see a different picture, one that shows we may live a lot more like another person on the other side of the world than we may realize.

[See how I replicated these plots in Tableau to QC](https://github.com/jameszil/Tableau/blob/main/developmental_comparisons_qc/README.md)




