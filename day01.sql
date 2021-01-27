-- 1) https://leetcode.com/problems/combine-two-tables/ 
SELECT FirstName, LastName, City, State
FROM person p
    LEFT JOIN address a
        ON p.PersonId=a.personId;


-- 2) https://leetcode.com/problems/second-highest-salary/
SELECT
CASE
    WHEN salary IS NULL THEN NULL
    ELSE salary
END AS SecondHighestSalary   
FROM employee
ORDER BY salary DESC
OFFSET 1 rows
FETCH NEXT 1 rows only;