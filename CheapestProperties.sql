/*
*/
SELECT city, MIN(price) AS cheapest_property
FROM airbnb_search_details
GROUP BY city

/*
Window function
*/
SELECT DISTINCT city, MIN(price) OVER (PARTITION BY city) AS cheapest_property
FROM airbnb_search_details
