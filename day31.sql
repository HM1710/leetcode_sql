-- https://platform.stratascratch.com/coding-question?id=9782&python=

-- 01
SELECT cust_id, SUM(order_quantity*order_cost) AS revenue
FROM orders
WHERE CAST(order_date AS varchar(10)) LIKE '%-03-%'
GROUP BY cust_id
ORDER BY SUM(order_quantity*order_cost) DESC;

-- 02
SELECT cust_id, SUM(order_quantity*order_cost) AS revenue
FROM orders
WHERE order_date BETWEEN '2019-03-01' AND '2019-03-31'
GROUP BY cust_id
ORDER BY SUM(order_quantity*order_cost) DESC;

-- 03 (MySQL)
SELECT cust_id, SUM(order_quantity*order_cost) AS revenue
FROM orders
WHERE EXTRACT(MONTH FROM CAST(order_date AS timestamp))=3
GROUP BY cust_id
ORDER BY SUM(order_quantity*order_cost) DESC;