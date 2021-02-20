-- https://platform.stratascratch.com/coding-question?id=9897&python=

WITH cte AS
( SELECT department, first_name, salary, RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS number
  FROM employee
)

SELECT cte.department, cte.first_name, cte.salary
FROM cte
WHERE cte.number=1;