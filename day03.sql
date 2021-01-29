# https://leetcode.com/problems/delete-duplicate-emails/
# Write your MySQL query statement below
DELETE FROM Person 
WHERE Id NOT IN (SELECT p.id
                 FROM (
                       SELECT MIN(Id) as id
                       FROM Person
                       GROUP BY Email) as p);