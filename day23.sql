-- https://platform.stratascratch.com/coding-question?id=9726&python=

SELECT business_name, CASE 
    WHEN business_name ILIKE '%restaurant%' THEN 'restaurant'
    WHEN business_name ILIKE '%cafe%' THEN 'cafe'
    WHEN business_name ILIKE '%coffee%' THEN 'cafe'
    WHEN business_name ILIKE '%school%' THEN 'school'
    ELSE 'other'
    END AS business_type
FROM sf_restaurant_health_violations;