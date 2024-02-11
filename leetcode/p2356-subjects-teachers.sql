-- 835 ms (beats 78%)

SELECT teacher_id
     , COUNT(DISTINCT subject_id) AS cnt
FROM Teacher
GROUP BY 1;
