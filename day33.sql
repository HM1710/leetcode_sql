-- https://platform.stratascratch.com/coding-question?id=10288&python=

SELECT CAST(COUNT(1) AS Float)/(SELECT COUNT(1) FROM fb_search_results)*100 AS top_3_percentage
FROM fb_search_results
WHERE position<4;