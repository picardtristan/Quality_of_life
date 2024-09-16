
-- QUALITY OF LIFE

-- We use the query DESCRIBE to understand the table

DESCRIBE quality_of_life_rankings_2023

-- Start to see how the dataset looks like

SELECT *
FROM quality_of_life_rankings_2023
LIMIT 5;

-- We drop all columns "rank" on each table

ALTER TABLE quality_of_life_rankings_2023 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2022 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2021 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2020 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2019 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2018 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2017 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2016 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2015 DROP COLUMN rank;
ALTER TABLE quality_of_life_rankings_2014 DROP COLUMN rank;

-- We check if each table form each year contains the same amount of country

SELECT '2023' AS year, COUNT(country) AS nbr_country
FROM quality_of_life_rankings_2023
UNION ALL
SELECT '2022', COUNT(country)
FROM quality_of_life_rankings_2022
UNION ALL
SELECT '2021', COUNT(country)
FROM quality_of_life_rankings_2021
UNION ALL
SELECT '2020', COUNT(country)
FROM quality_of_life_rankings_2020
UNION ALL
SELECT '2019', COUNT(country)
FROM quality_of_life_rankings_2019
UNION ALL
SELECT '2018', COUNT(country)
FROM quality_of_life_rankings_2018
UNION ALL
SELECT '2017', COUNT(country)
FROM quality_of_life_rankings_2017
UNION ALL
SELECT '2016', COUNT(country)
FROM quality_of_life_rankings_2016
UNION ALL
SELECT '2015', COUNT(country)
FROM quality_of_life_rankings_2015
UNION ALL
SELECT '2014', COUNT(country)
FROM quality_of_life_rankings_2014;

-- We create a table with all 10 tables with country 2023

