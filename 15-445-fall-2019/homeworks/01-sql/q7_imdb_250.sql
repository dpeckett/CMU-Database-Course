WITH overall(weighted_average) AS (
	SELECT SUM(rating*votes) / SUM(votes) FROM ratings INNER JOIN titles ON ratings.title_id = titles.title_id 
	WHERE type = 'movie'
) SELECT primary_title, 
	votes/(votes + 25000.0) * rating + 25000.0/(votes + 25000.0) * weighted_average AS weighted_rating 
FROM ratings, overall INNER JOIN titles ON ratings.title_id = titles.title_id 
WHERE type = 'movie' 
ORDER BY weighted_rating DESC 
LIMIT 250;