SELECT door_name
FROM (
	SELECT k.power_level, l.door_name
	FROM attempts AS a
		JOIN keys AS k ON a.key_id = k.key_id
		JOIN locks AS l ON a.lock_id = l.lock_id
	WHERE success = 1
)
WHERE power_level = (
	SELECT MAX(power_level)
	FROM (
	SELECT k.power_level
	FROM attempts AS a
		JOIN keys AS k ON a.key_id = k.key_id
	WHERE success = 1
	)
)