CREATE TABLE joined10Y_quality_of_life AS
SELECT 
    c2023.country,
    c2023.Quality_of_Life_Index AS Quality_of_Life_Index_2023, 
    c2023.Purchasing_Power_Index AS Purchasing_Power_Index_2023, 
    c2023.Safety_Index AS Safety_Index_2023, 
    c2023.Health_Care_Index AS Health_Care_Index_2023,
    c2023.Cost_of_Living_Index AS Cost_of_Living_Index_2023,
    c2023.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2023,
    c2023.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2023,
    c2023.Pollution_Index AS Pollution_Index_2023,
    c2023.Climate_Index AS Climate_Index_2023,
    
    c2022.Quality_of_Life_Index AS Quality_of_Life_Index_2022, 
    c2022.Purchasing_Power_Index AS Purchasing_Power_Index_2022, 
    c2022.Safety_Index AS Safety_Index_2022, 
    c2022.Health_Care_Index AS Health_Care_Index_2022,
    c2022.Cost_of_Living_Index AS Cost_of_Living_Index_2022,
    c2022.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2022,
    c2022.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2022,
    c2022.Pollution_Index AS Pollution_Index_2022,
    c2022.Climate_Index AS Climate_Index_2022,

    c2021.Quality_of_Life_Index AS Quality_of_Life_Index_2021, 
    c2021.Purchasing_Power_Index AS Purchasing_Power_Index_2021, 
    c2021.Safety_Index AS Safety_Index_2021, 
    c2021.Health_Care_Index AS Health_Care_Index_2021,
    c2021.Cost_of_Living_Index AS Cost_of_Living_Index_2021,
    c2021.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2021,
    c2021.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2021,
    c2021.Pollution_Index AS Pollution_Index_2021,
    c2021.Climate_Index AS Climate_Index_2021,

    c2020.Quality_of_Life_Index AS Quality_of_Life_Index_2020, 
    c2020.Purchasing_Power_Index AS Purchasing_Power_Index_2020, 
    c2020.Safety_Index AS Safety_Index_2020, 
    c2020.Health_Care_Index AS Health_Care_Index_2020,
    c2020.Cost_of_Living_Index AS Cost_of_Living_Index_2020,
    c2020.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2020,
    c2020.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2020,
    c2020.Pollution_Index AS Pollution_Index_2020,
    c2020.Climate_Index AS Climate_Index_2020,

    c2019.Quality_of_Life_Index AS Quality_of_Life_Index_2019, 
    c2019.Purchasing_Power_Index AS Purchasing_Power_Index_2019, 
    c2019.Safety_Index AS Safety_Index_2019, 
    c2019.Health_Care_Index AS Health_Care_Index_2019,
    c2019.Cost_of_Living_Index AS Cost_of_Living_Index_2019,
    c2019.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2019,
    c2019.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2019,
    c2019.Pollution_Index AS Pollution_Index_2019,
    c2019.Climate_Index AS Climate_Index_2019,

    c2018.Quality_of_Life_Index AS Quality_of_Life_Index_2018, 
    c2018.Purchasing_Power_Index AS Purchasing_Power_Index_2018, 
    c2018.Safety_Index AS Safety_Index_2018, 
    c2018.Health_Care_Index AS Health_Care_Index_2018,
    c2018.Cost_of_Living_Index AS Cost_of_Living_Index_2018,
    c2018.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2018,
    c2018.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2018,
    c2018.Pollution_Index AS Pollution_Index_2018,
    c2018.Climate_Index AS Climate_Index_2018,

    c2017.Quality_of_Life_Index AS Quality_of_Life_Index_2017, 
    c2017.Purchasing_Power_Index AS Purchasing_Power_Index_2017, 
    c2017.Safety_Index AS Safety_Index_2017, 
    c2017.Health_Care_Index AS Health_Care_Index_2017,
    c2017.Cost_of_Living_Index AS Cost_of_Living_Index_2017,
    c2017.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2017,
    c2017.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2017,
    c2017.Pollution_Index AS Pollution_Index_2017,
    c2017.Climate_Index AS Climate_Index_2017,

    c2016.Quality_of_Life_Index AS Quality_of_Life_Index_2016, 
    c2016.Purchasing_Power_Index AS Purchasing_Power_Index_2016, 
    c2016.Safety_Index AS Safety_Index_2016, 
    c2016.Health_Care_Index AS Health_Care_Index_2016,
    c2016.Cost_of_Living_Index AS Cost_of_Living_Index_2016,
    c2016.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2016,
    c2016.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2016,
    c2016.Pollution_Index AS Pollution_Index_2016,
    c2016.Climate_Index AS Climate_Index_2016,

    c2015.Quality_of_Life_Index AS Quality_of_Life_Index_2015, 
    c2015.Purchasing_Power_Index AS Purchasing_Power_Index_2015, 
    c2015.Safety_Index AS Safety_Index_2015, 
    c2015.Health_Care_Index AS Health_Care_Index_2015,
    c2015.Cost_of_Living_Index AS Cost_of_Living_Index_2015,
    c2015.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2015,
    c2015.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2015,
    c2015.Pollution_Index AS Pollution_Index_2015,
    c2015.Climate_Index AS Climate_Index_2015,

    c2014.Quality_of_Life_Index AS Quality_of_Life_Index_2014, 
    c2014.Purchasing_Power_Index AS Purchasing_Power_Index_2014, 
    c2014.Safety_Index AS Safety_Index_2014, 
    c2014.Health_Care_Index AS Health_Care_Index_2014,
    c2014.Cost_of_Living_Index AS Cost_of_Living_Index_2014,
    c2014.Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio_2014,
    c2014.Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index_2014,
    c2014.Pollution_Index AS Pollution_Index_2014,
    c2014.Climate_Index AS Climate_Index_2014
FROM
	quality_of_life_rankings_2023 AS c2023
INNER JOIN
    quality_of_life_rankings_2022 AS c2022 ON c2023.country = c2022.country
INNER JOIN
    quality_of_life_rankings_2021 AS c2021 ON c2023.country = c2021.country
INNER JOIN
    quality_of_life_rankings_2020 AS c2020 ON c2023.country = c2020.country
INNER JOIN
    quality_of_life_rankings_2019 AS c2019 ON c2023.country = c2019.country
INNER JOIN
    quality_of_life_rankings_2018 AS c2018 ON c2023.country = c2018.country
INNER JOIN
    quality_of_life_rankings_2017 AS c2017 ON c2023.country = c2017.country
INNER JOIN
    quality_of_life_rankings_2016 AS c2016 ON c2023.country = c2016.country
INNER JOIN
    quality_of_life_rankings_2015 AS c2015 ON c2023.country = c2015.country
