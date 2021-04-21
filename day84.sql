--https://platform.stratascratch.com/coding-question?id=10128&python=

-- 01
SELECT COUNT(1) AS n_movies_by_abi
FROM oscar_nominees
WHERE nominee='Abigail Breslin';

--02
SELECT COUNT(nominee) AS n_movies_by_abi
FROM oscar_nominees
GROUP BY nominee
HAVING nominee='Abigail Breslin';