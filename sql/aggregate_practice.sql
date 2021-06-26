# hackerRank
# https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=aggregation

/*
TABLE_NAME : CITY
ID : NUMBER
NAME : VARCHAR2(17)
COUNTRYCODE : VARCHAR2(3)
DISTRICT : VARCHAR2(20)
POPULATION : NUMBER
*/

# Query a count of the number of cities in CITY having a Population larger than 100000.
SELECT COUNT(NAME)
FROM CITY
WHERE POPULATION > 100000;

# Query the sum of the populations for all Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.
SELECT SUM(POPULATION)
FROM CITY
WHERE COUNTRYCODE = 'JPN';

# Query the total population of all cities in CITY where District is California.
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA';

# Query the average population of all cities in CITY where District is California.
SELECT AVG(POPULATION)
FROM CITY
WHERE DISTRICT = 'CALIFORNIA';

# Query the average population for all cities in CITY, rounded down to the nearest integer.
SELECT ROUND(AVG(POPULATION))
FROM CITY;

# Query the difference between the maximum and minimum populations in CITY.
SELECT MAX(POPULATION) - MIN(POPULATION)
FROM CITY;


/*
TABLE_NAME : STATION
ID : NUMBER
CITY : VARCHAR2(21)
STATE : VARCHAR2(2)
LAT_N : NUMBER
LONG_N : NUMBER
*/

/*
Query the following two values from the STATION table:
1. The sum of all values in LAT_N rounded to a scale of 2 decimal places.
2. The sum of all values in LONG_W rounded to a scale of 2 decimal places.
*/
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;

# Query the sum of Northern Latitudes (LAT_N) from STATION having values greater than 38.7880 and less than 137.2345.
# Truncate your answer to 4 decimal places.
SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
WHERE LAT_N BETWEEN 38.7880 AND 137.2345;

# Query the greatest value of the Northern Latitudes (LAT_N) from STATION that is less than 137.2345.
# Truncate your answer to 4 decimal places.
SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
WHERE LAT_N < 137.2345;

# Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345.
# Round your answer to 4 decimal places.
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;

# Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7880.
# Round your answer to 4 decimal places.
SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7880;

# Query the Western Longitude (LONG_W)where the smallest Northern Latitude (LAT_N) in STATION is greater than 38.7880.
# Round your answer to 4 decimal places.
SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N > 38.7880
ORDER BY LAT_N ASC
LIMIT 1;