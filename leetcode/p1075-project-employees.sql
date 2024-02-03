-- the leetcode test case is bugged out

WITH project_info AS
(
    SELECT projects.project_id
         , COUNT(projects.employee_id) AS num_employees
         , SUM(COALESCE(employees.experience_years,0)) AS total_exp
    FROM Project projects
    LEFT JOIN Employee employees
        ON employees.employee_id = projects.employee_id
    GROUP BY 1
)
SELECT project_id
     , ROUND(total_exp / num_employees, 2) AS average_years
FROM project_info
GROUP BY 1;
