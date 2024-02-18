-- 1854 ms (beats 95.38% of solutions)

SELECT COALESCE(uni.unique_id, NULL) AS unique_id
     , emps.name
FROM Employees emps
LEFT JOIN EmployeeUNI uni
    ON uni.id = emps.id;
