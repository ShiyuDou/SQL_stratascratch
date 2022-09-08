SELECT activity_date, COUNT(*)
FROM los_angeles_restaurant_health_inspections
GROUP by activity_date
ORDER BY activity_date ASC