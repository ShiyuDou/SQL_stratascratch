-- WITH a AS(
-- SELECT *, COUNT(*) OVER (PARTITION BY manager_id) AS reported
-- FROM employee)

-- SELECT first_name
-- FROM a
-- WHERE reported >= 7 
-- AND id IN (SELECT manager_id FROM a WHERE reported >= 7)

SELECT first_name 
FROM employee
WHERE id in
(SELECT manager_id
FROM employee
GROUP BY manager_id
HAVING COUNT(DISTINCT id) >= 7)