-- https://platform.stratascratch.com/coding-question?id=10309&python=

SELECT COUNT( DISTINCT c1.user_id) AS user_count
FROM marketing_campaign c1
    JOIN marketing_campaign c2
        ON c1.user_id=c2.user_id
WHERE c1.created_at<c2.created_at AND
      c1.product_id<>c2.product_id;