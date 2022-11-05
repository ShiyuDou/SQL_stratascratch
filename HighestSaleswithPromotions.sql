/*
1. sales (in terms of units sold) group by promotion_id
2. rank and find highest
*/

SELECT promotion_id, 
product_id, sum_sold_units
FROM
(
SELECT promotion_id, 
product_id, 
SUM(units_sold) AS sum_sold_units,
RANK() OVER(PARTITION BY promotion_id
ORDER BY SUM(units_sold) DESC) as rnk
FROM facebook_sales
GROUP BY promotion_id, product_id
) AS temp
WHERE rnk = 1
