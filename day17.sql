-- https://platform.stratascratch.com/coding-question?id=10046&python=

SELECT state, COUNT(1) AS n_businesses
FROM yelp_business
WHERE stars=5
GROUP BY state
ORDER BY n_businesses DESC, state
LIMIT 5;
