SELECT
	CAST(premiered/10 as TEXT) || '0s' AS decade, 
	ROUND(CAST(COUNT() AS REAL) / (SELECT CAST(COUNT() AS REAL) FROM titles), 4) AS percentage 
	FROM titles WHERE premiered IS NOT NULL GROUP BY decade;