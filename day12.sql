-- https://leetcode.com/problems/exchange-seats/
/* Write your T-SQL query statement below */

SELECT CASE
WHEN (id%2)<>0 AND id<>f.cnt THEN id+1
WHEN (id%2)<>0 AND id=f.cnt THEN id
ELSE id-1
END AS id, student
FROM seat
    CROSS JOIN (SELECT COUNT(1) cnt
                FROM seat) as f
ORDER BY id;

