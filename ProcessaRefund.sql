/*
minimum, average and the maximum number of days
accounts opened from January 1, 2019
Group by billing cycle in months
*/

WITH temp AS
(SELECT 
s.plan_id,
DATEDIFF(t.refunded_at, t.settled_at) AS refund_period
FROM noom_transactions t
LEFT JOIN noom_signups s ON t.signup_id = s.signup_id
WHERE DATEDIFF(started_at, '2019-01-01') >= 0)


SELECT b.billing_cycle_in_months, MIN(t.refund_period), AVG(t.refund_period), MAX(t.refund_period)
FROM temp t
LEFT JOIN noom_plans b ON b.plan_id = t.plan_id
GROUP BY 1