-- https://platform.stratascratch.com/coding-question?id=9897&python=
-- 01
WITH cte AS
( SELECT department, first_name, salary, RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS number
  FROM employee
)

SELECT cte.department, cte.first_name, cte.salary
FROM cte
WHERE cte.number=1;

--02
SELECT department, first_name, salary
FROM employee
WHERE (department, salary) IN (SELECT department, MAX(salary) AS sal
                               FROM employee
                               GROUP BY department);
