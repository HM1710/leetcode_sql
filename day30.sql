-- https://platform.stratascratch.com/coding-question?id=10049&python=

WITH cte(category, review_cnt)
AS
    (SELECT UNNEST(string_to_array(categories,';')), SUM(review_count)
     FROM yelp_business
     GROUP BY UNNEST(string_to_array(categories,';'))    
    )

SELECT category, review_cnt
FROM cte
ORDER BY review_cnt DESC;