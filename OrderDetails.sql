SELECT x.first_name, y.order_date, y.order_details, y.total_order_cost
FROM customers x
JOIN orders y ON x.id = y.cust_id
WHERE x.first_name IN ('Jill', 'Eva')
ORDER BY x.id ASC;