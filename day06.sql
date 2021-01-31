-- https://leetcode.com/problems/rising-temperature/
/* Write your T-SQL query statement below */

SELECT w1.id AS 'Id'
FROM weather w1
    JOIN
    weather w2 
        ON DATEDIFF(day, w2.recordDate, w1.recordDate)=1 AND
        w1.Temperature > w2.Temperature;
        
