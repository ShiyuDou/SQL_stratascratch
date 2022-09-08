SELECT x.id, x.first_name, SUM(y.total_order_cost) AS total_cost
FROM customers x
JOIN orders y ON x.id = y.cust_id
GROUP BY x.id
ORDER BY x.first_name asc;