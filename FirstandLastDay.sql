/*
1. 1ST AND LAST DAY
2. group number of transactions by promotion
*/

SELECT 
p.promotion_id,
(SUM(CASE 
WHEN s.date = p.start_date THEN 1 
ELSE 0 END)) / COUNT(*)::float * 100 AS percentage_start,
(SUM(CASE 
WHEN s.date = p.end_date THEN 1 
ELSE 0 END)) / COUNT(*)::float * 100 AS percentage_end
FROM facebook_sales_promotions p
LEFT JOIN facebook_sales s ON s.promotion_id = p.promotion_id
GROUP BY p.promotion_id
