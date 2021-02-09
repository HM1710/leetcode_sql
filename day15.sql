-- https://platform.stratascratch.com/coding-question?id=10299&python=
--01
SELECT e.id, e.first_name, e.last_name, e.department_id, f.sal AS max
FROM ms_employee_salary e
    JOIN(select id, MAX(salary) AS sal
        FROM ms_employee_salary
        GROUP BY id) f
    ON e.id=f.id AND e.salary=f.sal
ORDER BY e.id;

--02
SELECT id, first_name, last_name, department_id, MAX(salary) AS max
FROM ms_employee_salary
GROUP BY id, first_name, last_name, department_id
ORDER BY id;
