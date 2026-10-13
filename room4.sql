SELECT b.title, a.name
FROM authors AS a JOIN books as b ON a.author_id = b.author_id
WHERE a.death_year < 1900