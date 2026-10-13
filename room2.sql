SELECT subject_name
FROM portraits
WHERE painted_year = (
	SELECT MIN(painted_year)
	FROM portraits
)