INNER JOIN
    quality_of_life_rankings_2014 AS c2014 ON c2023.country = c2014.country;

-- Now the table joined has all the countries with data of the 10 years.
-- Then we create a table for each year to simplify the analysis without null data.

CREATE TABLE quality_of_life_2023 AS
SELECT 
    country,
    Quality_of_Life_Index_2023 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2023 AS Purchasing_Power_Index, 
    Safety_Index_2023 AS Safety_Index, 
    Health_Care_Index_2023 AS Health_Care_Index,
    Cost_of_Living_Index_2023 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2023 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2023 AS Traffic_Commute_Time_Index,
    Pollution_Index_2023 AS Pollution_Index,
    Climate_Index_2023 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2022 AS
SELECT 
    country,
    Quality_of_Life_Index_2022 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2022 AS Purchasing_Power_Index, 
    Safety_Index_2022 AS Safety_Index, 
    Health_Care_Index_2022 AS Health_Care_Index,
    Cost_of_Living_Index_2022 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2022 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2022 AS Traffic_Commute_Time_Index,
    Pollution_Index_2022 AS Pollution_Index,
    Climate_Index_2022 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2021 AS
SELECT 
    country,
    Quality_of_Life_Index_2021 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2021 AS Purchasing_Power_Index, 
    Safety_Index_2021 AS Safety_Index, 
    Health_Care_Index_2021 AS Health_Care_Index,
    Cost_of_Living_Index_2021 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2021 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2021 AS Traffic_Commute_Time_Index,
    Pollution_Index_2021 AS Pollution_Index,
    Climate_Index_2021 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2020 AS
SELECT 
    country,
    Quality_of_Life_Index_2020 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2020 AS Purchasing_Power_Index, 
    Safety_Index_2020 AS Safety_Index, 
    Health_Care_Index_2020 AS Health_Care_Index,
    Cost_of_Living_Index_2020 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2020 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2020 AS Traffic_Commute_Time_Index,
    Pollution_Index_2020 AS Pollution_Index,
    Climate_Index_2020 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2019 AS
SELECT 
    country,
    Quality_of_Life_Index_2019 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2019 AS Purchasing_Power_Index, 
    Safety_Index_2019 AS Safety_Index, 
    Health_Care_Index_2019 AS Health_Care_Index,
    Cost_of_Living_Index_2019 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2019 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2019 AS Traffic_Commute_Time_Index,
    Pollution_Index_2019 AS Pollution_Index,
    Climate_Index_2019 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2018 AS
SELECT 
    country,
    Quality_of_Life_Index_2018 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2018 AS Purchasing_Power_Index, 
    Safety_Index_2018 AS Safety_Index, 
    Health_Care_Index_2018 AS Health_Care_Index,
    Cost_of_Living_Index_2018 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2018 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2018 AS Traffic_Commute_Time_Index,
    Pollution_Index_2018 AS Pollution_Index,
    Climate_Index_2018 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2017 AS
SELECT 
    country,
    Quality_of_Life_Index_2017 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2017 AS Purchasing_Power_Index, 
    Safety_Index_2017 AS Safety_Index, 
    Health_Care_Index_2017 AS Health_Care_Index,
    Cost_of_Living_Index_2017 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2017 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2017 AS Traffic_Commute_Time_Index,
    Pollution_Index_2017 AS Pollution_Index,
    Climate_Index_2017 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2016 AS
SELECT 
    country,
    Quality_of_Life_Index_2016 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2016 AS Purchasing_Power_Index, 
    Safety_Index_2016 AS Safety_Index, 
    Health_Care_Index_2016 AS Health_Care_Index,
    Cost_of_Living_Index_2016 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2016 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2016 AS Traffic_Commute_Time_Index,
    Pollution_Index_2016 AS Pollution_Index,
    Climate_Index_2016 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2015 AS
SELECT 
    country,
    Quality_of_Life_Index_2015 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2015 AS Purchasing_Power_Index, 
    Safety_Index_2015 AS Safety_Index, 
    Health_Care_Index_2015 AS Health_Care_Index,
    Cost_of_Living_Index_2015 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2015 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2015 AS Traffic_Commute_Time_Index,
    Pollution_Index_2015 AS Pollution_Index,
    Climate_Index_2015 AS Climate_Index
