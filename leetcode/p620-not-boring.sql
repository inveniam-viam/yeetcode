-- has to  be the easiest fcking problem

SELECT *
FROM Cinema 
WHERE description <> "boring"
AND id % 2 = 1
ORDER BY rating DESC;
