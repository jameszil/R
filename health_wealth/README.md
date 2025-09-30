<h1>Health and Wealth</h1>

### Date:
March 2022

### Source:
[World Happiness Report 2017](https://www.worldhappiness.report/ed/2017/)

### Background/Context:
In the Google Data Analytics Professional Certificate, I was introduced to R. After completing the course, I wanted to plot some data that I was interested in. I pulled an Excel output from the World Happiness Report that contains several different factors such as freedom, generosity, trust, etc. that attempt to identify the overall happiness for each country. When scanning the data, I was most interested in the health and wealth fields.

### Objective:
Create a scatterplot using R and conduct linear regression analysis seeking to find correlations utilizing ggplot2. In this project I'll be comparing the relationship between health and wealth by region and development group.

### Packages/Libraries used:
ggplot2, readr, dplyr using RStudio


<h2>Script Output:</h2>

To create a scatterplot comparing health (x) and wealth (y) by region I used aes and geom_point to define and populate the dot plots, geom_smooth to create a trending line, and I added a title, subtitle, and caption to add context to the visual.
<br />

<p align="left">
<img src="https://github.com/jameszil/pictures/blob/main/R/healthvswealth%20code.png?raw=true" height="80%" width="80%" alt="Query Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/Health%20vs%20Wealth.png?raw=true" height="80%" width="80%" alt="Query Steps"/>
<br />
<br />
As we can see from this visual the trending line moves from the bottom left to the top right of the chart which indicates there is a noticeable correlation between health and wealth. There is one dot towards the far right that skews this trend at the very end. We can see that it is a green dot that represents a country from North America. After doing further investigation, I confirmed that this outlier dot is the United States. As the US stands far away from other countries as the largest economy in the world, it does not have the best health in the world. We can see that almost all countries in Western Europe and many countries from other regions have higher levels of health while having significantly smaller economies. I also found it interesting when looking towards the bottom of the scatterplot although there was a lot of variance among countries in Sub-Saharan Africa, the general trend still follows a diagonal trajectory, which means these differences between health balance out among countries with similar economies. It is only when we reach the United States at the very end of the line that it turns to a curve, indicating a disruption from the correlated trend.
<br />
<br />
I broke this out by each region using facet_wrap when experimenting with how I wanted to populate the data in my final version. With this more broken out version we can see the individual trends for each region and the cluster of countries by region. We can see that Western Europe is very closer together whereas regions like Southeastern Asia are very spread apart across both values.  
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/healthvswealth%20facets.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/healthvswealth%20facet%20smooth.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/healthvswealth%20facet%20dots.png?raw=true" height="80%" width="80%" alt="Query Steps"/>

