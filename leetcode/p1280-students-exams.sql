
-- 1416 ms (beats 98.98% of users)
-- pretty good for a first attempt eh?

-- this has room for more optimizations
-- try partition keys (though leetcode might not allow it)

WITH student_subject_combo AS
(
    SELECT *
    FROM Students
    CROSS JOIN Subjects
)
SELECT students.student_id
     , students.student_name
     , students.subject_name
     , COALESCE(COUNT(exams.subject_name), 0) AS attended_exams
FROM student_subject_combo students
LEFT JOIN Examinations exams
    ON exams.student_id = students.student_id
    AND exams.subject_name = students.subject_name
GROUP BY 1, 2, 3
ORDER BY 1, 3 ASC;
