-- https://leetcode.com/problems/big-countries/submissions/
/* Write your T-SQL query statement below */
SELECT name, population, area
FROM world
WHERE area>3000000

UNION

SELECT name, population, area
FROM world
WHERE population>25000000;

