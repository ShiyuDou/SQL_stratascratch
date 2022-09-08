SELECT facility_zip, 
COUNT(DISTINCT facility_id) as uniq_facilities, 
COUNT(*) AS num_inspections
FROM los_angeles_restaurant_health_inspections
GROUP BY facility_zip
ORDER BY num_inspections DESC;