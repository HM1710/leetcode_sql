-- https://platform.stratascratch.com/coding-question?id=9913&python=

SELECT c.first_name, o.order_date, o.order_details, o.order_cost
FROM customers c
    JOIN orders o
        ON c.id=o.cust_id
WHERE c.first_name IN ('Jill','Eva')
ORDER BY c.id;
