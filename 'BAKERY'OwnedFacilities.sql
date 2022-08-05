SELECT DISTINCT owner_name, pe_description
FROM los_angeles_restaurant_health_inspections
WHERE pe_description LIKE "%LOW RISK%" AND owner_name LIKE '%BAKERY%'