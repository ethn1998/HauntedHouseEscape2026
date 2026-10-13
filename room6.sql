SELECT name, cause_of_death, (
	CASE
	WHEN cause_of_death = 'old age' THEN 'Peaceful'
	ELSE 'Tragic'
	END
) AS peacefulness
FROM tombstones