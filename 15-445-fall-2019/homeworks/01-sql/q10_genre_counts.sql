WITH genres(genre, remainder) AS (
	SELECT '', genres || ',' FROM titles WHERE genres != "\N"
      UNION ALL SELECT
      substr(remainder, 0, instr(remainder, ',')),
      substr(remainder, instr(remainder, ',')+1)
      FROM genres WHERE remainder != ''
) SELECT genre, COUNT(*) AS n FROM genres WHERE genre != '' GROUP BY genre ORDER BY n DESC;