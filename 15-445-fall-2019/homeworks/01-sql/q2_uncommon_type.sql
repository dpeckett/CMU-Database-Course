SELECT type, primary_title, runtime_minutes FROM (
	SELECT *, RANK () OVER (PARTITION BY type ORDER BY runtime_minutes DESC) AS runtime_rank FROM titles
) WHERE runtime_rank = 1;