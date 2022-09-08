SELECT department, COUNT(*) AS counts
FROM employee
GROUP BY department
ORDER BY counts DESC
