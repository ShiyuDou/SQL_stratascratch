/*
1. most money the grocery chain had spent on its promotional campaigns
2. DESC top 2 single channel media type
*/

SELECT media_type, sum_costs
FROM(
SELECT 
media_type,
SUM(cost) AS sum_costs,
RANK() OVER(ORDER BY SUM(cost) DESC) AS rnk
FROM facebook_sales_promotions
GROUP BY media_type) temp
WHERE rnk <= 2