FROM joined10Y_quality_of_life;

CREATE TABLE quality_of_life_2014 AS
SELECT 
    country,
    Quality_of_Life_Index_2014 AS Quality_of_Life_Index, 
    Purchasing_Power_Index_2014 AS Purchasing_Power_Index, 
    Safety_Index_2014 AS Safety_Index, 
    Health_Care_Index_2014 AS Health_Care_Index,
    Cost_of_Living_Index_2014 AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio_2014 AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index_2014 AS Traffic_Commute_Time_Index,
    Pollution_Index_2014 AS Pollution_Index,
    Climate_Index_2014 AS Climate_Index
FROM joined10Y_quality_of_life;

-- We also create a table joined with the year as columns
CREATE TABLE joined_with_year_quality_of_life AS
SELECT 
    country,
    2023 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2023

UNION ALL

SELECT 
    country,
    2022 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2022

UNION ALL

SELECT 
    country,
    2021 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2021

UNION ALL

SELECT 
    country,
    2020 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2020

UNION ALL

SELECT 
    country,
    2019 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2019

UNION ALL

SELECT 
    country,
    2018 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2018

UNION ALL

SELECT 
    country,
    2017 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2017

UNION ALL

SELECT 
    country,
    2016 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2016

UNION ALL

SELECT 
    country,
    2015 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2015

UNION ALL

SELECT 
    country,
    2014 AS Year,
    Quality_of_Life_Index AS Quality_of_Life_Index,
    Purchasing_Power_Index AS Purchasing_Power_Index,
    Safety_Index AS Safety_Index,
    Health_Care_Index AS Health_Care_Index,
    Cost_of_Living_Index AS Cost_of_Living_Index,
    Property_Price_to_Income_Ratio AS Property_Price_to_Income_Ratio,
    Traffic_Commute_Time_Index AS Traffic_Commute_Time_Index,
    Pollution_Index AS Pollution_Index,
    Climate_Index AS Climate_Index
FROM quality_of_life_2014;

-- EDA: 

-- We want to check the evolution of the quality of life. We check the difference between the first year 2014 and last year 2023.

-- Check of the comparison
SELECT 	q2023.country, 
		q2014.Quality_of_Life_Index AS QLIndex_2014, 
        q2023.Quality_of_Life_Index AS QLIndex_2023
FROM quality_of_life_2014 AS q2014
LEFT JOIN quality_of_life_2023 AS q2023
ON q2014.country = q2023.country
LIMIT 5;

-- Let's see the top 10 of the evolution
SELECT 	q2023.country, 
		q2014.Quality_of_Life_Index AS QLIndex_2014, 
        q2023.Quality_of_Life_Index AS QLIndex_2023,
        ROUND(((q2023.Quality_of_Life_Index - q2014.Quality_of_Life_Index)/q2014.Quality_of_Life_Index)*100,2) AS Percentage_Change
FROM quality_of_life_2014 AS q2014
LEFT JOIN quality_of_life_2023 AS q2023
ON q2014.country = q2023.country
ORDER BY Percentage_Change DESC
LIMIT 10;

-- Let's see the bottom 10 of the evolution
SELECT 	q2023.country, 
		q2014.Quality_of_Life_Index AS QLIndex_2014, 
        q2023.Quality_of_Life_Index AS QLIndex_2023,
        ROUND(((q2023.Quality_of_Life_Index - q2014.Quality_of_Life_Index)/q2014.Quality_of_Life_Index)*100,2) AS Percentage_Change
FROM quality_of_life_2014 AS q2014
LEFT JOIN quality_of_life_2023 AS q2023
ON q2014.country = q2023.country
ORDER BY Percentage_Change
LIMIT 10;

-- We want to check the average of the quality of life. For that we use the combined table

-- Let's see the top 10 average
SELECT
    country,
    ROUND(((Quality_of_Life_Index_2014 + Quality_of_Life_Index_2015 + Quality_of_Life_Index_2016 + 
     Quality_of_Life_Index_2017 + Quality_of_Life_Index_2018 + Quality_of_Life_Index_2019 + 
     Quality_of_Life_Index_2020 + Quality_of_Life_Index_2021 + Quality_of_Life_Index_2022 + 
     Quality_of_Life_Index_2023) / 10),2) AS Average_Quality_of_Life_Index
