-- https://platform.stratascratch.com/coding-question?id=9622&python=

SELECT city, property_type, AVG(bathrooms) AS n_bathrooms_avg, AVG(bedrooms) AS n_bedrooms_avg
FROM airbnb_search_details
GROUP BY city, property_type;
