SELECT TO_CHAR(started_at, 'YYYY-MM') AS month, 
COUNT(*) AS num_registrations
FROM noom_signups
GROUP BY 1