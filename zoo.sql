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

11)
SELECT name, capital
  FROM world
 WHERE  LENGTH(name) = LENGTH(capital)

 12)
SELECT name, capital
FROM world
WHERE LEFT(name,1) = LEFT(capital,1)
AND name != capital

13)
SELECT name
   FROM world
WHERE name NOT LIKE '% %'
  AND name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'

NOBEL
1)
SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950


2)
SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'LIterature'

3)
SELECT yr, subject
FROM nobel
WHERE winner LIKE '%Einstein%'

4)
SELECT winner
FROM nobel
WHERE subject ='Peace'
AND yr >1999

5)
SELECT *
FROM nobel
WHERE subject ='Literature'
AND yr BETWEEN 1980 AND 1989

6)
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama')

7)
SELECT winner FROM nobel
 WHERE LEFT(winner, 4) = 'John'

8)
SELECT * FROM nobel
 WHERE (subject = 'Physics' AND yr = 1980)
  OR (subject = 'Chemistry' AND yr = 1984)

9)
SELECT * FROM nobel
 WHERE yr = 1980
  AND subject NOT IN ('Chemistry', 'Medicine')

10)
SELECT * FROM nobel
 WHERE (yr <1910 AND subject = 'Medicine')
  OR (yr >2003 AND subject = 'Literature')

11)
SELECT * FROM nobel
 WHERE winner LIKE 'Peter Gr_nberg'

12)
SELECT *
FROM nobel
WHERE winner = 'Eugene O''Neill'

13)
SELECT winner, yr, subject
FROM nobel
WHERE winner LIKE 'Sir %'
ORDER BY yr DESC, winner

14)
SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject IN ('Physics','Chemistry'), subject, winner

 15)
 SELECT matchid, player
 FROM goal
  WHERE teamid = 'GER'

16)
SELECT id,stadium,team1,team2
  FROM game
 WHERE id = 1012

17)
SELECT player, teamid, stadium, mdate
  FROM game JOIN goal ON (id=matchid)
WHERE teamid = 'GER'

18)
SELECT team1, team2, player
  FROM game JOIN goal ON (id=matchid)
WHERE player LIKE 'Mario%' 