FROM joined10Y_quality_of_life
GROUP BY country
ORDER BY Average_Quality_of_Life_Index DESC
LIMIT 10;

-- Let's see the bottom 10 average
SELECT
    country,
    ROUND(((Quality_of_Life_Index_2014 + Quality_of_Life_Index_2015 + Quality_of_Life_Index_2016 + 
     Quality_of_Life_Index_2017 + Quality_of_Life_Index_2018 + Quality_of_Life_Index_2019 + 
     Quality_of_Life_Index_2020 + Quality_of_Life_Index_2021 + Quality_of_Life_Index_2022 + 
     Quality_of_Life_Index_2023) / 10),2) AS Average_Quality_of_Life_Index
FROM joined10Y_quality_of_life
GROUP BY country
ORDER BY Average_Quality_of_Life_Index
LIMIT 10;

-- Let's check the highest value for the top 10 countries (from top 10 average) for each year

SELECT 
    '2014' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2014
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2015' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2015
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2016' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2016
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2017' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2017
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2018' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2018
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2019' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2019
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2020' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2020
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2021' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2021
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2022' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2022
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden')

UNION ALL

SELECT 
    '2023' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2023
WHERE country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden');

-- We create a view of the request above with :
CREATE VIEW top10_Max_Columns AS 
		-- Put the request above

-- We check with the view the number of occurrences of Max_Column
SELECT Max_Column, COUNT(*) AS Occurrences
FROM top10_Max_Columns
GROUP BY Max_Column
ORDER BY Occurrences DESC;

-- We check with the view the years and countries with Max_Column = Cost_of_Living_Index
SELECT *
FROM top10_Max_Columns
WHERE Max_Column = 'Cost_of_Living_Index';

-- We re use the request which permits us to have the view top10_Max_Columns but we removed the cost_of_living and change the WHERE functions to have only 'Switzerland'
SELECT 
    '2014' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index,  
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2014
WHERE country = 'Switzerland'
UNION ALL

SELECT 
    '2015' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2015
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2016' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2016
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2017' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index,  
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2017
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2018' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2018
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2019' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index,  
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2019
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2020' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2020
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2021' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index,  
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2021
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2022' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index,  
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2022
WHERE country = 'Switzerland'

UNION ALL

