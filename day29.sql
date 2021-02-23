-- https://platform.stratascratch.com/coding-question?id=10060&python=

WITH cte(business, text, cool, ranking)
AS
    (SELECT business_name, review_text, cool, RANK() OVER(ORDER BY cool DESC)
    FROM yelp_reviews
    )

SELECT business, text
FROM cte
WHERE ranking=1;
