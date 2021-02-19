-- https://platform.stratascratch.com/coding-question?id=10064&python=

WITH cte AS
(
SELECT f.date, SUM(f.mx) AS total_energy
FROM (
SELECT date, MAX(consumption) AS mx
FROM fb_eu_energy
GROUP BY date
UNION
SELECT date, MAX(consumption) AS mx
FROM fb_asia_energy
GROUP BY date
UNION
SELECT date, MAX(consumption) AS mx
FROM fb_na_energy
GROUP BY date ) f
GROUP BY f.date
)
SELECT *
FROM cte
WHERE total_energy = (SELECT MAX(total_energy) FROM cte)
ORDER BY date;
