--Zooo sql
--basics
SELECT population FROM world
  WHERE name = 'Germany'
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000
--basics end
---select world tut
SELECT name, continent, population FROM world

SELECT name FROM world
WHERE population > 199999999

SELECT name, gdp / population as PerCapitaGDP
FROM world
WHERE population >= 200000000

SELECT name, population / 1000000 as POPINMILL
FROM world
WHERE continent = 'South America'

SELECT name, population
FROM world
WHERE name in ('France', 'Germany', 'Italy')

SELECT name
FROM world
WHERE name LIKE '%United%'

SELECT name, population, area
FROM world
WHERE population >= 250000000 OR  area >= 3000000

SELECT name, population, area
FROM world
WHERE (population >= 250000000
AND  area <= 3000000 )
OR (population <= 250000000 AND area >= 3000000)

SELECT name, ROUND(population / 1000000, 2) as POPINMILL, ROUND(gdp / 1000000000, 2) as GDPINBILL
FROM world
WHERE continent = 'South America'


SELECT name, ROUND(gdp/ population, -3) as GDPperCAP
FROM world
WHERE gdp >= 1000000000000

---select world tut
