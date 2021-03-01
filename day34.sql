-- https://platform.stratascratch.com/coding-question?id=9728&python=

SELECT extract(year from inspection_date) AS year, Count(1) AS n_inspections
FROM sf_restaurant_health_violations
WHERE business_name='Roxanne Cafe' AND
    violation_id is NOT NULL
GROUP BY year
ORDER BY year;