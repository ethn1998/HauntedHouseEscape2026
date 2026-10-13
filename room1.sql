SELECT SUM(favorite_number)
FROM ghosts
WHERE haunting_room == "Entryway" AND name LIKE 'B%'