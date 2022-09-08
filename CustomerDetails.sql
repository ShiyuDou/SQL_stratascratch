SELECT x.first_name, x.last_name, x.city, y.order_details
FROM customers x
# Find the details of each customer regardless of whether the customer made an order "left_join"
LEFT JOIN orders y on x.id = y.cust_id
ORDER BY x.first_name ASC, y.order_details ASC;A