SELECT 
    '2023' AS Year,
    country,
    ROUND(GREATEST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Max_Value,
    CASE GREATEST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index,  
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Max_Column
FROM quality_of_life_2023
WHERE country = 'Switzerland'

-- We filter the table top10_Max_Columns on Switzerland and cost_of_living to compare with the table second high value.
SELECT *
FROM top10_Max_Columns
WHERE country = 'Switzerland'
HAVING max_column = 'Cost_of_Living_Index';

-- We create a view with the average for all years by attributes and by country.
CREATE VIEW  Avg_attributes_quality_of_life AS

SELECT 
	country,
    ROUND((Quality_of_Life_Index_2023 +
           Quality_of_Life_Index_2022 +
           Quality_of_Life_Index_2021 + 
           Quality_of_Life_Index_2020 +
           Quality_of_Life_Index_2019 +
           Quality_of_Life_Index_2018 +
           Quality_of_Life_Index_2017 + 
           Quality_of_Life_Index_2016 +
           Quality_of_Life_Index_2015 +
           Quality_of_Life_Index_2014) / 10, 2) AS Avg_Quality_of_Life_Index,
           
 	ROUND((Purchasing_Power_Index_2023 +
           Purchasing_Power_Index_2022 +
           Purchasing_Power_Index_2021 +
           Purchasing_Power_Index_2020 +
           Purchasing_Power_Index_2019 +
           Purchasing_Power_Index_2018 +
           Purchasing_Power_Index_2017 +
           Purchasing_Power_Index_2016 +
           Purchasing_Power_Index_2015 +
           Purchasing_Power_Index_2014) / 10, 2) AS Avg_Purchasing_Power_Index,
       
	ROUND((Safety_Index_2023 +
           Safety_Index_2022 +
           Safety_Index_2021 +
           Safety_Index_2020 +
           Safety_Index_2019 +
           Safety_Index_2018 +
           Safety_Index_2017 +
           Safety_Index_2016 +
           Safety_Index_2015 +
           Safety_Index_2014) / 10,2) AS Avg_Safety_Index,
           
	ROUND((Health_Care_Index_2023 +
           Health_Care_Index_2022 +
           Health_Care_Index_2021 +
           Health_Care_Index_2020 +
           Health_Care_Index_2019 +
           Health_Care_Index_2018 +
           Health_Care_Index_2017 +
           Health_Care_Index_2016 +
           Health_Care_Index_2015 +
           Health_Care_Index_2014) / 10,2) AS Avg_Health_Care_Index,
           
	ROUND((Cost_of_Living_Index_2023 +
           Cost_of_Living_Index_2022 +
           Cost_of_Living_Index_2021 +
           Cost_of_Living_Index_2020 +
           Cost_of_Living_Index_2019 +
           Cost_of_Living_Index_2018 +
           Cost_of_Living_Index_2017 +
           Cost_of_Living_Index_2016 +
           Cost_of_Living_Index_2015 +
           Cost_of_Living_Index_2014) / 10,2) AS Avg_Cost_of_Living_Index,
           
 	ROUND((Property_Price_to_Income_Ratio_2023 +
           Property_Price_to_Income_Ratio_2022 +
           Property_Price_to_Income_Ratio_2021 +
           Property_Price_to_Income_Ratio_2020 +
           Property_Price_to_Income_Ratio_2019 +
           Property_Price_to_Income_Ratio_2018 +
           Property_Price_to_Income_Ratio_2017 +
           Property_Price_to_Income_Ratio_2016 +
           Property_Price_to_Income_Ratio_2015 +
           Property_Price_to_Income_Ratio_2014) / 10,2) AS Avg_Property_Price_to_Income_Ratio,
           
 	ROUND((Traffic_Commute_Time_Index_2023 +
           Traffic_Commute_Time_Index_2022 +
           Traffic_Commute_Time_Index_2021 +
           Traffic_Commute_Time_Index_2020 +
           Traffic_Commute_Time_Index_2019 +
           Traffic_Commute_Time_Index_2018 +
           Traffic_Commute_Time_Index_2017 +
           Traffic_Commute_Time_Index_2016 +
           Traffic_Commute_Time_Index_2015 +
           Traffic_Commute_Time_Index_2014) / 10,2) AS Avg_Traffic_Commute_Time_Index,
           
  	ROUND((Pollution_Index_2023 +
           Pollution_Index_2022 +
           Pollution_Index_2021 +
           Pollution_Index_2020 +
           Pollution_Index_2019 +
           Pollution_Index_2018 +
           Pollution_Index_2017 +
           Pollution_Index_2016 +
           Pollution_Index_2015 +
           Pollution_Index_2014) / 10,2) AS Avg_Pollution_Index,
           
  	ROUND((Climate_Index_2023 +
           Climate_Index_2022 +
           Climate_Index_2021 +
           Climate_Index_2020 +
           Climate_Index_2019 +
           Climate_Index_2018 +
           Climate_Index_2017 +
           Climate_Index_2016 +
           Climate_Index_2015 +
           Climate_Index_2014) / 10,2) AS Avg_Climate_Index
 
 FROM joined10Y_quality_of_life;

-- We check the global average
SELECT 	ROUND(AVG(Avg_Quality_of_Life_Index), 2) AS Avg_Quality_of_Life,
		ROUND(AVG(Avg_Purchasing_Power_Index), 2) AS Avg_Purchasing_Power,
        ROUND(AVG(Avg_Safety_Index), 2) AS Avg_Safety,
        ROUND(AVG(Avg_Health_Care_Index), 2) AS Avg_Health_Care,
        ROUND(AVG(Avg_Cost_of_Living_Index), 2) AS Avg_Cost_of_Living,
        ROUND(AVG(Avg_Property_Price_to_Income_Ratio), 2) AS Avg_Property_Price_to_Income,
        ROUND(AVG(Avg_Traffic_Commute_Time_Index), 2) AS Avg_Traffic_Commute_Time,
        ROUND(AVG(Avg_Pollution_Index), 2) AS Avg_Pollution,
        ROUND(AVG(Avg_Climate_Index), 2) AS Avg_Climate
        
FROM Avg_attributes_quality_of_life;

-- We check the 2014 year’s average
SELECT 	ROUND(AVG(Quality_of_Life_Index), 2) AS Avg_Quality_of_Life,
		ROUND(AVG(Purchasing_Power_Index), 2) AS Avg_Purchasing_Power,
        ROUND(AVG(Safety_Index), 2) AS Avg_Safety,
        ROUND(AVG(Health_Care_Index), 2) AS Avg_Health_Care,
        ROUND(AVG(Cost_of_Living_Index), 2) AS Avg_Cost_of_Living,
        ROUND(AVG(Property_Price_to_Income_Ratio), 2) AS Avg_Property_Price_to_Income,
        ROUND(AVG(Traffic_Commute_Time_Index), 2) AS Avg_Traffic_Commute_Time,
        ROUND(AVG(Pollution_Index), 2) AS Avg_Pollution,
        ROUND(AVG(Climate_Index), 2) AS Avg_Climate
        
FROM quality_of_life_2014;

-- We check at which year the climate index begins
SELECT 	country,
		climate_index_2023, 
		climate_index_2022,
        climate_index_2021,
        climate_index_2020,
        climate_index_2019,
        climate_index_2018,
        climate_index_2017,
        climate_index_2016,
        climate_index_2015,
        climate_index_2014
FROM joined10Y_quality_of_life;

-- Let's check the lowest value for the bottom 10 countries (from bottom 10 average) for each year

SELECT 
    '2014' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2014
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2015' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2015
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2016' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2016
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2017' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2017
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2018' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2018
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2019' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2019
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2020' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2020
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2021' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2021
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2022' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2022
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil')

UNION ALL

SELECT 
    '2023' AS Year,
    country,
    ROUND(LEAST(Purchasing_Power_Index, 
                   Safety_Index, 
                   Health_Care_Index, 
                   Cost_of_Living_Index, 
                   Property_Price_to_Income_Ratio, 
                   Traffic_Commute_Time_Index, 
                   Pollution_Index, 
                   Climate_Index), 2) AS Min_Value,
    CASE LEAST(Purchasing_Power_Index, 
                  Safety_Index, 
                  Health_Care_Index, 
                  Cost_of_Living_Index, 
                  Property_Price_to_Income_Ratio, 
                  Traffic_Commute_Time_Index, 
                  Pollution_Index, 
                  Climate_Index)
        WHEN Purchasing_Power_Index THEN 'Purchasing_Power_Index'
        WHEN Safety_Index THEN 'Safety_Index'
        WHEN Health_Care_Index THEN 'Health_Care_Index'
        WHEN Cost_of_Living_Index THEN 'Cost_of_Living_Index'
        WHEN Property_Price_to_Income_Ratio THEN 'Property_Price_to_Income_Ratio'
        WHEN Traffic_Commute_Time_Index THEN 'Traffic_Commute_Time_Index'
        WHEN Pollution_Index THEN 'Pollution_Index'
        WHEN Climate_Index THEN 'Climate_Index'
    END AS Min_Column
FROM quality_of_life_2023
WHERE country IN ('Iran', 'Egypt', 'Philippines', 'Indonesia', 'Thailand', 'Russia', 'China', 'Ukraine', 'Pakistan', 'Brazil');

-- We create a view of the request above with :
CREATE VIEW top10_Min_Columns AS 
		-- Put the request above

-- We check with the view the number of occurrences of Min_Column 	
SELECT Min_Column, COUNT(*) AS Occurrences
FROM top10_Min_Columns
GROUP BY Min_Column
ORDER BY Occurrences;

-- Let’s see the country and the year include in climate index.
SELECT *
FROM top10_Min_Columns
WHERE Min_Column = 'Climate_Index';

-- We check for these 2 years the climate index of the top 10 countries with comparison the average
SELECT 	j10y.country,
        j10y.Climate_Index_2017,
        j10y.Climate_Index_2016,
        Avge.avg_climate_Index
FROM joined10Y_quality_of_life AS j10y
LEFT JOIN Avg_attributes_quality_of_life AS Avge
		ON Avge.country = j10y.country
WHERE j10y.country IN ('Switzerland', 'Denmark', 'Finland', 'Germany', 'Austria', 'Australia', 'Netherlands', 'New Zealand', 'United States', 'Sweden');






