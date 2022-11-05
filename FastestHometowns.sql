SELECT hometown, 
       avg_nettime
FROM
   (SELECT hometown,
           AVG(net_time) AS avg_nettime,
           DENSE_RANK() OVER(ORDER BY AVG(net_time) ASC) AS rnk
   FROM marathon_male
   GROUP BY hometown) a
WHERE rnk <= 3