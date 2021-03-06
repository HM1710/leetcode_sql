-- https://leetcode.com/problems/not-boring-movies/

/* Write your T-SQL query statement below */
SELECT *
FROM cinema
WHERE description <> 'boring' AND
    (id%2)=1
ORDER BY rating DESC;
