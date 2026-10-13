SELECT chime_id
FROM (
	SELECT chime_id, volume, LAG(volume,1) OVER (ORDER BY chime_time) as prev_volume
	FROM chimes
)
WHERE volume > prev_volume