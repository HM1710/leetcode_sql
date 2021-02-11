-- https://platform.stratascratch.com/coding-question?id=10061&python=

SELECT e.location AS location, AVG(h.popularity) AS avg_popularity
FROM facebook_employees e
    JOIN facebook_hack_survey h
        ON e.id=h.employee_id
GROUP BY e.location;

