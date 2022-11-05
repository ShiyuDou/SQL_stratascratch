/*
1. % of categories that never been sold
*/

SELECT 
SUM(CASE unsold_cat WHEN 0 THEN 1 ELSE 0 END)
/COUNT(DISTINCT unsold_cat)::float * 100 AS percentage

FROM 
(SELECT c.category_id AS category_id, 
COALESCE(SUM(units_sold), 0) AS unsold_cat
FROM facebook_products p
FULL JOIN facebook_sales s ON p.product_id = s.product_id
FULL JOIN facebook_product_categories c ON p.product_category = c.category_id
GROUP BY c.category_id) temp