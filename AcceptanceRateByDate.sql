WITH a AS(SELECT * FROM fb_friend_requests WHERE action='sent'),
   b AS(SELECT * FROM fb_friend_requests WHERE action='accepted') 

SELECT a.date, COUNT(b.user_id_receiver)/COUNT(a.user_id_sender) AS acceptance_rate
FROM a 
LEFT JOIN b on a.user_id_sender=b.user_id_sender 
AND a.user_id_receiver=b.user_id_receiver
GROUP BY a.date;