-- 1058 ms (beats 73.5% on runtime)

SELECT emp1.employee_id
     , emp1.name
     , COUNT(DISTINCT emp2.employee_id) AS reports_count
     , ROUND(AVG(emp2.age)) AS average_age
FROM Employees emp1
JOIN Employees emp2
    ON emp2.reports_to = emp1.employee_id
GROUP BY 1,2;
