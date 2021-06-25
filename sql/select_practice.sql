# hackerRank
# https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=select

/*
TABLE_NAME : CITY
ID : NUMBER
NAME : VARCHAR2(17)
COUNTRYCODE : VARCHAR2(3)
DISTRICT : VARCHAR2(20)
POPULATION : NUMBER
*/

# Query all columns for all American cities in the CITY table with populations larger than 100000.
# The CountryCode for America is USA.
SELECT *
FROM CITY 
WHERE POPULATION > 100000 AND COUNTRYCODE = 'USA';

# Query the NAME field for all American cities in the CITY table with populations larger than 120000.
# The CountryCode for America is USA.
SELECT NAME
FROM CITY
WHERE POPULATION > 120000 AND COUNTRYCODE = 'USA';

# Query all columns (attributes) for every row in the CITY table.
SELECT * FROM CITY;

# Query all columns for a city in CITY with the ID 1661.
SELECT *
FROM CITY
WHERE ID = 1661;

# Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT *
FROM CITY
WHERE COUNTRYCODE = 'JPN';

# Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT NAME
FROM CITY
WHERE COUNTRYCODE = 'JPN';


/*
TABLE_NAME : STATION
ID : NUMBER
CITY : VARCHAR2 (21)
STATE : VARCHAR2 (2)
LAT_N : NUMBER
LONG_N : NUMBER
*/

# Query a list of CITY and STATE from the STATION table.
SELECT CITY, STATE FROM STATION;

# Query a list of CITY names from STATION for cities that have an even ID number.
# Print the results in any order, but exclude duplicates from the answer.
SELECT DISTINCT CITY
FROM STATION
WHERE ID % 2 = 0;

# Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION.
# Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP '^A|^E|^I|^O|^U';

# OR
SELECT DISTINCT CITY
FROM STATION
WHERE REGEXP_LIKE(CITY, '^A|^E|^I|^O|^U');

# Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION.
#Your result cannot contain duplicates.
SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP 'A$|E$|I$|O$|U$';

# Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;