<h1>Trending Daily Income</h1>

### Date:
August 2025

### Source:
[FREE DATA FROM WORLD BANK VIA GAPMINDER.ORG, CC-BY LICENSE](https://www.gapminder.org/data/)

[Gapminder Mean Income - Dataset](http://gapm.io/dmincpcap_cppp)

### Background/Context:
I've always been fascinated with human progress, Gapminder has made it much easier to track. I downloaded a dataset of average income per day with countries and years.

### Objective:
Create a line graph that shows the trending timeline of daily income for a particular country across the entire course of recorded history.

### Packages/Libraries used:
ggplot2, readr, dplyr, tidyverse, forcats using RStudio


<h2>Script Output:</h2>

First, I created a filter to only take data before 2030 to avoid showing the data that has been projected for future decades. Then I created a line graph using geom_line in ggplot, added color fills, and added captions for context. 
<br />

<p align="left">
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20Average%20Daily%20income%20China%20code.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20daily%20income%20China.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
This chart shows how China's economy and wealth per adult has skyrocketed in the past two or three decades. China went from being a relatively poor country to being one of the most dominant economies in the world in practically one generation.
<br />
<br />
Then I changed the y axis from China to a few other selected countries to get an equivalent for those countries to see if there were any similar outputs.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20daily%20income%20Egypt.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />

---

<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20daily%20income%20Guatemala.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
<br />
Although y axis scales are different, and each country has seen its ups and downs over time, each country has seen significant growth over the past few decades.
<br />
<br />
Let's plot one more country just to confirm this wasn't a fluke.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20daily%20income%20USA.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
So there you have it, despite all the economic challenges people face in each of these countries, people are still making more per day than they used to.
<br />
<br />
<img src="https://github.com/jameszil/pictures/blob/main/R/YoY%20daily%20income%20Venezuela.png?raw=true" height="70%" width="70%" alt="Query Steps"/>
<br />
Let me be clear, I was drawing my conclusions based on the data I had pulled to make a point. The conclusions I made previously about all people making more money than they used to is not the case with every country. Although it is less common, some people have had a significant decline in daily income as well, for example Venezuela. Even outliers with declining daily income like Venezuela however, still saw a massive rise in income at one point in their history before an eventual economic collapse. Let's hope that as history continues, over time the general trend of the majority of countries prevails for all those that may be facing challenges today.
<br />
<br />

See my [Gapminder SQL Query](https://github.com/jameszil/SQL/tree/main/gapminder_query) where I delve further into this dataset.
