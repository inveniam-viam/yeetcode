-- 468 ms (beats 94.3% users on runtime)

WITH studentCounts AS
(
    SELECT class
         , COUNT(DISTINCT student) AS countS
    FROM Courses
    GROUP BY 1
)
SELECT class
FROM studentCounts
WHERE countS >= 5;
