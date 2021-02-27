-- https://platform.stratascratch.com/coding-question?id=9917&python=

SELECT e.department, e.first_name, e.salary, f.ai AS avg
FROM employee e
    JOIN (SELECT department AS dept, AVG(salary) AS ai
          FROM employee
          GROUP BY department) f
        ON e.department=f.dept
ORDER BY e.department;