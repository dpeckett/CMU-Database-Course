SELECT type, COUNT() AS n FROM titles GROUP BY type ORDER BY n ASC;