-- https://leetcode.com/problems/duplicate-emails/
/* Write your T-SQL query statement below */
SELECT email
FROM person
GROUP BY email
HAVING COUNT(1)>1 AND 
    email is NOT NULL;

