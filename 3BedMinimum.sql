/*
1. filter out neighborhoods that have at least 3 beds
2. group by neighborhood
3. taker the average 
*/

SELECT neighbourhood, 
AVG(beds) AS avg_num_beds
FROM airbnb_search_details
GROUP BY neighbourhood
HAVING SUM(beds) >= 3
ORDER BY avg_num_beds DESC;
