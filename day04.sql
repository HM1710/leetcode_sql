/* Write your T-SQL query statement below */
SELECT c.Name AS Customers
FROM Customers c
   LEFT JOIN Orders o
        ON c.Id=o.CustomerId
WHERE o.CustomerId IS NULL;

