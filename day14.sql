--https://platform.stratascratch.com/coding-question?id=10308
-- 01
SELECT 
    (SELECT MAX(salary)
    FROM db_employee e
        JOIN db_dept d
            ON e.department_id=d.id
    WHERE d.department='marketing'
    GROUP BY e.department_id) -

    (SELECT MAX(salary)
    FROM db_employee e
        JOIN db_dept d
            ON e.department_id=d.id
    WHERE d.department='engineering'
    GROUP BY e.department_id ) AS salary_difference;

--02
SELECT 
MAX(CASE WHEN d.department='marketing' THEN e.salary END) - 
MAX(CASE WHEN d.department='engineering' THEN e.salary END) AS salary_difference 
FROM db_employee e
    JOIN db_dept d
        ON e.department_id=d.id
WHERE d.department IN ('marketing', 'engineering');

