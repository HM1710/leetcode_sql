-- https://leetcode.com/problems/department-highest-salary/
/* Write your T-SQL query statement below */
SELECT d.Name AS Department, e.Name AS Employee, e.Salary 
FROM employee e
    JOIN Department d
        ON e.DepartmentId=d.Id
    JOIN (
        SELECT DepartmentId AS dept, MAX(Salary) AS sal
        FROM Employee
        GROUP BY DepartmentId  ) f
            ON e.DepartmentId=f.dept    
WHERE e.Salary=f.sal;


