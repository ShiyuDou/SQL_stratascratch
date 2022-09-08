SELECT first_name, last_name, salary, department, 
AVG(salary) OVER (PARTITION BY department) AS dept_salary 
FROM employee;