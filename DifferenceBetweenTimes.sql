/*
abs(gun time - race time)
*/

WITH men AS(
SELECT AVG(ABS(net_time - gun_time)) AS avg_diff
FROM marathon_male),

women AS(
SELECT AVG(ABS(net_time - gun_time)) AS avg_diff
FROM marathon_female)

SELECT ABS(m.avg_diff - w.avg_diff) 
FROM men m
CROSS JOIN women w