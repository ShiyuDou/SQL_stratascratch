SELECT 
a.number, 
b.number, 
GREATEST(a.number, b.number)
FROM deloitte_numbers a
CROSS JOIN deloitte_numbers b

/*
If we dont want repeated pairs then
SELECT 
a.number, 
b.number, 
GREATEST(a.number, b.number)
FROM deloitte_numbers a
JOIN deloitte_numbers b
ON a.number < b.number
*/