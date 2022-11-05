SELECT product_id, COALESCE(SUM(cost_in_dollars * units_sold), 0) AS total_revenue
FROM facebook_sales
GROUP BY product_id
ORDER BY total_revenue DESC
LIMIT 5
