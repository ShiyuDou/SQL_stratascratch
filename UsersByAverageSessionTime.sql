WITH daily_start AS(
SELECT user_id, 
DATE(timestamp) AS date,
MAX(timestamp) AS last_page_load
FROM facebook_web_log
WHERE action = 'page_load'
GROUP BY user_id, DATE(timestamp)),

daily_end AS(
SELECT user_id, 
DATE(timestamp) AS date,
MIN(timestamp) AS first_page_exit
FROM facebook_web_log
WHERE action = 'page_exit'
GROUP BY user_id, DATE(timestamp))


SELECT a.user_id, AVG(b.first_page_exit - a.last_page_load) AS session_time
FROM daily_start a
JOIN daily_end b on a.user_id = b.user_id AND a.date = b.date
GROUP BY a.user_id;

