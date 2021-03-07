-- https://leetcode.com/problems/department-top-three-salaries/submissions/

/* Write your T-SQL query statement below */
WITH c (Employee, Salary, dept, ranking)
AS
(
    SELECT  name,salary, DepartmentId, DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC)
    FROM employee
)

SELECT d.name AS Department, c.Employee, c.Salary
FROM c
    JOIN department d
        ON c.dept=d.id
WHERE c.Ranking<4;
