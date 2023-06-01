/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT DISTINCT continent, SUM(population) OVER(
    PARTITION BY continent)
from country

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT *
FROM country;


/*
*  Count the number of towns per region
*
*  Database: France
*  Table: Regions (Join + Window function)
*/

select DISTINCT r.name as "region",
COUNT(t.name) OVER(
    PARTITION BY "region") as "towns"
from regions as r
inner JOIN departments as d ON r.code = d.region
INNER JOIN towns as t ON d.code = t.department
ORDER BY "towns"
