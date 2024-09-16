# Project Quality of life by country from 2014 to 2023

### Project Overview
This data analysis project aims to provide the quality of life in relation of different index from 2014 to 2023 by country. By analyzing the different index we want to compare them and the countries over the years. 

### Datasets
We found the data of quality of life index by country on the website [Numbeo](https://www.numbeo.com/quality-of-life/rankings_by_country.jsp?title=2023).

See the following link to have more information about the data: [Informations](https://www.numbeo.com/quality-of-life/indices_explained.jsp)

<img width="454" alt="image" src="https://github.com/user-attachments/assets/0593e1b7-2653-40ba-a122-af334d059360">

### Tools
- Python - Webscrapping
- MariaDB on [sqliteonline](https://sqliteonline.com/)
- Tableau - Visualizations

### Webscrapping
We executed a Python’s script to webscrapping the page year by year (see the [Notebook](https://github.com/picardtristan/Quality_of_life/blob/main/Webscrapping%20numbeo%20quality%20of%20life.ipynb)). It permits us to have one csv file for each year.

### Exploratory Data Analysis and data cleaning
For the EDA we decided to use MariaDB on sqliteonline. See the code in the following link: [SQL script](https://github.com/picardtristan/Quality_of_life/blob/main/Project%20quality%20of%20life%2010%20years.sql)

Before the EDA wenote that the number of countries by year is not the same for each year. We check the number of countries which appears in all 10 tables. We chose to keep all countries of 2023 and add each other year. So we count again the total of countries, the total is 54 countries.


### Data visualization
For the vizualisation we decided to build a dashboard on [Tableau](https://public.tableau.com/app/profile/tristan.picard/viz/Qualityoflifefrom2014to2023/Story1)

### Conclusions
To conclude for EDA about Attribute with the most impact of the quality of life we can say that:
- In 2014 the cost of living was higher than purchasing power
-	Of course, the main attribute is the purchasing power that determinate a good or bad quality of life index
-	The cost of living has also a strong impact
-	Moreover with the bottom 10 we see that the property price to income ratio has a strong impact of the bad quality of life 
-	And a low climate index leads to a low quality of life index





