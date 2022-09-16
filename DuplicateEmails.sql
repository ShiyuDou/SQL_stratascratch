SELECT email
FROM employee
GROUP BY email
HAVING COUNT(email) > 1