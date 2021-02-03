-- https://leetcode.com/problems/department-highest-salary/
/* Write your T-SQL query statement below */
WITH cte AS
(SELECT  d.Name AS Department, 
        e.Name AS Employee,
        e.Salary AS Salary,
        RANK() OVER (PARTITION BY e.DepartmentId ORDER BY e.Salary DESC) AS ranking
FROM Employee e
    JOIN Department d
        ON e.DepartmentId=d.Id)
        
SELECT Department, Employee, Salary
FROM cte
WHERE ranking=1;

