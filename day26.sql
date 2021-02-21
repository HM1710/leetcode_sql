-- https://platform.stratascratch.com/coding-question?id=9905&python=

WITH cte AS(
    SELECT first_name, target, RANK() OVER (ORDER BY target DESC) AS ranking
    FROM salesforce_employees
    WHERE manager_id=13)

SELECT cte.first_name, cte.target
FROM cte
WHERE ranking=1;

