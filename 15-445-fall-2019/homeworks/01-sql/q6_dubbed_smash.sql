WITH aka_count(title_id, n_akas) AS (
	SELECT title_id, COUNT() FROM akas GROUP BY title_id
)
SELECT primary_title, n_akas FROM titles INNER JOIN aka_count ON titles.title_id = aka_count.title_id ORDER BY n_akas DESC LIMIT 10;