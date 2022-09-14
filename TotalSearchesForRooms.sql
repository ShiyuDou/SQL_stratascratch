SELECT city, 
SUM(CASE WHEN room_type ILIKE '%apt%' THEN 1 ELSE 0 END) AS apt_count,
SUM(CASE WHEN room_type ILIKE '%private%' THEN 1 ELSE 0 END) AS private_count,
SUM(CASE WHEN room_type ILIKE '%share%' THEN 1 ELSE 0 END) AS shared_count
FROM airbnb_search_details
GROUP BY city