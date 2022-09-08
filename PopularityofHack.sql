SELECT x.location, AVG(y.popularity)
FROM facebook_employees x
JOIN facebook_hack_survey y ON x.id = y.employee_id
GROUP BY x.location;
