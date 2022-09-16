SELECT cust_id
FROM orders
GROUP BY cust_id
HAVING COUNT(cust_id) > 3
