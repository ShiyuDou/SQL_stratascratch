SELECT grade, COUNT(*) AS occurance
FROM los_angeles_restaurant_health_inspections
WHERE facility_name LIKE '%bakery%'
GROUP BY grade
ORDER BY occurance DESC
LIMIT 1