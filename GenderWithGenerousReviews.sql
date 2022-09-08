SELECT y.gender, AVG(x.review_score) as avg_reviewScore
FROM airbnb_reviews x
INNER JOIN airbnb_guests y ON x.from_user = y.guest_id
WHERE x.from_type = 'guest' 
GROUP BY y.gender
ORDER BY AVG(x.review_score) DESC
LIMIT 1;
