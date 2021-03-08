-- https://leetcode.com/problems/human-traffic-of-stadium/submissions/

/* Write your T-SQL query statement below */

WITH cte (id, visit_date, people, [people+1],[people+2], [people-1], [people-2])
AS
(
    SELECT id, visit_date, people, 
        LEAD(people,1) OVER (ORDER BY id),
        LEAD(people,2) OVER (ORDER BY id),
        LAG(people,1) OVER (ORDER BY id),
        LAG(people,2) OVER (ORDER BY id) 
    FROM Stadium
)

SELECT id, visit_date, people
FROM cte
WHERE  ( people>=100 AND
        [people+1]>=100 AND
        [people+2]>=100
      ) OR
      ( people>=100 AND
        [people-1]>=100 AND
        [people-2]>=100
      ) OR
      ( people>=100 AND
        [people+1]>=100 AND
        [people-1]>=100
      );
