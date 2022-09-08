WITH a AS(
SELECT *, 
LEAD(created_at, 1, 0) OVER (PARTITION BY user_id ORDER BY created_at) AS next_date
FROM amazon_transactions),

b AS(
SELECT user_id, created_at, next_date, DATEDIFF(next_date, created_at) AS diff
FROM a
HAVING diff <= 7
ORDER BY user_id)

SELECT DISTINCT user_id FROM b;