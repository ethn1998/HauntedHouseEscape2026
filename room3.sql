SELECT course 
FROM meals
GROUP BY course
HAVING AVG(poison_level) > 7.0