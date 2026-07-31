SELECT name AS results FROM
(SELECT user_id, name, COUNT(*) 
FROM Users JOIN MovieRating USING(user_id)
GROUP BY 1,2
ORDER BY 3 DESC, 2 ASC
LIMIT 1) users

UNION ALL

SELECT title AS results FROM 
(SELECT movie_id, title, AVG(rating) 
FROM MovieRating JOIN Movies USING(movie_id)
WHERE DATE_FORMAT(created_at, '%Y-%m') = '2020-02'
GROUP BY 1,2
ORDER BY 3 DESC, 2 ASC
LIMIT 1) movies