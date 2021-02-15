-- https://platform.stratascratch.com/coding-question?id=10142&python=
SELECT c.first_name
FROM customers c
    LEFT JOIN(SELECT cust_id AS cust
         FROM orders
         WHERE order_date BETWEEN '2019-02-01' AND '2019-03-01') f
        ON c.id=f.cust
WHERE f.cust IS NULL;    

