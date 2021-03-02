-- https://platform.stratascratch.com/coding-question?id=9894&python=

WITH cte 
AS
(   SELECT e2.first_name AS name , e1.salary AS man_sal, e2.salary AS emp_sal
    FROM employee e1
        JOIN employee e2
            ON e1.id=e2.manager_id)

SELECT cte.name, cte.emp_sal
FROM cte
WHERE cte.emp_sal>cte.man_sal;
