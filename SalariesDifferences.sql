SELECT 
ABS((SELECT max(x.salary)
FROM db_employee x
JOIN db_dept y ON x.department_id = y.id
WHERE y.id = 4) -
(SELECT max(x.salary)
FROM db_employee x
JOIN db_dept y ON x.department_id = y.id
WHERE y.id = 1))
AS salary_diff;